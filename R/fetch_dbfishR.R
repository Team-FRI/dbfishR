#' @title fetch_dbfishR
#' 
#' @description Helper function to download FRI's data
#' 
#' @importFrom httr write_disk GET progress
#'
#' @param url URL for FRI's AccessDB database.
#' @param cache Whether to cache the AccessDB for future R sessions.
#' @param cache_dir The location to cache the AccessDB.
#' @param refresh Whether to force a re-download the AccessDB.
#' @param show_progress If set to FALSE, do not display download progress bar (helpful for R Markdown documents).
#'
#' @return The local path to FRI's AccessDB 
#'
fetch_dbfishR <-
  function(
    url = getOption("dbfishR_data_url"),
    cache = getOption("dbfishR_use_cache"),
    cache_dir = getOption("dbfishR_cache_dir"),
    refresh = getOption("dbfishR_refresh"),
    show_progress = getOption("dbfishR_progress")) {
    
    access_file <- basename(url)
    
    if (cache) {
      access_dir <- cache_dir
    } else {
      access_dir <- tempdir()
    }
    
    if (!file.exists(access_dir)) {
      dir.create(access_dir, recursive = TRUE)
    }
    
    helper <- function(url, file_loc, show_progress) {
      if (show_progress) {
        try(httr::GET(url, httr::write_disk(file_loc), httr::progress(type = "down")), silent = TRUE)
      } else {
        try(httr::GET(url, httr::write_disk(file_loc)), silent = TRUE)
      }
    }
    
    file_loc <- file.path(access_dir, access_file)
    if(!file.exists(file_loc)) {
      helper(url, file_loc, show_progress)
    } else if(refresh) {
      unlink(file_loc)
      helper(url, file_loc, show_progress)
    }
    
    file_loc
  }

#' @title fetch_dbfishR_template
#' 
#' @description Helper function to download FRI's data template so you can contribute
#' 
#' @importFrom httr write_disk GET progress
#'
#' @param url URL for FRI's data template.
#' @param cache Whether to cache the template for future R sessions.
#' @param cache_dir The location to cache the template.
#' @param refresh Whether to force a re-download the template.
#' @param show_progress If set to FALSE, do not display download progress bar (helpful for R Markdown documents).
#'
#' @return The local path to FRI's Template 
#'
fetch_dbfishR_template <-
  function(
    url = getOption("dbfishR_template_url"),
    cache = getOption("dbfishR_use_cache"),
    cache_dir = getOption("dbfishR_cache_dir"),
    refresh = getOption("dbfishR_refresh"),
    show_progress = getOption("dbfishR_progress")) {
    
    access_file <- basename(url)
    
    if (cache) {
      access_dir <- cache_dir
    } else {
      access_dir <- tempdir()
    }
    
    if (!file.exists(access_dir)) {
      dir.create(access_dir, recursive = TRUE)
    }
    
    helper <- function(url, file_loc, show_progress) {
      if (show_progress) {
        try(httr::GET(url, httr::write_disk(file_loc), httr::progress(type = "down")), silent = TRUE)
      } else {
        try(httr::GET(url, httr::write_disk(file_loc)), silent = TRUE)
      }
    }
    
    file_loc <- file.path(access_dir, access_file)
    if(!file.exists(file_loc)) {
      helper(url, file_loc, show_progress)
    } else if(refresh) {
      unlink(file_loc)
      helper(url, file_loc, show_progress)
    }
    
    file_loc
  }
