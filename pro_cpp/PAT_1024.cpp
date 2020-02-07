#include<iostream>
#include<string>
#define Maxsize 21

using namespace std;

int Judge(string num){
    for(int i=0;i<=num.size()/2;i++)
        if(num[i] != num[num.size()-i-1])
            return 1;
    return 0;
}

//string Revers1(string num) {
//    string num2;
//    for(int i=0;i<num.size();i++)
//        num2.insert(0,1,num[i]);
//    return num2;
//}

string Revers(string num) {
    char temp;
    for(int i=0;i<=num.size()/2-1;i++){
        temp = num[i];
        num[i] = num[num.size()-i-1];
        num[num.size()-i-1] = temp;
    }
    return num;
}
string Add(string num){
    string num2=Revers(num);
    string num3;
    int flag=0;
    int n;
    for(int i=num.size()-1;i>=0;i--){
        n = ((int)num[i]-48)+((int)num2[i]-48) +flag;
        flag = n/10;
        n=n%10;
        num3.insert(0,1,(char)(n+48));
    }
    if(flag>0)
        num3.insert(0,1,(char)(flag+48));
    return num3;
}


int main(){
    string num;
    int N;
    cin>>num;
    cin>>N;
    for(int i=0;i<N;i++){
        if(Judge(num)==0){
            cout<<num<<endl;
            cout<<i;
            return 0;
        }else{
            num = Add(num);
        }
    }
    cout<<num<<endl;
    cout<<N;

    return 0;
}