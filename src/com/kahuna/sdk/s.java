package com.kahuna.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.kahuna.sdk.location.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class s
{
  protected static a a(Context paramContext, boolean paramBoolean)
  {
    Object localObject1 = null;
    JSONObject localJSONObject = null;
    for (;;)
    {
      SharedPreferences localSharedPreferences;
      ArrayList localArrayList1;
      ArrayList localArrayList2;
      String str;
      Object localObject3;
      JSONArray localJSONArray;
      int j;
      int i;
      Context localContext;
      try
      {
        localSharedPreferences = o(paramContext);
        localArrayList1 = new ArrayList();
        localArrayList2 = new ArrayList();
      }
      finally {}
      try
      {
        str = localSharedPreferences.getString("events", null);
        localObject3 = localArrayList1;
        if (w.a(str)) {
          continue;
        }
        localJSONArray = new JSONArray(str);
        j = localJSONArray.length();
        i = 0;
        paramContext = localJSONObject;
      }
      catch (Exception localException2)
      {
        paramContext = null;
        continue;
        i += 1;
        continue;
        Object localObject2 = paramContext;
        if (paramContext != null) {
          continue;
        }
        localObject2 = str;
      }
    }
    localObject1 = paramContext;
    localObject3 = localArrayList1;
    if (i < j)
    {
      localObject3 = paramContext;
      try
      {
        localJSONObject = localJSONArray.getJSONObject(i);
        localObject3 = paramContext;
        localObject1 = Event.a(localJSONObject, paramBoolean);
        if (localObject1 == null) {
          break label263;
        }
        localObject3 = paramContext;
        localArrayList1.add(localObject1);
      }
      catch (Exception localException1)
      {
        paramContext = (Context)localObject3;
      }
      localObject3 = localObject1;
      localArrayList2.add(localJSONObject.optString("event"));
      paramContext = (Context)localObject1;
      break label256;
      if (l.a) {
        Log.d("Kahuna", "Exception getting saved events: " + localException1);
      }
      localObject3 = new ArrayList();
      localSharedPreferences.edit().putString("events", null);
      localContext = paramContext;
    }
    else
    {
      paramContext = new a((List)localObject3, localContext, localArrayList2);
      return paramContext;
    }
  }
  
  protected static String a(Context paramContext)
  {
    return o(paramContext).getString("device_id", "");
  }
  
  /* Error */
  protected static Map<String, ? extends Object> a(Context paramContext, String paramString, Class<?> paramClass)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 116	java/util/HashMap
    //   6: dup
    //   7: invokespecial 117	java/util/HashMap:<init>	()V
    //   10: astore 7
    //   12: aload_0
    //   13: invokestatic 12	com/kahuna/sdk/s:o	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   16: astore 8
    //   18: aload 8
    //   20: aload_1
    //   21: aconst_null
    //   22: invokeinterface 26 3 0
    //   27: astore_0
    //   28: aload_0
    //   29: invokestatic 31	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
    //   32: ifne +250 -> 282
    //   35: new 33	org/json/JSONArray
    //   38: dup
    //   39: aload_0
    //   40: invokespecial 36	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   43: astore 9
    //   45: aload 9
    //   47: invokevirtual 40	org/json/JSONArray:length	()I
    //   50: istore 6
    //   52: iconst_0
    //   53: istore 5
    //   55: iload 5
    //   57: iload 6
    //   59: if_icmpge +223 -> 282
    //   62: aload 9
    //   64: iload 5
    //   66: invokevirtual 44	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   69: astore 10
    //   71: aload 10
    //   73: invokevirtual 121	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   76: astore 11
    //   78: aload 11
    //   80: invokeinterface 127 1 0
    //   85: ifeq +188 -> 273
    //   88: aload 11
    //   90: invokeinterface 131 1 0
    //   95: checkcast 133	java/lang/String
    //   98: astore 12
    //   100: aconst_null
    //   101: astore_0
    //   102: aload_2
    //   103: ldc -123
    //   105: if_acmpne +86 -> 191
    //   108: aload 10
    //   110: aload 12
    //   112: aconst_null
    //   113: invokevirtual 135	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   116: astore_0
    //   117: aload 7
    //   119: aload 12
    //   121: aload_0
    //   122: invokeinterface 141 3 0
    //   127: pop
    //   128: goto -50 -> 78
    //   131: astore_0
    //   132: getstatic 68	com/kahuna/sdk/l:a	Z
    //   135: ifeq +28 -> 163
    //   138: ldc 70
    //   140: new 72	java/lang/StringBuilder
    //   143: dup
    //   144: invokespecial 73	java/lang/StringBuilder:<init>	()V
    //   147: ldc -113
    //   149: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: aload_0
    //   153: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   156: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   159: invokestatic 92	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   162: pop
    //   163: new 116	java/util/HashMap
    //   166: dup
    //   167: invokespecial 117	java/util/HashMap:<init>	()V
    //   170: astore_0
    //   171: aload 8
    //   173: invokeinterface 96 1 0
    //   178: aload_1
    //   179: aconst_null
    //   180: invokeinterface 102 3 0
    //   185: pop
    //   186: ldc 2
    //   188: monitorexit
    //   189: aload_0
    //   190: areturn
    //   191: aload_2
    //   192: ldc -111
    //   194: if_acmpne +17 -> 211
    //   197: aload 10
    //   199: aload 12
    //   201: invokevirtual 149	org/json/JSONObject:optLong	(Ljava/lang/String;)J
    //   204: invokestatic 153	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   207: astore_0
    //   208: goto -91 -> 117
    //   211: aload_2
    //   212: ldc -101
    //   214: if_acmpne +17 -> 231
    //   217: aload 10
    //   219: aload 12
    //   221: invokevirtual 159	org/json/JSONObject:optInt	(Ljava/lang/String;)I
    //   224: invokestatic 162	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   227: astore_0
    //   228: goto -111 -> 117
    //   231: aload_2
    //   232: ldc -92
    //   234: if_acmpne +17 -> 251
    //   237: aload 10
    //   239: aload 12
    //   241: invokevirtual 167	org/json/JSONObject:optBoolean	(Ljava/lang/String;)Z
    //   244: invokestatic 170	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   247: astore_0
    //   248: goto -131 -> 117
    //   251: aload_2
    //   252: ldc -84
    //   254: if_acmpne -137 -> 117
    //   257: aload 10
    //   259: aload 12
    //   261: invokevirtual 176	org/json/JSONObject:optDouble	(Ljava/lang/String;)D
    //   264: dstore_3
    //   265: dload_3
    //   266: invokestatic 179	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   269: astore_0
    //   270: goto -153 -> 117
    //   273: iload 5
    //   275: iconst_1
    //   276: iadd
    //   277: istore 5
    //   279: goto -224 -> 55
    //   282: aload 7
    //   284: astore_0
    //   285: goto -99 -> 186
    //   288: astore_0
    //   289: ldc 2
    //   291: monitorexit
    //   292: aload_0
    //   293: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	294	0	paramContext	Context
    //   0	294	1	paramString	String
    //   0	294	2	paramClass	Class<?>
    //   264	2	3	d	double
    //   53	225	5	i	int
    //   50	10	6	j	int
    //   10	273	7	localHashMap	HashMap
    //   16	156	8	localSharedPreferences	SharedPreferences
    //   43	20	9	localJSONArray	JSONArray
    //   69	189	10	localJSONObject	JSONObject
    //   76	13	11	localIterator	Iterator
    //   98	162	12	str	String
    // Exception table:
    //   from	to	target	type
    //   18	52	131	java/lang/Exception
    //   62	78	131	java/lang/Exception
    //   78	100	131	java/lang/Exception
    //   108	117	131	java/lang/Exception
    //   117	128	131	java/lang/Exception
    //   197	208	131	java/lang/Exception
    //   217	228	131	java/lang/Exception
    //   237	248	131	java/lang/Exception
    //   257	265	131	java/lang/Exception
    //   3	18	288	finally
    //   18	52	288	finally
    //   62	78	288	finally
    //   78	100	288	finally
    //   108	117	288	finally
    //   117	128	288	finally
    //   132	163	288	finally
    //   163	186	288	finally
    //   197	208	288	finally
    //   217	228	288	finally
    //   237	248	288	finally
    //   257	265	288	finally
  }
  
  public static Map<String, Long> a(l paraml, Context paramContext)
  {
    if (paraml != null) {}
    try
    {
      if (!(paraml instanceof l))
      {
        Log.e("Kahuna", "You cannot request to get any data from Kahuna preferences externally from the Kahuna SDK. Aborting!");
        paraml = new HashMap();
      }
      for (;;)
      {
        return paraml;
        paraml = new HashMap();
        paramContext = o(paramContext);
        try
        {
          Object localObject = paramContext.getString("geofencing_regions", null);
          if (!w.a((String)localObject))
          {
            localObject = new JSONObject((String)localObject);
            Iterator localIterator = ((JSONObject)localObject).keys();
            while (localIterator.hasNext())
            {
              String str = (String)localIterator.next();
              paraml.put(str, Long.valueOf(((JSONObject)localObject).getLong(str)));
            }
          }
        }
        catch (Exception paraml)
        {
          if (l.a) {
            Log.d("Kahuna", "Exception getting saved region Ids: " + paraml);
          }
          paraml = new HashMap();
          paramContext.edit().putString("geofencing_regions", null);
        }
      }
    }
    finally {}
  }
  
  protected static void a(long paramLong, Context paramContext)
  {
    o(paramContext).edit().putLong("last_flush_timestamp", paramLong).commit();
  }
  
  protected static void a(Context paramContext, JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    do
    {
      return;
      paramContext = o(paramContext);
      try
      {
        paramContext.edit().putString("sdk_configuration", paramJSONObject.toString()).commit();
        return;
      }
      catch (Exception paramContext) {}
    } while (!l.a);
    Log.d("Kahuna", "Exception saving SDK configuration: " + paramContext);
  }
  
  /* Error */
  public static void a(l paraml, Context paramContext, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull +10 -> 14
    //   7: aload_0
    //   8: instanceof 65
    //   11: ifne +15 -> 26
    //   14: ldc 70
    //   16: ldc -41
    //   18: invokestatic 187	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   21: pop
    //   22: ldc 2
    //   24: monitorexit
    //   25: return
    //   26: aload_1
    //   27: invokestatic 12	com/kahuna/sdk/s:o	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   30: invokeinterface 96 1 0
    //   35: ldc -39
    //   37: aload_2
    //   38: invokeinterface 102 3 0
    //   43: invokeinterface 206 1 0
    //   48: pop
    //   49: goto -27 -> 22
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	paraml	l
    //   0	58	1	paramContext	Context
    //   0	58	2	paramString	String
    // Exception table:
    //   from	to	target	type
    //   7	14	52	finally
    //   14	22	52	finally
    //   26	49	52	finally
  }
  
  /* Error */
  public static void a(l paraml, Context paramContext, JSONArray paramJSONArray)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull +10 -> 14
    //   7: aload_0
    //   8: instanceof 65
    //   11: ifne +15 -> 26
    //   14: ldc 70
    //   16: ldc -41
    //   18: invokestatic 187	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   21: pop
    //   22: ldc 2
    //   24: monitorexit
    //   25: return
    //   26: aload_1
    //   27: invokestatic 12	com/kahuna/sdk/s:o	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   30: astore_0
    //   31: aload_0
    //   32: invokeinterface 96 1 0
    //   37: ldc -36
    //   39: aload_2
    //   40: invokevirtual 221	org/json/JSONArray:toString	()Ljava/lang/String;
    //   43: invokeinterface 102 3 0
    //   48: invokeinterface 206 1 0
    //   53: pop
    //   54: goto -32 -> 22
    //   57: astore_0
    //   58: getstatic 68	com/kahuna/sdk/l:a	Z
    //   61: ifeq -39 -> 22
    //   64: ldc 70
    //   66: new 72	java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial 73	java/lang/StringBuilder:<init>	()V
    //   73: ldc -33
    //   75: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: aload_0
    //   79: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: invokestatic 92	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   88: pop
    //   89: goto -67 -> 22
    //   92: astore_0
    //   93: ldc 2
    //   95: monitorexit
    //   96: aload_0
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	paraml	l
    //   0	98	1	paramContext	Context
    //   0	98	2	paramJSONArray	JSONArray
    // Exception table:
    //   from	to	target	type
    //   31	54	57	java/lang/Exception
    //   7	14	92	finally
    //   14	22	92	finally
    //   26	31	92	finally
    //   31	54	92	finally
    //   58	89	92	finally
  }
  
  public static void a(l paraml, List<d> paramList, Context paramContext)
  {
    if (paraml != null) {}
    for (;;)
    {
      try
      {
        if (!(paraml instanceof l))
        {
          Log.e("Kahuna", "You cannot request to save any data to Kahuna preferences externally from the Kahuna SDK. Aborting!");
          return;
        }
        paraml = o(paramContext);
        if (paramList == null)
        {
          paraml.edit().putString("geofencing_objects_list", null).commit();
          continue;
        }
        try
        {
          paramContext = new JSONArray();
          paramList = paramList.iterator();
          while (paramList.hasNext()) {
            paramContext.put(((d)paramList.next()).g());
          }
          if (!l.a) {
            continue;
          }
        }
        catch (Exception paraml) {}
      }
      finally {}
      Log.d("Kahuna", "Exception saving geofences: " + paraml);
      continue;
      paraml.edit().putString("geofencing_objects_list", paramContext.toString()).commit();
    }
  }
  
  public static void a(l paraml, Map<String, Long> paramMap, Context paramContext)
  {
    if (paraml != null) {}
    for (;;)
    {
      try
      {
        if (!(paraml instanceof l))
        {
          Log.e("Kahuna", "You cannot request to save any data to Kahuna preferences externally from the Kahuna SDK. Aborting!");
          return;
        }
        paraml = o(paramContext);
        if (paramMap == null)
        {
          paraml.edit().putString("geofencing_regions", null).commit();
          continue;
        }
        try
        {
          paramContext = new JSONObject();
          Iterator localIterator = paramMap.keySet().iterator();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            paramContext.put(str, paramMap.get(str));
          }
          if (!l.a) {
            continue;
          }
        }
        catch (Exception paraml) {}
      }
      finally {}
      Log.d("Kahuna", "Exception saving region Ids: " + paraml);
      continue;
      paraml.edit().putString("geofencing_regions", paramContext.toString()).commit();
    }
  }
  
  protected static void a(String paramString, Context paramContext)
  {
    o(paramContext).edit().putString("device_id", paramString).commit();
  }
  
  protected static void a(List<Event> paramList, Context paramContext)
  {
    for (;;)
    {
      int i;
      try
      {
        paramContext = o(paramContext);
        if (paramList == null)
        {
          paramContext.edit().putString("events", null).commit();
          return;
        }
        JSONArray localJSONArray;
        int k;
        try
        {
          localJSONArray = new JSONArray();
          k = paramList.size();
          int j = k - l.b;
          i = j;
          if (j >= 0) {
            break label177;
          }
          i = 0;
        }
        catch (Exception paramList) {}
        if (i < k)
        {
          JSONObject localJSONObject = ((Event)paramList.get(i)).l();
          if (localJSONObject != null) {
            localJSONArray.put(localJSONObject);
          }
        }
        else
        {
          paramContext.edit().putString("events", localJSONArray.toString()).commit();
          continue;
          if (!l.a) {
            continue;
          }
          Log.d("Kahuna", "Exception saving events: " + paramList);
          continue;
          continue;
        }
      }
      finally {}
      label177:
      i += 1;
    }
  }
  
  protected static void a(Map<String, String> paramMap, Context paramContext)
  {
    a(paramMap, paramContext, "user_credentials");
  }
  
  private static void a(Map<String, ? extends Object> paramMap, Context paramContext, String paramString)
  {
    for (;;)
    {
      JSONObject localJSONObject;
      String str;
      Object localObject;
      try
      {
        paramContext = o(paramContext);
        if (paramMap == null)
        {
          paramContext.edit().putString(paramString, null).commit();
          return;
        }
        try
        {
          localJSONObject = new JSONObject();
          Iterator localIterator = paramMap.keySet().iterator();
          if (!localIterator.hasNext()) {
            break label232;
          }
          str = (String)localIterator.next();
          localObject = paramMap.get(str);
          if (((localObject instanceof String)) && (w.a((String)localObject)))
          {
            if (!l.a) {
              continue;
            }
            Log.d("Kahuna", "Ignoring attempt to save null or empty string value in internal hashmap");
            continue;
          }
        }
        catch (Exception paramMap)
        {
          if (l.a) {
            Log.d("Kahuna", "Exception saving user map: " + paramMap);
          }
          paramContext.edit().putString(paramString, null).commit();
        }
        if ((localObject instanceof JSONArray)) {
          break label202;
        }
      }
      finally {}
      if ((localObject instanceof JSONObject))
      {
        label202:
        if (l.a) {
          Log.d("Kahuna", "Ignoring attempt to save JSON Objects in internal hashmap");
        }
      }
      else
      {
        localJSONObject.put(str, localObject);
        continue;
        label232:
        paramContext.edit().putString(paramString, localJSONObject.toString()).commit();
      }
    }
  }
  
  protected static void a(Set<String> paramSet, Context paramContext)
  {
    label120:
    for (;;)
    {
      try
      {
        paramContext = o(paramContext);
        if (paramSet == null)
        {
          paramContext.edit().putString("dirty_user_attributes", null).commit();
          return;
        }
        JSONArray localJSONArray;
        try
        {
          localJSONArray = new JSONArray();
          paramSet = paramSet.iterator();
          if (!paramSet.hasNext()) {
            break label120;
          }
          localJSONArray.put((String)paramSet.next());
          continue;
          if (!l.a) {
            continue;
          }
        }
        catch (Exception paramSet) {}
        Log.d("Kahuna", "Exception saving dirty user attributes: " + paramSet);
        continue;
        paramContext.edit().putString("dirty_user_attributes", localJSONArray.toString()).commit();
      }
      finally {}
    }
  }
  
  protected static void a(JSONObject paramJSONObject, Context paramContext)
  {
    if (paramJSONObject != null) {}
    try
    {
      o(paramContext).edit().putString("debug_manager_storage_object", paramJSONObject.toString()).commit();
      return;
    }
    finally
    {
      paramJSONObject = finally;
      throw paramJSONObject;
    }
  }
  
  protected static void a(boolean paramBoolean, Context paramContext)
  {
    o(paramContext).edit().putBoolean("push_enabled", paramBoolean).commit();
  }
  
  /* Error */
  public static List<d> b(l paraml, Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: ifnull +10 -> 14
    //   7: aload_0
    //   8: instanceof 65
    //   11: ifne +24 -> 35
    //   14: ldc 70
    //   16: ldc -72
    //   18: invokestatic 187	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   21: pop
    //   22: new 14	java/util/ArrayList
    //   25: dup
    //   26: invokespecial 18	java/util/ArrayList:<init>	()V
    //   29: astore_0
    //   30: ldc 2
    //   32: monitorexit
    //   33: aload_0
    //   34: areturn
    //   35: new 14	java/util/ArrayList
    //   38: dup
    //   39: invokespecial 18	java/util/ArrayList:<init>	()V
    //   42: astore_3
    //   43: aload_1
    //   44: invokestatic 12	com/kahuna/sdk/s:o	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   47: astore_1
    //   48: aload_1
    //   49: ldc -30
    //   51: aconst_null
    //   52: invokeinterface 26 3 0
    //   57: astore 4
    //   59: aload_3
    //   60: astore_0
    //   61: aload 4
    //   63: invokestatic 31	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
    //   66: ifne -36 -> 30
    //   69: new 33	org/json/JSONArray
    //   72: dup
    //   73: aload 4
    //   75: invokespecial 36	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   78: astore 4
    //   80: iconst_0
    //   81: istore_2
    //   82: aload_3
    //   83: astore_0
    //   84: iload_2
    //   85: aload 4
    //   87: invokevirtual 40	org/json/JSONArray:length	()I
    //   90: if_icmpge -60 -> 30
    //   93: aload 4
    //   95: iload_2
    //   96: invokevirtual 44	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   99: invokestatic 313	com/kahuna/sdk/location/d:a	(Lorg/json/JSONObject;)Lcom/kahuna/sdk/location/d;
    //   102: astore_0
    //   103: aload_0
    //   104: ifnull +11 -> 115
    //   107: aload_3
    //   108: aload_0
    //   109: invokeinterface 55 2 0
    //   114: pop
    //   115: iload_2
    //   116: iconst_1
    //   117: iadd
    //   118: istore_2
    //   119: goto -37 -> 82
    //   122: astore_0
    //   123: getstatic 68	com/kahuna/sdk/l:a	Z
    //   126: ifeq +29 -> 155
    //   129: ldc 70
    //   131: new 72	java/lang/StringBuilder
    //   134: dup
    //   135: invokespecial 73	java/lang/StringBuilder:<init>	()V
    //   138: ldc_w 315
    //   141: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: aload_0
    //   145: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokestatic 92	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   154: pop
    //   155: new 14	java/util/ArrayList
    //   158: dup
    //   159: invokespecial 18	java/util/ArrayList:<init>	()V
    //   162: astore_0
    //   163: aload_1
    //   164: invokeinterface 96 1 0
    //   169: ldc -30
    //   171: aconst_null
    //   172: invokeinterface 102 3 0
    //   177: pop
    //   178: goto -148 -> 30
    //   181: astore_0
    //   182: ldc 2
    //   184: monitorexit
    //   185: aload_0
    //   186: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	187	0	paraml	l
    //   0	187	1	paramContext	Context
    //   81	38	2	i	int
    //   42	66	3	localArrayList	ArrayList
    //   57	37	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   48	59	122	java/lang/Exception
    //   61	80	122	java/lang/Exception
    //   84	103	122	java/lang/Exception
    //   107	115	122	java/lang/Exception
    //   7	14	181	finally
    //   14	30	181	finally
    //   35	48	181	finally
    //   48	59	181	finally
    //   61	80	181	finally
    //   84	103	181	finally
    //   107	115	181	finally
    //   123	155	181	finally
    //   155	178	181	finally
  }
  
  private static Map<String, ? extends Object> b(Context paramContext, String paramString, Class<?> paramClass)
  {
    for (;;)
    {
      try
      {
        HashMap localHashMap = new HashMap();
        SharedPreferences localSharedPreferences = o(paramContext);
        JSONObject localJSONObject;
        String str;
        try
        {
          paramContext = localSharedPreferences.getString(paramString, null);
          if (w.a(paramContext)) {
            continue;
          }
          localJSONObject = new JSONObject(paramContext);
          Iterator localIterator = localJSONObject.keys();
          if (!localIterator.hasNext()) {
            continue;
          }
          str = (String)localIterator.next();
          if (paramClass == String.class)
          {
            paramContext = localJSONObject.optString(str, null);
            localHashMap.put(str, paramContext);
            continue;
          }
          if (paramClass != Long.class) {
            continue;
          }
        }
        catch (Exception paramContext)
        {
          if (l.a) {
            Log.d("Kahuna", "Exception getting stored internal map: " + paramContext);
          }
          paramContext = new HashMap();
          localSharedPreferences.edit().putString(paramString, null);
          return paramContext;
        }
        paramContext = Long.valueOf(localJSONObject.optLong(str));
        continue;
        if (paramClass == Integer.class)
        {
          paramContext = Integer.valueOf(localJSONObject.optInt(str));
        }
        else if (paramClass == Boolean.class)
        {
          paramContext = Boolean.valueOf(localJSONObject.optBoolean(str));
        }
        else if (paramClass == Double.class)
        {
          double d = localJSONObject.optDouble(str);
          paramContext = Double.valueOf(d);
          continue;
          paramContext = localHashMap;
        }
        else
        {
          paramContext = null;
        }
      }
      finally {}
    }
  }
  
  protected static void b(long paramLong, Context paramContext)
  {
    try
    {
      o(paramContext).edit().putLong("event_number", paramLong).commit();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  protected static void b(String paramString, Context paramContext)
  {
    o(paramContext).edit().putString("prev_push_token", paramString).commit();
  }
  
  protected static void b(Map<String, Set<String>> paramMap, Context paramContext)
  {
    for (;;)
    {
      JSONObject localJSONObject;
      String str1;
      JSONArray localJSONArray;
      try
      {
        paramContext = o(paramContext);
        if (paramMap == null)
        {
          paramContext.edit().putString("user_credentials_v2", null).commit();
          return;
        }
        try
        {
          localJSONObject = new JSONObject();
          Iterator localIterator = paramMap.keySet().iterator();
          if (!localIterator.hasNext()) {
            break label240;
          }
          str1 = (String)localIterator.next();
          Object localObject = (Set)paramMap.get(str1);
          if (w.a((Set)localObject)) {
            continue;
          }
          localJSONArray = new JSONArray();
          localObject = ((Set)localObject).iterator();
          if (((Iterator)localObject).hasNext())
          {
            String str2 = (String)((Iterator)localObject).next();
            if (w.a(str2)) {
              continue;
            }
            localJSONArray.put(str2);
            continue;
          }
        }
        catch (Exception paramMap)
        {
          if (l.a) {
            Log.e("Kahuna", "Exception saving user credentials: " + paramMap);
          }
          paramContext.edit().putString("user_credentials_v2", null).commit();
        }
        if (localJSONArray.length() <= 0) {
          continue;
        }
      }
      finally {}
      localJSONObject.put(str1, localJSONArray);
      continue;
      label240:
      if (l.a) {
        Log.d("Kahuna", "Saving User Credentials: " + localJSONObject);
      }
      paramContext.edit().putString("user_credentials_v2", localJSONObject.toString()).commit();
    }
  }
  
  protected static boolean b(Context paramContext)
  {
    return o(paramContext).getBoolean("push_enabled", true);
  }
  
  protected static String c(Context paramContext)
  {
    return o(paramContext).getString("prev_push_token", "");
  }
  
  /* Error */
  public static String c(l paraml, Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 2
    //   4: monitorenter
    //   5: aload_0
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: instanceof 65
    //   13: ifne +18 -> 31
    //   16: ldc 70
    //   18: ldc -72
    //   20: invokestatic 187	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   23: pop
    //   24: aload_2
    //   25: astore_0
    //   26: ldc 2
    //   28: monitorexit
    //   29: aload_0
    //   30: areturn
    //   31: aload_1
    //   32: invokestatic 12	com/kahuna/sdk/s:o	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   35: ldc -39
    //   37: aconst_null
    //   38: invokeinterface 26 3 0
    //   43: astore_0
    //   44: goto -18 -> 26
    //   47: astore_0
    //   48: ldc 2
    //   50: monitorexit
    //   51: aload_0
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	paraml	l
    //   0	53	1	paramContext	Context
    //   1	24	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	16	47	finally
    //   16	24	47	finally
    //   31	44	47	finally
  }
  
  protected static void c(String paramString, Context paramContext)
  {
    o(paramContext).edit().putString("invalid_push_token", paramString).commit();
  }
  
  protected static void c(Map<String, String> paramMap, Context paramContext)
  {
    a(paramMap, paramContext, "user_attributes");
  }
  
  protected static String d(Context paramContext)
  {
    return o(paramContext).getString("invalid_push_token", "");
  }
  
  protected static void d(String paramString, Context paramContext)
  {
    o(paramContext).edit().putString("prev_sdk_version", paramString).commit();
  }
  
  protected static void d(Map<String, Long> paramMap, Context paramContext)
  {
    try
    {
      a(paramMap, paramContext, "received_push_message_ids");
      return;
    }
    finally
    {
      paramMap = finally;
      throw paramMap;
    }
  }
  
  protected static Map<String, String> e(Context paramContext)
  {
    return b(paramContext, "user_credentials", String.class);
  }
  
  protected static Map<String, Set<String>> f(Context paramContext)
  {
    label225:
    for (;;)
    {
      try
      {
        HashMap localHashMap = new HashMap();
        SharedPreferences localSharedPreferences = o(paramContext);
        int i;
        try
        {
          paramContext = localSharedPreferences.getString("user_credentials_v2", null);
          if (!w.a(paramContext))
          {
            paramContext = new JSONObject(paramContext);
            Iterator localIterator = paramContext.keys();
            if (localIterator.hasNext())
            {
              HashSet localHashSet = new HashSet();
              String str1 = (String)localIterator.next();
              JSONArray localJSONArray = paramContext.optJSONArray(str1);
              if (localJSONArray == null) {
                continue;
              }
              int j = localJSONArray.length();
              i = 0;
              if (i < j)
              {
                String str2 = localJSONArray.optString(i);
                if (w.a(str2)) {
                  break label225;
                }
                localHashSet.add(str2);
                break label225;
              }
              localHashMap.put(str1, localHashSet);
              continue;
            }
          }
          paramContext = localHashMap;
        }
        catch (Exception paramContext)
        {
          if (l.a) {
            Log.d("Kahuna", "Exception getting stored user credentials map: " + paramContext);
          }
          paramContext = new HashMap();
          localSharedPreferences.edit().putString("user_credentials_v2", null);
          return paramContext;
        }
        continue;
        i += 1;
      }
      finally {}
    }
  }
  
  protected static Map<String, String> g(Context paramContext)
  {
    return b(paramContext, "user_attributes", String.class);
  }
  
  /* Error */
  protected static Set<String> h(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 353	java/util/HashSet
    //   6: dup
    //   7: invokespecial 354	java/util/HashSet:<init>	()V
    //   10: astore_3
    //   11: aload_0
    //   12: invokestatic 12	com/kahuna/sdk/s:o	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   15: astore 4
    //   17: aload 4
    //   19: ldc_w 296
    //   22: aconst_null
    //   23: invokeinterface 26 3 0
    //   28: astore 5
    //   30: aload_3
    //   31: astore_0
    //   32: aload 5
    //   34: invokestatic 31	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
    //   37: ifne +107 -> 144
    //   40: new 33	org/json/JSONArray
    //   43: dup
    //   44: aload 5
    //   46: invokespecial 36	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   49: astore 5
    //   51: aload 5
    //   53: invokevirtual 40	org/json/JSONArray:length	()I
    //   56: istore_2
    //   57: iconst_0
    //   58: istore_1
    //   59: aload_3
    //   60: astore_0
    //   61: iload_1
    //   62: iload_2
    //   63: if_icmpge +81 -> 144
    //   66: aload_3
    //   67: aload 5
    //   69: iload_1
    //   70: invokevirtual 361	org/json/JSONArray:optString	(I)Ljava/lang/String;
    //   73: invokeinterface 362 2 0
    //   78: pop
    //   79: iload_1
    //   80: iconst_1
    //   81: iadd
    //   82: istore_1
    //   83: goto -24 -> 59
    //   86: astore_0
    //   87: getstatic 68	com/kahuna/sdk/l:a	Z
    //   90: ifeq +29 -> 119
    //   93: ldc 70
    //   95: new 72	java/lang/StringBuilder
    //   98: dup
    //   99: invokespecial 73	java/lang/StringBuilder:<init>	()V
    //   102: ldc_w 369
    //   105: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: aload_0
    //   109: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   112: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokestatic 92	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   118: pop
    //   119: new 353	java/util/HashSet
    //   122: dup
    //   123: invokespecial 354	java/util/HashSet:<init>	()V
    //   126: astore_0
    //   127: aload 4
    //   129: invokeinterface 96 1 0
    //   134: ldc_w 296
    //   137: aconst_null
    //   138: invokeinterface 102 3 0
    //   143: pop
    //   144: ldc 2
    //   146: monitorexit
    //   147: aload_0
    //   148: areturn
    //   149: astore_0
    //   150: ldc 2
    //   152: monitorexit
    //   153: aload_0
    //   154: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	paramContext	Context
    //   58	25	1	i	int
    //   56	8	2	j	int
    //   10	57	3	localHashSet	HashSet
    //   15	113	4	localSharedPreferences	SharedPreferences
    //   28	40	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   17	30	86	java/lang/Exception
    //   32	57	86	java/lang/Exception
    //   66	79	86	java/lang/Exception
    //   3	17	149	finally
    //   17	30	149	finally
    //   32	57	149	finally
    //   66	79	149	finally
    //   87	119	149	finally
    //   119	144	149	finally
  }
  
  protected static long i(Context paramContext)
  {
    return o(paramContext).getLong("last_flush_timestamp", 0L);
  }
  
  protected static JSONObject j(Context paramContext)
  {
    paramContext = o(paramContext);
    try
    {
      paramContext = paramContext.getString("sdk_configuration", null);
      if (!w.a(paramContext))
      {
        paramContext = new JSONObject(paramContext);
        Object localObject = paramContext;
        if (paramContext == null) {
          localObject = new JSONObject();
        }
        return (JSONObject)localObject;
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        if (l.a) {
          Log.d("Kahuna", "Exception getting SDK configuration: " + paramContext);
        }
        paramContext = null;
      }
    }
  }
  
  protected static String k(Context paramContext)
  {
    return o(paramContext).getString("prev_sdk_version", "0");
  }
  
  protected static Map<String, Long> l(Context paramContext)
  {
    try
    {
      paramContext = b(paramContext, "received_push_message_ids", Long.class);
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  /* Error */
  protected static JSONObject m(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 12	com/kahuna/sdk/s:o	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   7: astore_0
    //   8: new 59	org/json/JSONObject
    //   11: dup
    //   12: aload_0
    //   13: ldc_w 302
    //   16: ldc_w 386
    //   19: invokeinterface 26 3 0
    //   24: invokespecial 190	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   27: astore_0
    //   28: ldc 2
    //   30: monitorexit
    //   31: aload_0
    //   32: areturn
    //   33: astore_0
    //   34: getstatic 68	com/kahuna/sdk/l:a	Z
    //   37: ifeq +29 -> 66
    //   40: ldc 70
    //   42: new 72	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 73	java/lang/StringBuilder:<init>	()V
    //   49: ldc_w 388
    //   52: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: aload_0
    //   56: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   59: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokestatic 92	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   65: pop
    //   66: new 59	org/json/JSONObject
    //   69: dup
    //   70: invokespecial 244	org/json/JSONObject:<init>	()V
    //   73: astore_0
    //   74: goto -46 -> 28
    //   77: astore_0
    //   78: ldc 2
    //   80: monitorexit
    //   81: aload_0
    //   82: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	83	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   8	28	33	java/lang/Exception
    //   3	8	77	finally
    //   8	28	77	finally
    //   34	66	77	finally
    //   66	74	77	finally
  }
  
  protected static long n(Context paramContext)
  {
    try
    {
      long l = o(paramContext).getLong("event_number", 1L);
      return l;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  private static SharedPreferences o(Context paramContext)
  {
    return paramContext.getSharedPreferences("com.kahuna.sdk.android", 0);
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */