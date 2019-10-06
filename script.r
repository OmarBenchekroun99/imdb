prediction_finale <- function(x_ultime,
                              y_ultime,
                              file_path = "bencheko_model_keras.hdf5"){

  require(magrittr)

  #tests
  if (nrow(x_ultime) != 5000 | ncol(x_ultime) != 2000)
    stop("Dimensions de x incorrectes.")

  if (nrow(y_ultime) != 5000 | ncol(y_ultime) != 2)
    stop("Dimensions de y incorrectes.")

  #if keras
    require(keras)

    model <- load_model_hdf5(filepath = file_path)
    model %>% evaluate(x_ultime, y_ultime)
}
