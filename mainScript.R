library(biomaRt)
ensembl <- useEnsembl(biomart="ensembl", dataset="hsapiens_gene_ensembl")

Res <- getBM(attributes=c('ensembl_gene_id',
                          #'ensembl_transcript_id',
                          'hgnc_symbol',
                   'chromosome_name','start_position','end_position'),
      filters = 'hgnc_symbol',
      values = stringr::str_split_1('EDAR, TCHH, ERRF11, PTK6, OFCC1, KRAP2-3, HOXC13, WNT10A, KRT71, PADI3, GATA3, PEX14, LIPH, TGFA, HRNR, LGRA, TCHHL1, RPN, S100A11, FRAS1, LCE3E, LINC01494, PRRS53, FLG-AS1, TRAF2, RTN',pattern = ", "),
      mart = ensembl)
