#' Extract polarity from xcmsRaw object.
#' 
#' Extracts polarity from an xcmsRaw object.
#' The polarity found in the majority of scans is returned.
#'
#' @param xraw The xcmsRaw object to extract polarity from.
#'
#' @return A character string giving the polarity. Can be "positive", "negative", or "unknown".
#' 
#' @export
#' 

extract_polarity <- function(xraw){
    
    pols          <- xraw@polarity
    
    if(length(pols)==0) return("unknown")
    
    pols_count    <- table(pols)
    pols_dominant <- names(pols_count)[which.max(pols_count)]
    
    return(pols_dominant)
    
}    
    


#' Convert raw data into a tibble of xcmsRaw objects.
#'
#' @param files character vector of file names/paths.
#' @param ... further arguments to \code{\link{xcmsRaw}}.
#'
#' @return A \code{\link{tibble}} containing the columns: 
#' \itemize{
#'   \item \strong{file:} Filename without path.
#'   \item \strong{polarity:} Character string of "positive", "negative", or "unknown".
#'   \item \strong{raw:} The xcmsRaw objects.
#'   \item \strong{path:} The input path (files).
#' }
#' 
#' @export
#'
#'@importFrom tibble data_frame
#'@importFrom dplyr as.tbl mutate mutate_each select %>%
#'@importFrom purrr map map_chr
#'@importFrom xcms xcmsRaw
#' 

xcmsRaw_to_tbl <- function(files, ...){

    . <- path <- polarity <- NULL # make build check happy

    data <- files %>% 
            data_frame(path = .) %>% as.tbl %>%                  # string to tbl
            mutate(file=basename(path)) %>% 
            mutate(raw   = map(.$path, ~ xcmsRaw(.x, ...))  ) %>%           # read raw data
            mutate_each(as.factor,path,file) %>% 
            mutate(polarity = map_chr(raw,extract_polarity)) %>% # get polarity for each raw data
            select(file,polarity,raw,path)                       # just re-arrange for readability
    
    return(data)
}



