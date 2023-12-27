ii=1; jj=9;%k=0.1;
a=cell(6,10);b=cell(6,10);
po=p;no=n1;
for i=1:ii;
for j=1:jj; out=0; 
[cn nn pn]=coeff(i,j,po,t,no);no=nn;po=pn;
a{i,j}=cn;b{i,j}=nn;
% add thisline to not to upate px;
%px=p  or 
px=pn; 
%no need for these 2 lines since control is by command window
%x=px(i,:); x=x*(1-0.1*(j-1));px(i,:)=x;
%z=px(:,9); out(i,j)=sim(b{i,j},z);
end;
end;
%x=px(i,:); x=x*(1-0.1*(j-1));px(i,:)=x;
%z=px(:,9); out(i,j)=sim(b{i,j},z);
%x=px(i,:);
%x=x*k;px(i,:)=x;
z=px(:,1); out=sim(b{i,j},z)
z=px(:,10); out=sim(b{i,j},z);
z=px(:,20);out=sim(b{i,j},z);
z=px(:,30);out=sim(b{i,j},z);
z=px(:,40);out=sim(b{i,j},z);