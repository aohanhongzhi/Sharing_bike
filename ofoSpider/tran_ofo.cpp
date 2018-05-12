#include<bits/stdc++.h>
using namespace std;

int main(){
	freopen("out.txt","w",stdout);
	string s1,s2;
	while(cin>>s1>>s2){
		cout<<"{"<<endl;
		cout<<"\"bikeid\":\"";
		for(int i=0;i<10;i++)cout<<rand()%10;
		cout<<"#\","<<endl;
		cout<<"\"center\":\""<<s2<<","<<s1<<"\","<<endl;
		cout<<"\"type\":"<<2<<","<<endl;
		cout<<"\"subDistricts\": [],"<<endl;
		cout<<"},"<<endl; 
	}
	return 0;
}
