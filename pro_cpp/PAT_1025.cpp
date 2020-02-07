#include<iostream>
#include<algorithm>
#include<string>

#define Maxsize 30005

using namespace std;

typedef struct{
    int score;
    int team;
    int rank;
    int local_rank;
    string number;
}list;

list List[Maxsize];

typedef struct{
    int l_rank;
    int l_score;
    int people;
}list2;

list2 List2[105];


int N;
int total = 0;
void Input(){
    int M;
    for(int i=0;i<N;i++){
        cin>>M;
        List2[i+1].l_rank=0;
        List2[i+1].l_score = -1;
        List2[i+1].people = 0;
        for(int n=0;n<M;n++){
            cin>>List[total].number>>List[total].score;
            List[total].team = i+1;
            total++;
        }

    }
}
bool cmp(list a,list b){
    if(a.score!=b.score)
        return a.score>b.score;
    return a.number<b.number;
}

void Sort(){
    int f_rank=0;
    int people = 0;
    int n_score = -1;
    sort(List+0,List+total,cmp);
    for(int i=0;i<total;i++){
        people++;
        if(List[i].score != n_score){
            f_rank = people;
            n_score = List[i].score;
        }
        List[i].rank = f_rank;

        List2[List[i].team].people++;
        if(List2[List[i].team].l_score != List[i].score){
            List2[List[i].team].l_rank = List2[List[i].team].people;
            List2[List[i].team].l_score = List[i].score;
        }
        List[i].local_rank = List2[List[i].team].l_rank;
        cout<<List[i].number<<" "<<List[i].rank<<" "<<List[i].team<<" "<<List[i].local_rank<<endl;
    }
}

int main(){
    cin>>N;
    Input();
    cout<<total<<endl;
    Sort();
    return 0;
}
