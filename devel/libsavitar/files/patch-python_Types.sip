--- python/Types.sip.orig	2021-09-04 16:01:36 UTC
+++ python/Types.sip
@@ -449,7 +449,7 @@ template<TYPE>
             MetadataEntry* value = new MetadataEntry((*i).second);
 
             PyObject *key_object = sipConvertFromNewType(key, sipType_std_string, sipTransferObj);
-            PyObject *value_object = sipConvertFromInstance(value, sipClass_MetadataEntry, sipTransferObj);
+            PyObject *value_object = sipConvertFromType(value, sipType_MetadataEntry, sipTransferObj);
 
             if (key_object == NULL || value_object == NULL || PyDict_SetItem(result_dict, key_object, value_object) < 0)
             {
@@ -504,7 +504,7 @@ template<TYPE>
                     return 0;
                 }
 
-                if (!sipCanConvertToInstance(value_object, sipClass_MetadataEntry, SIP_NOT_NONE))
+                if (!sipCanConvertToType(value_object, sipType_MetadataEntry, SIP_NOT_NONE))
                 {
                     return 0;
                 }
@@ -520,12 +520,12 @@ template<TYPE>
             int key_state, value_state;
 
             std::string *key = reinterpret_cast<std::string *>(sipConvertToType(key_object, sipType_std_string, sipTransferObj, SIP_NOT_NONE, &key_state, sipIsErr));
-            MetadataEntry *value = reinterpret_cast<MetadataEntry*>(sipConvertToInstance(value_object, sipClass_MetadataEntry, 0, SIP_NOT_NONE, &value_state, sipIsErr));
+            MetadataEntry *value = reinterpret_cast<MetadataEntry*>(sipConvertToType(value_object, sipType_MetadataEntry, 0, SIP_NOT_NONE, &value_state, sipIsErr));
 
             if (*sipIsErr)
             {
                 sipReleaseType(key, sipType_std_string, key_state);
-                sipReleaseInstance(value, sipClass_MetadataEntry, value_state);
+                sipReleaseType(value, sipType_MetadataEntry, value_state);
 
                 delete std_map;
                 return 0;
