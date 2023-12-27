qn=feedforwardnet(10);
qn=configure(qn,q,tt);
qn=train(qn,q,tt); 
z=q(:,1);  out=sim(qn,z)  
z=q(:,10); out=sim(qn,z)
z=q(:,20); out=sim(qn,z)
z=q(:,30); out=sim(qn,z)
z=q(:,40); out=sim(qn,z)