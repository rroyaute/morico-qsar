# Simulations pour vélocité en fonction de la masse du parachutiste

# Librairies
library(tidyverse); library(viridis)

# Importer la fonction
source("R/funs/freefallin_fun.R")

# Définir les paramètres
g = 9.81 # constante gravitationelle
c = 12.5 # 
t = 0:10

# Parachutiste de 40 à 120 kg
m_range = c(40:120)

# appliquer la fonction pour chaque valeur de paramètre
# Stocker chaque vélocité dans liste
out = lapply(m_range, freefallin_fun, g = g, c = c, t = t)

df = data.frame(
  m = rep(m_range, each = length(t)), # valeur de masse répétée à chaque pas de temps
  t = rep(t, length(m_range)), # temps répétée pour chaque masse
  v = unlist(out) # vélositées mises bout à bout
  )

df %>% 
  ggplot(aes(x = t, y = v, group = m, color = m)) +
  geom_point() +
  geom_line() +
  scale_color_viridis(option = "H") +
  xlab("Temps (s)") +
  ylab("Vélocité (m/s)") +
  theme_bw(16)
  
