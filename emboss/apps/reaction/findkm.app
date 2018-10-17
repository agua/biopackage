{
   "owner" : "agua",
   "location" : "bin/findkm",
   "executor" : "",
   "installdir" : "/aguadev/apps/emboss",
   "version" : "6.4.0.0",
   "name" : "findkm",
   "localonly" : "0",
   "description" : "Calculate and plot enzyme reaction data",
   "package" : "emboss",
   "parameters" : [
      {
         "locked" : null,
         "value" : "$EMBOSS_GRAPHICS value, or x11",
         "args" : "",
         "chained" : 0,
         "description" : "Graph type (ps, hpgl, hp7470, hp7580, meta, cps, x11, tek, tekt, none, data, xterm, svg)",
         "discretion" : "required",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-graphlb",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "ps|hpgl|hp7470|hp7580|meta|cps|x11|tek|tekt|none|data|xterm|svg",
         "category" : "outgraph",
         "param" : "graphlb",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "",
         "args" : "",
         "chained" : 0,
         "description" : "Enzyme kinetics data (application-specific) file",
         "discretion" : "required",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-infile",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "file",
         "category" : "infile",
         "param" : "infile",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "Y",
         "args" : "",
         "chained" : 0,
         "description" : "S/V vs S",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-noplot",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "noplot",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "*.findkm",
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
      }
   ],
   "linkurl" : "http://emboss.sourceforge.net/apps/release/6.4/emboss/apps/findkm.html",
   "ordinal" : 0,
   "notes" : "",
   "url" : "http://www.ebi.ac.uk/Tools/emboss",
   "type" : "reaction"
}
