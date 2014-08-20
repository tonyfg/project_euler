#Q: How many routes are there through a 20x20 grid? (without backtracking)
#A: 137846528820

import time

#recursive implementation (works, but too slow for 1min rule;)
def npaths_rec(x, y):
    if x<=1 or y<=1:
        return 1
    else:
        return npaths_rec(x-1, y) + npaths_rec(x, y-1)

#same thing but with memoization ;)
cache = {}
def npaths_memoized(x, y):
    key = (x,y)
    if key in cache.keys():
        return cache[key]
    if x<=1 or y<=1:
        return 1
    else:
        cache[key] = npaths_memoized(x-1, y) + npaths_memoized(x, y-1)
        return cache[key]

print npaths_memoized(21, 21)
