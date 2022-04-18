import os
import sys

class Extraction(object):
  def __init__(self, file_name):
    self.len = -1
    self.res_path = None
    self.i2n = {}
    self.n2o = {}
    self.n2i = {}
    with open("dimension") as f:
      lines = f.readlines()
      info = [''] * 3
      idx = 0
      for line in lines:
        if line.startswith('-------'):
          if self.i2n.get(info[1],None)==None:
            self.i2n[info[1]] = set()
          self.i2n[info[1]].add(info[0])
          self.n2o[info[0]] = info[2]
          self.n2i[info[0]] = info[1]
          idx = 0
          continue
        info[idx] = line.strip()
        idx+=1;
    names = sorted(list(self.n2o.keys()))
    for name in names:
      if 'transform' in name: continue
      print(name)
      print(self.n2i[name])
      print(self.n2o[name])

    self.n2o['data'] = '(1,3,224,224)'

  def printPath(self):
    print('Input(1,3,224,244)-->')
    for item in self.res_path[:-1]:
      if 'transform' in item: continue
      dimensions = [int(i) for i in self.n2o[item][1:-1].split(',')]
      if len(dimensions) == 5:
        dimensions[1] = dimensions[1] * dimensions[4]
        n_layer = ','.join([str(i) for i in dimensions[:-1]])
        n_layer = '(' + n_layer + ')'
        print(item,n_layer,'-->')
      else:
        print(item,self.n2o[item],'-->')
    print('Output(1,1000)')
    print('-----------------------------')
 
  def search(self,layer, path):
    if 'softmax' in layer:
      if self.len < len(path) or self.len == -1:
        self.len = len(path)
        self.res_path = list(path)
      return
    shape = self.n2o[layer]
    for n_layer in self.i2n[shape]:
      if 'transform' in layer and 'transform' in n_layer: continue
      if layer == n_layer: continue
      if 'transform' not in n_layer and n_layer in path: continue
      self.search(n_layer, path + [n_layer])

 

'''
for i,ns in i2n.items():
    for n in ns:
        print(n)
        print(i)
        print(n2o[n])
        print('-------------------------')

print('==================================')
'''


if __name__ == '__main__':
  e = Extraction('dimension')
  e.search('data',[])
  e.printPath()

'''
queue = ['data']
visited = set();
visited.add('data')
while False:
    layer = queue.pop(0)
    shape = n2o[layer]
    if 'softmax' in layer: continue
    print(layer, ': ', shape)
    for n_layer in i2n[shape]:
        if 'transform' in layer and 'transform' in n_layer: continue
        if layer == n_layer: continue

        print('\t->', n_layer, ':', n2o[n_layer])
        
        if n_layer in visited: continue
        if 'transform' not in n_layer: visited.add(n_layer)
        
        queue.append(n_layer)
    print('---------------------------')

'''
