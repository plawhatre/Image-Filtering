function [RZ] = hor_ver(R)
% threshold for variance of intensity value around edges
sigma=std2(R)/5;
[rx,ry]=size(R);
%intentionally not padding the array and starting the scan from second to
%second last column and row to avoid false edge at the border
k=1;
for i=(1+k):(rx-k)
    for j=(1+k):(ry-k)
        %Horizontal edges
        if i<rx
            if ((R(i,j)<0 && R(i+1,j)>0)||(R(i,j)>0 && R(i+1,j)<0))
                if std2(R(((i-1):(i+1)),((j-1):(j+1))))>=sigma
                    RZ(i,j)=255;
                end
            else
                RZ(i,j)=0;
            end
        end
        %Verticle edges
        if j<ry
            if ((R(i,j)<0 && R(i,j+1)>0)||(R(i,j)>0 && R(i,j+1)<0))
                if std2(R(((i-1):(i+1)),((j-1):(j+1))))>=sigma
                    RZ(i,j)=255;
                end
            else
                RZ(i,j)=0;
            end
        end
    end
end
end

