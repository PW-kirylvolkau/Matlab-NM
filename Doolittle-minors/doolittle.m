%Done by Kiryl Volkau, student of WUT, student ID : 300763
function [L,U] = doolittle(A)
    %initializing matrices L and U
    [n,~]=size(A);
    L=zeros(n);
    U=zeros(n);
    %Setting first elements of L (they are easily calculated
    U(1,:)=A(1,:);
    L(:,1)=A(:,1)/U(1,1);
    L(1,1)=1;
    %Matching elements of A with the products of fitting elements of L and U
    for i=2:n
        for j=2:n
            for c=j:n
                U(j,c)=A(j,c)-dot(L(j,1:j-1),U(1:j-1,c));
            end
            L(j,i)=(A(j,i)-dot(L(j,1:i-1),U(1:i-1,i)))/U(i,i);
        end
    end
end