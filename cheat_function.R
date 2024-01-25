# get assignment answers for PIPS assigments 3.1.1, 3.1.6 ,and 3.1.8

cheat <- function(assignment_number){
  if(assignment_number == "3.1.1"){
    cat("# create normal distribution of grades\n",
        "grades <- rnorm(n = 60, mean = 7.5, sd = 1)\n",
        "# make sure that there are no grades > 10 and < 5.5\n",
        "grades[grades > 10] <- 10\n",
        "grades[grades < 5.5] <- 5.5\n",
        "# round so that there are only full and half grades\n",
        "grades <- round(grades * 2, 0)/2\n",
        "# histogram\n",
        "hist(grades)"
    )
  }
  if(assignment_number == "3.1.6"){
    cat("# calculate max weights\n",
        "max_weights <- c()\n",
        "chicken <- 1\n",
        "for (chicken in 1:50) {\n",
        "max_weight <- max(ChickWeight$weight[ChickWeight[, 3] == chicken])\n",
        "max_weights <- c(max_weights, max_weight)\n",
        "}\n",
        "# create data frame with selected chicks and bring them in correct order\n",
        "chicks_selected <- data.frame(chick = factor(c(1, 20, 5, 40, 19),\n", 
        "levels = c(1, 20, 5, 40, 19)),\n", 
        "max_weight = max_weights[c(1, 20, 5, 40, 19)])\n",
        "# plot\n",
        "ggplot(data = chicks_selected, mapping = aes(x = chick, y = max_weight)) +\n",
        "geom_col()\n"
    )
  }
  if(assignment_number == "3.1.8"){
    cat("library(patchwork)\n",
        "# create data frame with filtered chicken but all of their weights\n",
        "chicken_filtered <- ChickWeight %>%\n",
        "filter(Chick == 1 | Chick == 20 | Chick == 5 | Chick == 40 | Chick == 19)\n",
        "chicken_filtered$Chick <- factor(chicken_filtered$Chick,\n", 
        "levels = c( 1, 20, 5, 40, 19))\n",
        "# plot\n",
        "ggplot(data = chicks_selected, mapping = aes(x = chick, y = max_weight)) +\n",
        "geom_col()+\n",
        "ggplot(data = chicken_filtered, mapping = aes(x = Time,\n", 
        "y= weight,\n", 
        "color = Chick)) +\n",
        "geom_line()\n"
    )
  }
}