#!/usr/bin/python

import sys
import os

src_file  = sys.argv[1]
dest_path = sys.argv[2]

os.system ( 'sudo scp "%s" "%s"' % (src_file, dest_path) )
