#' @title get_table
#' 
#' @description xxx
#' 
#' @importFrom RODBC odbcConnectAccess2007 sqlFetch odbcClose
#'
#' @param table the table to fetch from the db
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
#'
#' @return xxx
#'
get_table <-
  function(table, ...) {
    file_loc <- fetch_dbfishR(...)
    channel <- RODBC::odbcConnectAccess2007(file_loc, readOnly = T)
    table <- RODBC::sqlFetch(channel, table)
    RODBC::odbcClose(channel)
    table
  }

#' @title get_discharge_event_info
#' 
#' @description retrieves the discharge event info.
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
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


#' @title get_discharge_records
#' 
#' @description retrieves the discharge records.
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
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

#' @title get_events
#' 
#' @description retrieves the events.
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
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

#' @title get_fish_records
#' 
#' @description retrieves the fish records.
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
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

#' @title get_fish_survey
#' 
#' @description retrieves the fish survey.
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
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

#' @title get_fish_tally
#' 
#' @description retrieves the fish tally.
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
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

#' @title get_particle_size
#' 
#' @description retrieves the particle size.
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
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

#' @title get_sites
#' 
#' @description retrieves the sites.
#' 
#' @export
#' 
#' @param ... additional parameters to pass to \code{\link[dbfishR]{fetch_dbfishR}}
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
