function [N,Result] = CubePopulate(n,h,i,j,u,v,w,x,y,z,r,s,t)
%INPUTS
% h,i,j - Starting Positions
% u,v,w - Movement Alg.
% x,y,z - 1st Conflict Movement Alg. FROM SELECTED POSITION
%r,s,t - 2nd Conflict Movement Alg. FROM SELECTED POSITION
%
%THE CONFLICT ALGS will proceed with a movement FROM THE ALREADY OCCUPIED
%POSITION
%
%Here is an example of a movement alg. that generates a magic cube.
%CubePopulate(5,1,3,3,-1,-1,0,2,0,1,-1,1,0)
    N=zeros(n,n,n);
    a=h;
    b=i;
    c=j;
    k=0;
    l=0;
    while k < n^3
        k = k+1;
        g = 0;
        while N(a,b,c) ~= 0 && g < n^2
            %Fist conflict Alg.
            g = g+1;
            a=mod(a-1+x,n) + 1;
            b=mod(b-1+y,n) + 1;
            c=mod(c-1+z,n) + 1;
        end
        while N(a,b,c) ~= 0 &&  g>=n^2
                %Seconf Conflict Alg.
                g=g+1;
                a=mod(a-1+r,n) + 1;
                b=mod(b-1+s,n) + 1;
                c=mod(c-1+t,n) + 1;
        end
        if N(a,b,c) == 0
            %Movement Alg.
            N(a,b,c) =k;
            g=0;
            a=mod(a-1+u,n) + 1;
            b=mod(b-1+v,n) + 1;
            c=mod(c-1+w,n) + 1;           
        end
    end
    
    rcp1 = randi(3);
    rcp2 = randi(3);
    
    if rcp1 == 1
    test1 = sum(N(:,randi(n),randi(n)));
    end
    if rcp1 == 2
    test1 = sum(N(randi(n),:,randi(n)));
    end
    if rcp1 == 3
    test1 = sum(N(randi(n),randi(n),:));
    end
    if rcp2 == 1
    test2 = sum(N(:,randi(n),randi(n)));
    end
    if rcp2 == 2
    test2 = sum(N(randi(n),:,randi(n)));
    end
    if rcp2 == 3
    test2 = sum(N(randi(n),randi(n),:));
    end

    if test1 == test2;
        disp('May Be Magic')
    end
    if test1 ~= test2;
        disp('Definetly Not Magic')
    end
end

          
        
    
    
    
    
    
    
    
    
    
    
   