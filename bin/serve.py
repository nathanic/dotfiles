#!/usr/bin/env python
# dead simple http server for ./*

import sys
from BaseHTTPServer import HTTPServer
from SimpleHTTPServer import SimpleHTTPRequestHandler
from SocketServer import ThreadingMixIn

class ThreadingServer(ThreadingMixIn, HTTPServer):
    pass

if sys.argv[1:]:
    port = int(sys.argv[1])
else:
    port = 8000

srvr = ThreadingServer(('0.0.0.0', port), SimpleHTTPRequestHandler)
sa = srvr.socket.getsockname()
print "Serving HTTP on %s:%d" % sa
srvr.serve_forever()
