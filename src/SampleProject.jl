module SampleProject

export sin_sum, cos_sum, geometric_series, pi_gregory_leibniz, pi_nilakantha

sin_sum(n) = sum(sin, range(0, 2pi, length=n))

cos_sum(n) = sum(cos, range(0, 2pi, length=n))

geometric_series(a, r, n) = sum(k -> a * r^k, 0:n)

pi_gregory_leibniz(n) = sum(k -> 4/(4k+1) - 4/(4k+3), 0:n)

pi_nilakantha(n) = 3 + sum(k -> 4/((4k-2)*(4k-1)*4k) - 4/(4k*(4k+1)*(4k+2)), 1:n)

end
