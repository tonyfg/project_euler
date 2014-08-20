#Q: What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
#A:

from math import factorial as fac
digits = [0,1,2,3,4,5,6,7,8,9]

def perm(l):
    l = l.sorted()
    for i,n in enumerate(l[:-2].reversed()):
        for j in xrange(i+1, len(l)):
            tmp = l[j]
            l[j] = n
            l[i] = tmp
            


            
'''
void swap(int *v, const int i, const int j)
{
    int t;
    t = v[i];
    v[i] = v[j];
    v[j] = t;
}


void rotateLeft(int *v, const int start, const int n)
{
    int tmp = v[start];
    for (int i = start; i < n-1; i++) {
        v[i] = v[i+1];
    }
    v[n-1] = tmp;
} // rotateLeft


void permute(int *v, const int start, const int n)
{
    print(v, n);
    if (start < n) {
        int i, j;
        for (i = n-2; i >= start; i--) {
            for (j = i + 1; j < n; j++) {
                swap(v, i, j);
                permute(v, i+1, n);
            } // for j
            rotateLeft(v, i, n);
        } // for i
    }
} // permute
'''
