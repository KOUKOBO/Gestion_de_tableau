# Installation de package----
library(questionr)
library(tidyverse)
library(labelled)

# Import des données----

load(url("http://www.od-datamining.com/livreR/exemples.Rdata"))

# Selection de toute les colonnes sauf celles cité dans le vecteur----

houses <- houses |>
  select(- c("listing_url","last_scraped","host_id","host_name","host_since","host_location"))

# Uniquement les logements du 1er arrondissement au 16 arrondissement de Paris----

houses <- houses |>
  filter(zipcode %in% 75001:75016)

# Selectionner les logement donc le prix est supérieur à 50 euros----

houses <- houses|>
  filter(price > 50)

# Selectionner les logements dont le prix est supérieur à 100euros/nuit dont les conditions de retraction sont strict et flexible----

houses <- houses|>
  filter(price > 100,
         cancellation_policy %in% c("strict","flexible")
  )|>
  select(c("price","property_type"))

# Calcul du prix moyen par arrondissement----

houses <- houses|>
  group_by(zipcode)|>
  mutate(prix_moyen = mean(price, na.rm =TRUE)
  )|>
  arrange(.by_group = TRUE)

# Doublon----

houses |> distinct(
  host_id
)|>
  nrow()

# Na----

sum(is.na(houses$review_scores_rating))

# Conversion en facteur des variables en facteurs commencant par "prop", "room"----

houses <- houses|>
  mutate(
    across(starts_with(c("prop","room","canc","nei","am")),factor)
  )