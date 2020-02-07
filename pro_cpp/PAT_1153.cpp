#include<iostream>
#include<sstream>
#include<algorithm>
#include<cstdio>
#include<string>
#define Maxsize 1030
#define infinity 99999999

using namespace std;

int N,K,M,D;
double average_t;
int mini_t;
int G[Maxsize][Maxsize];

int Judge(int S[]){
    for(int i=1;i<=N+M;i++)
        if(S[i] == 0)
            return 1;
    return 0;
}

int Min(int dist[],int S[]){
    int min = infinity;
    int minp = 1;
    for(int i=1;i<=N+M;i++)
        if(dist[i]<min&&S[i]!=1){
            min = dist[i];
            minp = i;
        }
    return minp;
}

int Dijkstra(int n){
    int S[Maxsize];
    int dist[Maxsize];
    int now;
    for(int i=0;i<=N+M;i++){
        S[i] = 0;
        dist[i] = infinity;
    }
    dist[n] = 0;
    while(Judge(S)){
        now = Min(dist,S);
        S[now] = 1;
        for(int i=1;i<=N+M;i++){
            if(G[now][i]!=infinity&&S[i]!=1){
                if(dist[now]+G[now][i]>G[n][i]){
                    if(dist[i]>G[n][i])
                        dist[i] = G[n][i];
                }else{
                    if(dist[i]>dist[now]+G[now][i])
                        dist[i] = dist[now]+G[now][i];
                }
            }
        }
    }
    int sum=0;
    int min=infinity;
    int ans=1;
    for(int i=1;i<=N;i++){
        sum += dist[i];
        if(dist[i]<min)
            min = dist[i];
        if(dist[i]>D)
            ans=0;
    }
    mini_t = min;
    average_t = (double)sum/(double)N;
    return ans;

}

int main(){
    cin>>N>>M>>K>>D;
    for(int i=0;i<=N+M;i++)
        for(int n=0;n<=N+M;n++)
            G[i][n] = infinity;
    int x1,x2,d;
    string n1,n2;

    for(int i=0;i<K;i++){
        cin>>n1>>n2>>d;
        stringstream s1;
        stringstream s2;
        if(n1[0] == 'G'){
            n1.erase(0,1);
            s1<<n1;
            s1>>x1;
            x1 += N;
        } else{
            s1<<n1;
            s1>>x1;
        }
        if(n2[0] == 'G'){
            n2.erase(0,1);
            s2<<n2;
            s2>>x2;
            x2 += N;
        } else{
            s2<<n2;
            s2>>x2;
        }
        G[x1][x2] = d;
        G[x2][x1] = d;
    }
    double average = infinity;
    int mini = -1;
    int answer;
    int point = 0;
    for(int i=N+1;i<=N+M;i++){
        if(Dijkstra(i)){
            point=1;
            if(mini_t==mini&&average>average_t){
                mini = mini_t;
                average = average_t;
                answer = i-N;
            }else if(mini_t>mini){
                mini = mini_t;
                average = average_t;
                answer = i-N;
            }
        }
    }
    if(point){
        cout<<"G"<<answer<<endl;
        printf("%0.1f %0.1f\n",(double)mini,average);
    } else{
        cout<<"No Solution"<<endl;
    }

    return 0;
}
