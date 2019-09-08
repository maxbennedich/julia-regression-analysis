using SampleProjectTest
using SampleProject
using Test

@testset "Trigonometry" begin
    @bench @testset "Sin" begin
        s = sin_sum(10_000_000)
        @test isapprox(s, 0; atol = 1e-6)
    end

    @bench @testset "Cos" begin
        s = cos_sum(10_000_000)
        @test isapprox(s, 1; atol = 1e-6)
    end
end
