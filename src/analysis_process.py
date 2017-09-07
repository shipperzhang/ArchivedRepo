
from ail_utils import read_file
from reassemble_symbol_get import reassemble
from pp_print import pp_print_list, pp_print_file

class Analysis(object):

    @staticmethod
    def global_bss():
        lines = read_file('globalbss.info')
        def mapper(l):
            items = l.strip().split()
            return (items[1:], items[1])
        return map(mapper, lines)

    @staticmethod
    def analyze_one(il, fl, re):
        #TODO: stub
        pass

    @staticmethod
    def post_analyze(il, re):
        re = reassemble()
        il = re.unify_loc(il)
        ils = pp_print_list(il)
        ils = re.adjust_globallabel(Analysis.global_bss(), ils)
        pp_print_file(ils)