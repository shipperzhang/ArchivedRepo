from termcolor import colored
from disasm import pre_process
from disasm.Types import Func, Section
from disasm.disassemble_process import Disam
from analysis.analysis_process import Analysis
from postprocess import post_process, post_process_lib


class Ail(object):

    def __init__(self, filepath):
        self.file = filepath
        self.funcs = []
        self.secs = []
        self.instrs = []
        self.datas = []
        self.g_bss = []

    def sections(self):
        def sec_mapper(line):
            items = line.split()
            return Section(items[0], int(items[1], 16), int(items[3], 16))
        with open('sections.info') as f:
            self.secs += map(sec_mapper,f)

    def externfuncs(self):
        def func_mapper(line):
            items = line.split()
            return Func(items[1], int(items[0], 16), 0, True)
        with open('externfuncs.info') as f:
            self.funcs += map(func_mapper, f)

    def userfuncs(self):
        def func_mapper(line):
            items = line.split()
            return Func(items[1][1:-2], int(items[0], 16), 0, False)
        with open('userfuncs.info') as f:
            self.funcs += map(func_mapper,
                filter(lambda line: not ('-0x' in line or '+0x' in line), f))

    def get_userfuncs(self):
        return filter(lambda f: not f.is_lib, self.funcs)

    def externdatas(self):
        with open('externdatas.info') as f:
            self.datas += map(str.strip, f)

    def global_bss(self):
        def bss_mapper(line):
            items = line.split()
            return (items[0][1:].upper(), items[1].strip())
        with open('globalbss.info') as f:
            self.g_bss += map(bss_mapper, f)

    def ail_dump(self):
        dump = ''.join(map(lambda f: 'extern %s\n'.format(f),
                filter(lambda f: f.func_name != '__' and f.is_lib, self.funcs)))
        with open('final.s', 'a') as fin:
            fin.write(dump)

    def ehframe_dump(self):
        with open('eh_frame.data') as eh:
            with open('final.s', 'a') as f:
                f.write(eh.read())

    def excpt_tbl_dump(self):
        with open('gcc_exception_table.data') as ex:
            with open('final.s', 'a') as f:
                f.write(ex.read())

    def post_process(self):
        post_process.main()
        post_process_lib.main()

    def pre_process(self):
        pre_process.main()

    def instrProcess_2(self, gfree=False, docfg=False):
        self.pre_process()
        il, fl, re = Disam.disassemble(self.file, self.funcs, self.secs)

        print colored('3: ANALYSIS', 'green')
        fbl, bbl, cfg_t, cg, il, re = Analysis.analyze_one(il, fl, re, docfg)  # @UnusedVariable

        if gfree:
            print colored('4: INSTRUMENTATION', 'green')
            # TODO: all
            print '     nothing done yet'

        print colored(('5' if gfree else '4') + ': POST-PROCESSING', 'green')
        Analysis.post_analyze(il, re)
        self.post_process()
