{
   "owner" : "agua",
   "location" : "bin/union",
   "executor" : "",
   "installdir" : "/aguadev/apps/emboss",
   "version" : "6.4.0.0",
   "name" : "union",
   "localonly" : "0",
   "description" : "Concatenate multiple sequences into a single sequence",
   "package" : "emboss",
   "parameters" : [
      {
         "locked" : null,
         "value" : "N",
         "args" : "",
         "chained" : 0,
         "description" : "Use feature information",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-feature",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "feature",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "N",
         "args" : "",
         "chained" : 0,
         "description" : "Look for overlaps when joining",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-findoverlap",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "findoverlap",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "<sequence>.<format>",
         "args" : "",
         "chained" : 0,
         "description" : "Sequence filename and optional format (output USA)",
         "discretion" : "required",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-outseq",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "string",
         "category" : "seqout",
         "param" : "outseq",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "*.union",
         "args" : "",
         "chained" : 0,
         "description" : "Sequence overlaps output file (optional)",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-overlapfile",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "file",
         "category" : "outfile",
         "param" : "overlapfile",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "",
         "args" : "",
         "chained" : 0,
         "description" : "(Gapped) sequence(s) filename and optional format, or reference (input USA)",
         "discretion" : "required",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-sequence",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "string",
         "category" : "seqall",
         "param" : "sequence",
         "paramFunction" : ""
      },
      {
         "locked" : null,
         "value" : "N",
         "args" : "",
         "chained" : 0,
         "description" : "Create source features",
         "discretion" : "optional",
         "inputParams" : "",
         "ordinal" : 0,
         "argument" : "-source",
         "format" : "",
         "paramtype" : "input",
         "valuetype" : "boolean",
         "category" : "boolean",
         "param" : "source",
         "paramFunction" : ""
      }
   ],
   "linkurl" : "http://emboss.sourceforge.net/apps/release/6.4/emboss/apps/union.html",
   "ordinal" : 0,
   "notes" : "",
   "url" : "http://www.ebi.ac.uk/Tools/emboss",
   "type" : "transform"
}

