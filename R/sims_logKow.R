# Simulations simple pour la relation entre coefficient de partage n-octanol et toxictité


n_compo # nombre de composés
logKow  # vecteur de Kow
b0 # Ordonnée à l'origine
b1 # Pente
sigma # variance résiduelle

log_inv_LC50 = rnorm(n_compo, b0 + b1 * logKow, sigma)

df = data.frame( # stockage
  logKow = logKow,
  log_inv_LC50 = log_inv_LC50
) 

plot(log_inv_LC50 ~ logKow, df)


n_compo = 100 # nombre de composés
logKow = rnorm(n_compo, 2, 1)  # vecteur de Kow
b0 = -4 # Ordonnée à l'origine
b1 = .9 # Pente
sigma = .25 # variance résiduelle

log_inv_LC50 = rnorm(n_compo, b0 + b1 * logKow, sigma)

df = data.frame( # stockage
  logKow = logKow,
  log_inv_LC50 = log_inv_LC50
) 

plot(log_inv_LC50 ~ logKow, df)

