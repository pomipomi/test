function [v,a,b]=max2d(A,k)
if nargin == 1
    [v,t]=max(A(:));
    if nargout==2
        a=t;
    elseif nargout==3
        [a,b]=ind2sub(size(A),t);
    end
elseif nargin == 2
    if k<1 || k>numel(A)
        error('invalid value of k');
    else
        [vv,qq]=sort(A(:),'descend');
        v=vv(1:k);
        if nargout==2
            a=qq(1:k);
        elseif nargout==2
            [a,b]=ind2sub(size(A),qq(1:k));
        end
    end
end
