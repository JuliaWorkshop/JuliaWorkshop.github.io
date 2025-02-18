A=20   # initial condition
B=100
JPot = A+B
Balance=[A]  # keep a tally
probthres = 0.44  # probability of Gambler winning

#########################################

function OneGame()
         outcome = rand()
         if outcome < probthres # Gambler Wins
                 push!(Balance,(Balance[end]+1));
         else                   # Gambler Loses
                 push!(Balance,(Balance[end]-1));
         end
       end
#########################################
# M=100
# for i = 1:M
#         OneGame()
#       end

function Duration()
        while Balance[end]>0
                OneGame()
                if Balance[end] >= JPot
                           break
                end
        end
        size(Balance)[1]
       end



function DurDist(A,B,P,M)
         outcome = rand()
         if outcome < probthres # Gambler Wins
                 push!(Balance,(Balance[end]+1));
         else                   # Gambler Loses
                 push!(Balance,(Balance[end]-1));
         end
       end
       push!(Durations,size(Balance)[1]);
#########################################
