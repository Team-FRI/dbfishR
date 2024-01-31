#' @name get_table
#'
#' @title Get a table from the database
#' 
#' @description Get a table from [FRI](https://www.susqu.edu/academics/centers-and-programs/freshwater-research-institute)'s database
#'
#' @keywords internal
#' 
#' @importFrom RODBC odbcConnectAccess2007 sqlFetch odbcClose
#'
#' @param table the table to fetch from the db
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @noRd
#'
#' @return \code{\link[base]{data.frame}}
#'
get_table <-
  function(table, ...) {
    file_loc <- fetch_dbfishR(...)
    channel <- RODBC::odbcConnectAccess2007(file_loc, readOnly = T)
    table <- RODBC::sqlFetch(channel, table)
    RODBC::odbcClose(channel)
    table
  }

#' @name get_discharge_event_info
#'
#' @title Retrieves discharge events
#' 
#' @description Retrieve discharge event data from the FRI database
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @return \code{\link[base]{data.frame}}
#' 
#' @examples
#'
#' \dontrun{
#' library(dbfishR)
#' data <- get_discharge_event_info()
#' View(data)
#' }
#'
get_discharge_event_info <-
  function(...) {
    get_table(table = 'DischargeEventInfo', ...) }


#' @name get_discharge_records
#'
#' @title Retrieve the discharge records
#' 
#' @description Retrieve discharge record data from the [FRI](https://www.susqu.edu/academics/centers-and-programs/freshwater-research-institute) database
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @return \code{\link[base]{data.frame}}
#' 
#' @examples
#'
#' \dontrun{
#' library(dbfishR)
#' data <- get_discharge_records()
#' View(data)
#' }
#'
get_discharge_records <-
  function(...) {
    get_table(table = 'DischargeRecords', ...) }

#' @name get_events
#'
#' @title Retrieve the events
#' 
#' @description Retrieve event data from the [FRI](https://www.susqu.edu/academics/centers-and-programs/freshwater-research-institute) database
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @return \code{\link[base]{data.frame}}
#' 
#' @examples
#'
#' \dontrun{
#' library(dbfishR)
#' data <- get_events()
#' View(data)
#' }
#'
get_events <-
  function(...) {
    get_table(table = 'Events', ...) }

#' @name get_fish_records
#'
#' @title Retrieve the fish records
#' 
#' @description Retrieve fish record data from the [FRI](https://www.susqu.edu/academics/centers-and-programs/freshwater-research-institute) database
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @return \code{\link[base]{data.frame}}
#' 
#' @examples
#'
#' \dontrun{
#' library(dbfishR)
#' data <- get_fish_records()
#' View(data)
#' }
#'
get_fish_records <-
  function(...) {
    get_table(table = 'FishRecords', ...) }

#' @name get_fish_survey
#'
#' @title Retrieve the fish survey
#' 
#' @description Retrieve fish survey data from the [FRI](https://www.susqu.edu/academics/centers-and-programs/freshwater-research-institute) database
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @return \code{\link[base]{data.frame}}
#' 
#' @examples
#'
#' \dontrun{
#' library(dbfishR)
#' data <- get_fish_survey()
#' View(data)
#' }
#'
get_fish_survey <-
  function(...) {
    get_table(table = 'FishSurvey', ...) }

#' @name get_fish_tally
#'
#' @title Retrieve the fish tally
#' 
#' @description Retrieve fish tally data from the [FRI](https://www.susqu.edu/academics/centers-and-programs/freshwater-research-institute) database
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @return \code{\link[base]{data.frame}}
#' 
#' @examples
#'
#' \dontrun{
#' library(dbfishR)
#' data <- get_fish_tally()
#' View(data)
#' }
#'
get_fish_tally <-
  function(...) {
    get_table(table = 'FishTally', ...) }

#' @name get_particle_size
#'
#' @title Retrieves the particle size
#' 
#' @description Retrieve particle size data from the [FRI](https://www.susqu.edu/academics/centers-and-programs/freshwater-research-institute) database
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @return \code{\link[base]{data.frame}}
#' 
#' @examples
#'
#' \dontrun{
#' library(dbfishR)
#' data <- get_particle_size()
#' View(data)
#' }
#'
get_particle_size <-
  function(...) {
    get_table(table = 'ParticleSize', ...) }

#' @name get_sites
#'
#' @title Retrieve the sites
#' 
#' @description Retrieve site data from the [FRI](https://www.susqu.edu/academics/centers-and-programs/freshwater-research-institute) database
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @return \code{\link[base]{data.frame}}
#' 
#' @examples
#'
#' \dontrun{
#' library(dbfishR)
#' data <- get_sites()
#' View(data)
#' }
#'
get_sites <-
  function(...) {
    get_table(table = 'Sites', ...) }
