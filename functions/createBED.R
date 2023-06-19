createBED <- function(df,name = "",path = "") {
  require(dplyr)

  df %>%
    select("chrom" = "chromosome_name",
           "chromStart" = "start_position",
           "chromEnd" = "end_position") %>%
    filter(chrom %in% c(1:22,"X","Y")) %>%
    mutate(chrom = glue::glue("chr{chrom}")) %>%
    readr::write_delim(file = glue::glue("{name}.bed"),delim = "\t")

}

