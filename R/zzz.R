#' @importFrom rappdirs user_cache_dir
.onAttach <-
  function(libname, pkgname) {
    options('dbfishR_url' = 'https://github.com/markanewman/dbfishR/releases/download/v1.0/DataSource.accdb')
    options('dbfishR_use_cache' = T)
    options('dbfishR_cache_dir' = rappdirs::user_cache_dir("dbfishR"))
    options('dbfishR_refresh' = F)
    options('dbfishR_progress' = T)

    packageStartupMessage(sprintf("Caching enabled by default to [%s]", getOption('dbfishR_cache_dir')))
  }
