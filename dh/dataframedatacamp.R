#dataframe datacamp

name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
planets_df =data.frame(name,type,diameter,rotation,rings)
planets_df
planets_df[1,3]
planets_df[4,]
planets_df[1:3,"type"]
planets_df[1:3,"diameter"]
x=planets_df$diameter
x
planets_df[,"diameter"]
rings_vector= planets_df$rings
rings_vector
planets_df[rings_vector,"name"]
planets_df[rings,"diameter" ]

subset(planets_df, diameter < 1, select=c(diameter,rings))
order(planets_df$diameter)
planets_df

planets_df[order(planets_df$diameter),]
positions
planets_df[positions,]

 mtcars[1:10,]
######################################list#########################33
 my_vector <- 1:10 
 
 # Matrix with numerics from 1 up to 9
 my_matrix <- matrix(1:9, ncol = 3)
 
# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]
my_list=list(my_vector,my_matrix,my_df)
my_list # Adapt list() call to give the components names
my_list <- list(vec = my_vector, mat = my_matrix, df = my_df)
my_list

# Gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert gender_vector to a factor
factor_gender_vector <- factor(gender_vector)

# Print out factor_gender_vector
factor_gender_vector

# Gender vector
gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert gender_vector to a factor
factor_gender_vector <- factor(gender_vector)

# Print out factor_gender_vector
factor_gender_vector

# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector,order = T, levels = c("Low", "Medium", "High"))
factor_temperature_vector

# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

factor_survey_vector
# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")
levels(factor_survey_vector) <- c("male", "feMale")





summary(factor_survey_vector)

speed_vector <- c("fast", "slow", "slow", "fast", "insane") 
# Add your code below
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "fast", "insane"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)
############################


# Create factor_speed_vector
speed_vector <- c("fast", "slow", "slow", "fast", "insane")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "fast", "insane"))
factor_speed_vector
# Factor value for second data analyst
da2 <- factor_speed_vector[2]
da2
# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster data analyst 5?
da2 > da5
summary(factor_speed_vector)
factor_speed_vector
