void calculate(int n,vector<int> &res){
    int carry=0;
    for(int i=0;i<res.size();i++){
        int prod=n*res[i]+carry;
        res[i]=(prod%10);
        carry=prod/10;
    }
    while(carry){
        res.push_back(carry%10);
        carry=carry/10;
    }
}

string Solution::solve(int A) {
    vector<int> res;
     string ans="";
    res.push_back(1);
    for(int i=2;i<=A;i++){
        calculate(i,res);
    }
   
    reverse(res.begin(),res.end());
   for(int i=0;i<res.size();i++){
       ans+=to_string(res[i]);
   }
    return ans;
}