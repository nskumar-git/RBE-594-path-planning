function tmp = checkCollision(q_s,q_n,map)
res=10;
dispvec = q_s-q_n;



delx = linspace(0,dispvec(1),res);
dely = linspace(0,dispvec(2),res);

collmat = zeros(res,1);
for i=1:length(delx)
   tmpdisp = [delx(i),dely(i)];
   q_test = q_n + tmpdisp;
   collmat(i,1) = checkOccupancy(map,q_test);
end
tmp = max(collmat);

end
