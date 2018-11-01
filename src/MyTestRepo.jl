module MyTestRepo

using Plots

function lsq_fit(x, y)
    @assert length(x) == length(y)
    N = length(x)
    X = zeros(N, 2)
    for j=1:N
        X[j,1] = 1.0
        X[j,2] = x[j]
    end
    C = X'*X
    alpha = inv(C)*X'*y
    return alpha
end

function plot_fit(x, y, fn)
    # x = [0.0, 2.0, 4.0]
    # y = [0.0, 3.0, 5.0]
    α0, α1 = lsq_fit(x, y)
    scatter(x, y, color=:black, label="Data")
    plot!(x, α0 .+ α1*x, color=:black, lw=3)
    savefig(fn)
end

export lsq_fit, plot_fit

#=
comment
long comment
=#

end
