#3a
dpois(6, 4.5)

#3b
library(dplyr)
library(ggplot2)
set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data = 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(title = '365 simulated births in a hospital with Pois(lambda = 4.5)',
        x = 'Number of babies born per period',
        y = 'Proportion') 
        
#3c
babies %>% dplyr::summarize(6_Bayi = sum(babies$data == 6) / n())
 
#3d
lambda = 4.5
rataan = varian = lambda
rataan
varian
