using SampleProjectTest
using SampleProject
using Test

@bench @testset "Slow test" begin
    s = geometric_series(1, 0.9999, 50_000_000)
    @test isapprox(s, 1 / (1 - r); atol = 1e-6)
end
