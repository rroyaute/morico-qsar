# Fonction pour chute libre avec frottements

freefallin_fun = function(g, m, c, t) {
  v = (g * m)/c * (1 - exp(-c/m)/t)
  return(v)
}

# test
# freefallin_fun(g = 9.81, m = 80, c = 12.5, t = 0:10)
