using SampleProjectTest
using SampleProject
using Test

@testset "Sum of series" begin
    @bench @testset "Geometric series" begin
        r = 0.9999
        s = geometric_series(1, r, 1_000_000)
        @test isapprox(s, 1 / (1 - r); atol = 1e-6)
    end

    @testset "Pi" begin
        @bench @testset "Gregory–Leibniz" begin
            s = pi_gregory_leibniz(1_000_000)
            @test isapprox(s, π; atol = 1e-6)
        end

        @bench @testset "Nilakantha" begin
            s = pi_nilakantha(100)
            @test isapprox(s, π; atol = 1e-6)
        end
    end
end
