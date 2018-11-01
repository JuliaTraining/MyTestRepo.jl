using Test, MyTestRepo

x = [0.0, 2.0, 4.0]
y = [0.0, 3.0, 5.0]
α = lsq_fit(x, y)
@test isapprox(α, [1/6, 1.25])
