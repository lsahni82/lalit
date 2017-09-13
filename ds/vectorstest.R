#vectors test
a=c(1,2,3,4)
b=c("lalit","student")
names(b)=c("name","profession")
# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
names(poker_vector)
days_vector
total_poker <- sum(poker_vector)
total_poker
# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- total_roulette + total_poker

# Print out total_week
total_week

roulette_vector[2]
