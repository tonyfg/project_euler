#Q: Find the maximum total sum from top to bottom of the triangle below
#A: 7273

#This is exactly the same solution as #18 :D

f = open('67.txt', 'r')
tree = [[int(i) for i in line[:-1].split(' ')] for line in f if line != "\n"]
tree.reverse()

'''
We start summing from the bottom up and choose only the biggest number of
each sibling pair, this way we can cut computations in half on each pass
of the iteration ;)
'''

for line in xrange(len(tree)):
    for offset in xrange(len(tree[line])-1):
        tree[line+1][offset] += max([tree[line][offset], tree[line][offset+1]])
print tree[-1][0]
