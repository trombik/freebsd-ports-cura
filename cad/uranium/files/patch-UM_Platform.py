--- UM/Platform.py.orig	2024-11-08 00:12:00 UTC
+++ UM/Platform.py
@@ -2,6 +2,7 @@ import sys
 # Cura is released under the terms of the LGPLv3 or higher.
 
 import sys
+import re
 
 
 class Platform:
@@ -40,6 +41,8 @@ class Platform:
     __platform_type = PlatformType.Other
     if sys.platform == "win32":
         __platform_type = PlatformType.Windows
+    elif re.match(r"\w+bsd\d+", sys.platform):
+        __platform_type = PlatformType.Linux
     elif sys.platform == "linux":
         __platform_type = PlatformType.Linux
     elif sys.platform == "darwin":
