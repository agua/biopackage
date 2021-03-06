{
   "owner" : "agua",
   "location" : "bin/matcher",
   "executor" : "",
   "installdir" : "/aguadev/apps/emboss",
   "version" : "6.4.0.0",
   "name" : "matcher",
   "localonly" : "0",
   "description" : "Waterman-Eggert local alignment of two sequences",
   "package" : "emboss",
   "parameters" : [
      {
         "locked" : null,
         "value" : "1",
         "args" : "",
         "chained" : 0,
         "description" : "This sets the number of alternative matches output. By default only the highest scoring alignment is shown. A value of 2 gives you other reasonable alignments. In some cases, for example multidomain proteins of cDNA and genomic DNA comparisons, there may be other interesting and significant alignments. (Integer 1 or more)",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-alternatives",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "integer",
         "category" : "integer",
         "param" : "alternatives",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "",
         "args" : "",
         "chained" : 0,
         "description" : "Sequence filename and optional format, or reference (input USA)",
         "discretion" : "required",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-asequence",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "string",
         "category" : "sequence",
         "param" : "asequence",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "",
         "args" : "",
         "chained" : 0,
         "description" : "Sequence filename and optional format, or reference (input USA)",
         "discretion" : "required",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-bsequence",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "string",
         "category" : "sequence",
         "param" : "bsequence",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "EBLOSUM62 for protein, EDNAFULL for DNA",
         "args" : "",
         "chained" : 0,
         "description" : "This is the scoring matrix file used when comparing sequences. By default it is the file 'EBLOSUM62' (for proteins) or the file 'EDNAFULL' (for nucleic sequences). These files are found in the 'data' directory of the EMBOSS installation.",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-datafile",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "string",
         "category" : "matrix",
         "param" : "datafile",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "4 for any sequence",
         "args" : "",
         "chained" : 0,
         "description" : "The gap length, or gap extension, penalty is added to the standard gap penalty for each base or residue in the gap. This is how long gaps are penalized. Usually you will expect a few long gaps rather than many short gaps, so the gap extension penalty should be lower than the gap penalty. An exception is where one or both sequences are single reads with possible sequencing errors in which case you would expect many single base gaps. You can get this result by setting the gap penalty to zero (or very low) and using the gap extension penalty to control gap scoring. (Positive integer)",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-gapextend",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "integer",
         "category" : "integer",
         "param" : "gapextend",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "14 for protein, 16 for nucleic",
         "args" : "",
         "chained" : 0,
         "description" : "The gap penalty is the score taken away when a gap is created. The best value depends on the choice of comparison matrix. The default value of 14 assumes you are using the EBLOSUM62 matrix for protein sequences, or a value of 16 and the EDNAFULL matrix for nucleotide sequences. (Positive integer)",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-gapopen",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "integer",
         "category" : "integer",
         "param" : "gapopen",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "*.matcher",
         "args" : "",
         "chained" : 0,
         "description" : "Output alignment file name (default -aformat markx0)",
         "discretion" : "required",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-outfile",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "file",
         "category" : "outfile",
         "param" : "outfile",
         "paramFunction" : ""
      }
   ],
   "linkurl" : "http://emboss.sourceforge.net/apps/release/6.4/emboss/apps/matcher.html",
   "ordinal" : 0,
   "notes" : "",
   "url" : "http://www.ebi.ac.uk/Tools/emboss",
   "type" : "alignment"
}

