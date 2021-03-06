{
   "owner" : "agua",
   "location" : "bin/sixpack",
   "executor" : "",
   "installdir" : "/aguadev/apps/emboss",
   "version" : "6.4.0.0",
   "name" : "sixpack",
   "localonly" : "0",
   "description" : "Display a DNA sequence with 6-frame translation and ORFs",
   "package" : "emboss",
   "parameters" : [
      {
         "locked" : null,
         "value" : "(full sequence)",
         "args" : "",
         "chained" : 0,
         "description" : "Regions to colour if formatting for HTML. If this is left blank, then the sequence is left alone. A set of regions is specified by a set of pairs of positions. The positions are integers. They are followed by any valid HTML font colour. Examples of region specifications are: 24-45 blue 56-78 orange 1-100 green 120-156 red A file of ranges to colour (one range per line) can be specified as '@filename'.",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-highlight",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "string",
         "category" : "range",
         "param" : "highlight",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "N",
         "args" : "",
         "chained" : 0,
         "description" : "Use HTML formatting",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-html",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "html",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "0",
         "args" : "",
         "chained" : 0,
         "description" : "Line length of page (0 for indefinite) (Integer 0 or more)",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-length",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "integer",
         "category" : "integer",
         "param" : "length",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "10",
         "args" : "",
         "chained" : 0,
         "description" : "Margin around sequence for numbering. (Integer 0 or more)",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-margin",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "integer",
         "category" : "integer",
         "param" : "margin",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "N",
         "args" : "",
         "chained" : 0,
         "description" : "Displays only ORFs starting with an M.",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-mstart",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "mstart",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "Y",
         "args" : "",
         "chained" : 0,
         "description" : "Set this to be false if you do not wish to display the description of the sequence.",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-nodescription",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "nodescription",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "Y",
         "args" : "",
         "chained" : 0,
         "description" : "Count the beginning of a sequence as a possible ORF, even if it's inferior to the minimal ORF size.",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-nofirstorf",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "nofirstorf",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "Y",
         "args" : "",
         "chained" : 0,
         "description" : "Count the end of a sequence as a possible ORF, even if it's not finishing with a STOP, or inferior to the minimal ORF size.",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-nolastorf",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "nolastorf",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "Y",
         "args" : "",
         "chained" : 0,
         "description" : "Set this to be false if you do not wish to display the ID name of the sequence.",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-noname",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "noname",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "Y",
         "args" : "",
         "chained" : 0,
         "description" : "Number the sequence at the beginning and the end of each line.",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-nonumber",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "nonumber",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "Y",
         "args" : "",
         "chained" : 0,
         "description" : "Display also the translation of the DNA sequence in the 3 reverse frames",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-noreverse",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "noreverse",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "1",
         "args" : "",
         "chained" : 0,
         "description" : "Number from which you want the DNA sequence to be numbered. (Any integer value)",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-offset",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "integer",
         "category" : "integer",
         "param" : "offset",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "1",
         "args" : "",
         "chained" : 0,
         "description" : "Minimum size of Open Reading Frames (ORFs) to display in the translations. (Integer 1 or more)",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-orfminsize",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "integer",
         "category" : "integer",
         "param" : "orfminsize",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "*.sixpack",
         "args" : "",
         "chained" : 0,
         "description" : "Output file name",
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
      },
      {
         "locked" : null,
         "value" : "<sequence>.<format>",
         "args" : "",
         "chained" : 0,
         "description" : "ORF sequence output",
         "discretion" : "required",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-outseq",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "file",
         "category" : "outfile",
         "param" : "outseq",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "",
         "args" : "",
         "chained" : 0,
         "description" : "Nucleotide sequence filename and optional format, or reference (input USA)",
         "discretion" : "required",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-sequence",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "string",
         "category" : "sequence",
         "param" : "sequence",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "0",
         "args" : "",
         "chained" : 0,
         "description" : "Genetics code used for the translation (Values: 0 (Standard); 1 (Standard (with alternative initiation codons)); 2 (Vertebrate Mitochondrial); 3 (Yeast Mitochondrial); 4 (Mold, Protozoan, Coelenterate Mitochondrial and Mycoplasma/Spiroplasma); 5 (Invertebrate Mitochondrial); 6 (Ciliate Macronuclear and Dasycladacean); 9 (Echinoderm Mitochondrial); 10 (Euplotid Nuclear); 11 (Bacterial); 12 (Alternative Yeast Nuclear); 13 (Ascidian Mitochondrial); 14 (Flatworm Mitochondrial); 15 (Blepharisma Macronuclear); 16 (Chlorophycean Mitochondrial); 21 (Trematode Mitochondrial); 22 (Scenedesmus obliquus); 23 (Thraustochytrium Mitochondrial))",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-table",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "string",
         "category" : "menu",
         "param" : "table",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "If this is left blank, then the sequence case is left alone.",
         "args" : "",
         "chained" : 0,
         "description" : "Regions to put in uppercase. If this is left blank, then the sequence case is left alone. A set of regions is specified by a set of pairs of positions. The positions are integers. They are separated by any non-digit, non-alpha character. Examples of region specifications are: 24-45, 56-78 1:45, 67=99;765..888 1,5,8,10,23,45,57,99",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-uppercase",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "string",
         "category" : "range",
         "param" : "uppercase",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "60",
         "args" : "",
         "chained" : 0,
         "description" : "Number of nucleotides displayed on each line (Integer 1 or more)",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-width",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "integer",
         "category" : "integer",
         "param" : "width",
         "paramFunction" : ""
      }
   ],
   "linkurl" : "http://emboss.sourceforge.net/apps/release/6.4/emboss/apps/sixpack.html",
   "ordinal" : 0,
   "notes" : "",
   "url" : "http://www.ebi.ac.uk/Tools/emboss",
   "type" : "transform"
}

