#include<bits/stdc++.h>
using namespace std;

template<typename T>
class DSU{
    public:
      map<T, T>parent;
      map<T, T>size;
      void init(T x){
          parent[x] = x;
          size[x] = 1;
      }
      T root(T x){
          if(parent[x] == x)
          return x;
          return parent[x] = root(parent[x]);
      }
      void Union(T x, T y){
          x = root(x);
          y = root(y);
          if(x != y){
              if(size[x] < size[y])
              swap(x, y);
              parent[y] = x;
              size[x] += size[y];
          }
      }
};

int main(){
   DSU<int>d;
   int n;
   cin >> n;
   for(int i=1; i<=n; i++)
   d.init(i);
   for(int i=0; i<n; i++)
   cin >> a[i];
   for(int i=0; i<n; i++)
   d.Union(i+1, a[i]);
   
   for(int i=1; i<=n; i++)
   cout << d.root(i) << " ";
   return 0;
}
