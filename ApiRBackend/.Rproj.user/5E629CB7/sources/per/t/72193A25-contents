library(RODBC)
GetData = function() {
  mycon = odbcDriverConnect(connection = "Driver={SQL Server Native Client 11.0};Server=localhost\\SQLEXPRESS;database=wsapinet;trusted_connection=yes;")
  data = sqlFetch(mycon, "Covid", colnames = FALSE, rownames = TRUE)
  RODBC::odbcClose(mycon)
  return(data.frame(data))
}