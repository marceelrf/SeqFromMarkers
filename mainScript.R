library(biomaRt)
library(tidyverse)
ensembl <- useEnsembl(biomart="ensembl", dataset="hsapiens_gene_ensembl")

#Baldness
baldness <- getBM(attributes=c('ensembl_gene_id',
                          #'ensembl_transcript_id',
                          'hgnc_symbol',
                   'chromosome_name','start_position','end_position'),
      filters = 'hgnc_symbol',
      values = stringr::str_split_1('EDAR, TCHH, ERRF11, PTK6, OFCC1, KRAP2-3, HOXC13, WNT10A, KRT71, PADI3, GATA3, PEX14, LIPH, TGFA, HRNR, LGRA, TCHHL1, RPN, S100A11, FRAS1, LCE3E, LINC01494, PRRS53, FLG-AS1, TRAF2, RTN',pattern = ", "),
      mart = ensembl)

#Eye colours
eye_colour <- getBM(attributes=c('ensembl_gene_id',
                                 #'ensembl_transcript_id',
                                 'hgnc_symbol',
                                 'chromosome_name','start_position','end_position'),
                    filters = 'hgnc_symbol',
                    values = stringr::str_split_1('HERC2, OCA2, SLC45A2, TYR, IRF4, SLC2444',pattern = ", "),
                    mart = ensembl)

#Hair colour
hair_colour <- getBM(attributes=c('ensembl_gene_id',
                                  #'ensembl_transcript_id',
                                  'hgnc_symbol',
                                  'chromosome_name','start_position','end_position'),
                     filters = 'hgnc_symbol',
                     values = stringr::str_split_1('MC1R, OCA2, SLC24A4, HERC2, TUBB3, ECOC2, SLC45A2, KITLG, IRF4, TYR, PIGU, TYRP1',pattern = ", "),
                     mart = ensembl)

#skin colour
skin_colour <- getBM(attributes=c('ensembl_gene_id',
                                  #'ensembl_transcript_id',
                                  'hgnc_symbol',
                                  'chromosome_name','start_position','end_position'),
                     filters = 'hgnc_symbol',
                     values = stringr::str_split_1('SLC24A4, SLC24A5, SLC45A2, ASIP, ANKRD11, BNC2, DEF8, HERC2, IRF4, KITLG, MC1R, OCA2, PIGU, RALY,, TYR, TYRP1, DEF8, MYEF2, CTXN2, CEP152',pattern = ", "),
                     mart = ensembl)
#hair shape
hair_shape <- getBM(attributes=c('ensembl_gene_id',
                                  #'ensembl_transcript_id',
                                  'hgnc_symbol',
                                  'chromosome_name','start_position','end_position'),
                     filters = 'hgnc_symbol',
                     values = stringr::str_split_1('EDA2R, EBF1, HDAC9, TARDBP',pattern = ", "),
                     mart = ensembl)
#Body height
body_height <- getBM(attributes=c('ensembl_gene_id',
                                  #'ensembl_transcript_id',
                                  'hgnc_symbol',
                                  'chromosome_name','start_position','end_position'),
                     filters = 'hgnc_symbol',
                     values = stringr::str_split_1('ACAN, DNM3, IHH, FBXW11, EFEMP1, GHSR, GPR126, HHIP, HMGAI, LCORL, MICA, NOG, NPR3, PML, PPIF, SDR16C5, SOCS2',pattern = ", "),
                     mart = ensembl)
#Facil features
facial_feat <- getBM(attributes=c('ensembl_gene_id',
                                  #'ensembl_transcript_id',
                                  'hgnc_symbol',
                                  'chromosome_name','start_position','end_position'),
                     filters = 'hgnc_symbol',
                     values = stringr::str_split_1('DCHS2, PDE8A, SCHIP, ASPM, DLX6, DYNC1L1, EDAR, HOXD1-MTX2, WDR27, PAX3, TP63, PABP1-C1L2A, HADC8,
THEM163, COL17A1, PARK2, OSR1-WDR35, PAX9, SLC25A2, MIPOL1, FOXA1, MAFB, TRPC6, TBX15, RPS12, EYA4,
FREM1, HOXD cluster, PKDCC, C5orf50, EPHB3, DVL3, ZNF219, CHD8, SLC35D1, FGFR1, LRP6, SOX9, CASC17,
KCTD15, PRDM16, DHX35, PAX1, RUNX2, GSTM2, GNAI3, ALX3, SUPT3H, GL13, RAB7A, ACAD9, MBTPS1, PCDH15',pattern = ", "),
                     mart = ensembl)
