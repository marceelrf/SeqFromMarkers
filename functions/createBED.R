createBED <- function(df,name = "",path = "") {
  require(dplyr)

  if(name == ""){
    name <- deparse(substitute(df))
  }

  df %>%
    select("chrom" = "chromosome_name",
           "chromStart" = "start_position",
           "chromEnd" = "end_position",
           "Strand" = "strand",
           "GeneSymbol" = 'hgnc_symbol',
           "GeneID" = 'entrezgene_id') %>%
    filter(chrom %in% c(1:22,"X","Y")) %>%
    mutate(chrom = glue::glue("chr{chrom}")) %>%
    mutate(Strand = case_when(
      Strand == 1 ~ "+",
      Strand == -1 ~ "-",
      TRUE~"Error"
    )) %>%
    readr::write_delim(file = glue::glue("{path}{name}.bed"),delim = "\t")

}

