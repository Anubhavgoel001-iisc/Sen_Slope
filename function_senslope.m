%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [senslope]=function_senslope(data)

count=0;
for i =1: length (data)
    for j =1: length (data)
        if i>j
            slope(count+1,1)= (data(i)-data(j))/(i-j);
            count=count+1;
            mat_slope(i,j)= (data(i)-data(j))/(i-j);
        end
    end
end
slope_sorted=sort(slope);
senslope= median(slope_sorted);
end


