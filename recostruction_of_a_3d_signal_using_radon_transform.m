
clear all
close all

x=zeros(256,256,256);
z1=zeros(258,258,256);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%   KOLOUROS KONOS %%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:256
    for k=1:256
        for l=1:256
            dist=sqrt((k-64)*(k-64)+(l-64)*(l-64));
            if(dist<(60-i/8))
            x(l,k,i)=i;
            end
        end
    end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%   5 MIKRES SFAIRES %%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:256
    for k=1:256
        for l=1:256
            dist=sqrt((i-32)*(i-32)+(k-32)*(k-32)+(l-32)*(l-32));
            if(dist<4)
            x(l,k,i)=64;
            end
        end
    end
end

for i=1:256
    for k=1:256
        for l=1:256
            dist=sqrt((i-96)*(i-96)+(k-48)*(k-48)+(l-48)*(l-48));
            if(dist<8)
            x(l,k,i)=128;
            end
        end
    end
end

for i=1:256
    for k=1:256
        for l=1:256
            dist=sqrt((i-128)*(i-128)+(k-64)*(k-64)+(l-64)*(l-64));
            if(dist<4)
            x(l,k,i)=0;
            end
        end
    end
end



for i=1:256
    for k=1:256
        for l=1:256
            dist=sqrt((i-96)*(i-96)+(k-80)*(k-80)+(l-80)*(l-80));
            if(dist<12)
            x(l,k,i)=128;
            end
        end
    end
end

for i=1:256
    for k=1:256
        for l=1:256
            dist=sqrt((i-192)*(i-192)+(k-64)*(k-64)+(l-48)*(l-48));
            if(dist<16)
            x(l,k,i)=64;
            end
        end
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%   MEGALH SFAIRA  %%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:256
    for k=1:256
        for l=1:256
            dist=sqrt((i-160)*(i-160)+(k-180)*(k-180)+(l-180)*(l-180));
            if(dist<64)
            x(l,k,i)=100;
            end
        end
    end
end

%%%%%%%%%%%%  ORTHOGONIO PARALLHLEPIPEDO MESA STH SFAIRA
x(155:165,200:210,165:200)=200;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%   PLAGIOS KILINDROS  %%%%%%%%%%%%%%%%%%%%%%%%
for i=1:256
    for k=1:256
        for l=1:256
            dist=sqrt((k-i+1)*(k-i+1)+(l-255+i-1)*(l-255+i-1));
            if(dist<16)
            x(l,k,i)=256-i;
            end
        end
    end
end
for m=1:256
    th=0:0.5:179;
    z=0.3*iradon(radon(x(:,:,m),th),th);
    z1(:,:,m)=z;
end


y=permute(z1,[1,3,2]);
implay(y);
