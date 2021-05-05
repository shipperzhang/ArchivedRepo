import sys

import numpy as np

import asm2vec.asm
import asm2vec.parse
import asm2vec.model


def cosine_similarity(v1, v2):
    return np.dot(v1, v2) / (np.linalg.norm(v1) * np.linalg.norm(v2))


def main():
    training_funcs = asm2vec.parse.parse('basic_layer.s',
                                         func_names=['bn', 'relu'])

    estimating_funcs = asm2vec.parse.parse('target.s',
                                           func_names=['S_0xE30'])
    
    for funcs in training_funcs:
        print(funcs.name() + ':')
        queue = []
        queue.append(funcs.entry())
        flag = {}
        while queue:
            BB = queue.pop(0)
            print('.L' + str(BB.id()) + ':')
            for I in BB.instructions():
                print('\t', I.op(), I.args())
            for succ in BB.successors():
                if flag.get(succ.id(), False): continue
                flag[succ.id()] = True
                queue.append(succ)
        print('---------------------------------------')

    print('=========================================')
    
    # for funcs in estimating_funcs:
    #     print(funcs.name() + ':')
    #     queue = []
    #     queue.append(funcs.entry())
    #     flag = {}
    #     while queue:
    #         BB = queue.pop(0)
    #         print('.L' + str(BB.id()) + ':')
    #         for I in BB.instructions():
    #             print('\t', I.op(), I.args())
    #         for succ in BB.successors():
    #             if flag.get(succ.id(), False): continue
    #             flag[succ.id()] = True
    #             queue.append(succ)
    #     print('---------------------------------------')
    
    # print('# of training functions:', len(training_funcs))
    # print('# of estimating functions:', len(estimating_funcs))

    # model = asm2vec.model.Asm2Vec(d=200, initial_alpha=0.025, rnd_walks=2)
    # training_repo = model.make_function_repo(training_funcs)
    # model.train(training_repo)
    # print('Training complete.')

    # for tf in training_repo.funcs():
    #     print('Norm of trained function "{}" = {}'.format(tf.sequential().name(), np.linalg.norm(tf.v)))

    # estimating_funcs_vec = list(map(lambda f: model.to_vec(f), estimating_funcs))
    # print('Estimating complete.')

    # for (ef, efv) in zip(estimating_funcs, estimating_funcs_vec):
    #     print('Norm of trained function "{}" = {}'.format(ef.name(), np.linalg.norm(efv)))

    # for tf in training_repo.funcs():
    #     for (ef, efv) in zip(estimating_funcs, estimating_funcs_vec):
    #         sim = cosine_similarity(tf.v, efv)
    #         print('sim("{}", "{}") = {}'.format(tf.sequential().name(), ef.name(), sim))


if __name__ == '__main__':
    main()
