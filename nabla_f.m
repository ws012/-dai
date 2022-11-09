function df=nabla_f(fun,x)
%  ∇f 求梯度
    df=[];
    x=str2sym(x);
    for i=1:length(x)
        df1 = diff(fun,x(i));
        df=[df;df1];
    end
    df= matlabFunction(df);
end
