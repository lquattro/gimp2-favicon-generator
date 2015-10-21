#! /usr/bin/env python
from gimpfu import *

def echo(*args):
  # Print message Hello world and parameters.
  pdb.gimp_message("Hello World")
  pdb.gimp_message(args)

register(
  # Function Name
  "python-fu-favicon-generator", 
  # Description
  "Auto Scale and Save favicon.",
  # Author
  "lquattro",
  # Copyrith Notice
  "Apache License Version 2.0, January 2004 http://www.apache.org/licenses/",
  # Date created
  "October 2015",
  # Image type that the script works on
  "",
  # Menu Label and localisation
  "<Toolbox>/Xtns/Languages/Python-Fu/Greffon/Favicon-Generator",
  # Image type that the script works on
  "",
  [
  (PF_STRING, "arg0", "argument 0", "test string"),
  (PF_INT,    "arg1", "argument 1", 100          ),
  (PF_FLOAT,  "arg2", "argument 2", 1.2          ),
  (PF_COLOR,  "arg3", "argument 3", (0, 0, 0)    ),
  ],
  [],
  echo
  )

main()