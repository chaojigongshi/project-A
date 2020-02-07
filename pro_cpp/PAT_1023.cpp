#include<iostream>
#include<string>
#include<sstream>
#include<map>
#define Maxsize 21

using namespace std;

string Mult(string num,int X){
    int flag=0;
    int n;
    string num2;
    for(int i=num.size()-1;i>=0;i--){
        n = ((int)num[i]-48) *X+flag;
        flag = n/10;
        n=n%10;
        num2.insert(0,1,(char)(n+48));
    }
    if(flag>0)
        num2.insert(0,1,(char)(flag+48));
    return num2;
}


int main(){
    string num;
    int list[10];
    map<char,int> dic;
    for(int i=0;i<10;i++){
        list[i] = 0;
        dic[(char)(i+48)] = 0;
    }

    cin>>num;
    string num2 = Mult(num,2);
    string n, n2;
    n = num;
    n2 = num2;
    for(int i=0;i<n.size();i++)
        if(dic[n[i]]==0)
            dic[n[i]]++;
    for(int i=0;i<n2.size();i++){
        if(dic[n2[i]]==0){
            cout<<"No\n";
            cout<<num2;
            return 0;
        }else if(dic[n2[i]]==1)
            dic[n2[i]]=2;
    }
    for(int i=0;i<n.size();i++)
        if(dic[n[i]]==1){
            cout<<"No\n";
            cout<<num2;
            return 0;
        }
    cout<<"Yes\n";
    cout<<num2;
    return 0;
}
