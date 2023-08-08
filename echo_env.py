import sys
import os

# e.g. c:\Users\dogbert\Anaconda3\envs\myenvironment
# C:\Users\hjooya\AppData\Local\Continuum\anaconda3\envs\p4env
print( sys.exec_prefix.split(os.sep)[-1] )

