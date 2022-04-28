function q_n = nearestV(V,alpha)
distmat = abs(V(:,1) - alpha(1)) + abs(V(:,2) - alpha(2)); 
[~,ind]=min(distmat);
q_n = V(ind,:);
end