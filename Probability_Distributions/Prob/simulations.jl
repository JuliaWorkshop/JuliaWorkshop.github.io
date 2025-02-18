## return a integer value from the interval (a, b) where a and b are integers
## Conventionally a<b, but no ordering is necessary
function rdunif(a, b)
    integer(floor(a + rand()*(b - a)));
end
###############################################
#tic()
# Generate a sample of size m from discrete uniform (a,b) distribution
function sampdunif(m,a,b)
    X=Integer[]
    for i in 1:m
        push!(X,rdunif(a,b))
    end
    return(X);
end
#toc()
###############################################
# tic()
# simulates m rolls of a fair dice
# returns the sum
# For m = 100, E(Sum) = 350
function sampdice(m,1,7)
    X=Integer[]
    for i in 1:m
        push!(X,rdunif(1,7))
    end
    return(X);
end
#toc()
