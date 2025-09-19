dinstall.packages("tidyverse", dependencies = TRUE)
install.packages("rmarkdown", dependencies = TRUE)
install.packages("IRkernel", dependencies = TRUE)
install.packages("skimr")
install.packages("shiny")
install.packages("Rtsne", dependencies = TRUE)


IRkernel::installspec(user = FALSE)
