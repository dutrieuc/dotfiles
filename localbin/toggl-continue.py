#!/usr/bin/env python 
import sys
from toggl import api, exceptions, utils, __version__

entry = api.TimeEntry.objects.get(sys.argv[1])
entry.continue_and_save()
