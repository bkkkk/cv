stringify_date <- function(x) {
  if_else(is.na(x), "Present", as.character(x, "%b %Y"))
}

build_date_range <- function(start, end) {
  glue("{stringify_date(start)} - {stringify_date(end)}", start = start, end = end)
}

build_location <- function(city, country) {
  glue("{city}, {country}", city = city, country = country)
}
