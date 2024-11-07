--- trimesh/interfaces/blender.py.orig	2024-11-07 07:29:44 UTC
+++ trimesh/interfaces/blender.py
@@ -48,7 +48,7 @@ def boolean(meshes, operation='difference', debug=Fals
         operation = 'INTERSECT'
 
     # get the template from our resources folder
-    template = resources.get('templates/blender_boolean.py')
+    template = resources.get('templates/blender_boolean.py.tmpl')
     script = template.replace('$OPERATION', operation)
 
     with MeshScript(meshes=meshes,
