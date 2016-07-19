package com.kahuna.sdk;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class c
{
  private static c a = new c();
  private Object b = new Object();
  private HashMap<String, Long> c = new HashMap();
  private Object d = new Object();
  private HashMap<String, Event> e = new HashMap();
  
  protected static Event a(String arg0, long paramLong)
  {
    if (w.a(???)) {}
    Object localObject1;
    do
    {
      return null;
      localObject1 = a.b(???, paramLong);
    } while (localObject1 == null);
    synchronized (ad)
    {
      if (ae.containsKey(localObject1))
      {
        localObject1 = (Event)ae.get(localObject1);
        return (Event)localObject1;
      }
    }
    return null;
  }
  
  private Long a(Long paramLong)
  {
    Long localLong;
    if (paramLong.longValue() < 30L) {
      localLong = Long.valueOf(30L);
    }
    do
    {
      return localLong;
      localLong = paramLong;
    } while (paramLong.longValue() <= 15552000L);
    return Long.valueOf(15552000L);
  }
  
  protected static void a()
  {
    synchronized (ad)
    {
      ae.clear();
      return;
    }
  }
  
  protected static void a(Event paramEvent)
  {
    if ((paramEvent == null) || (w.a(paramEvent.a()))) {}
    String str;
    do
    {
      return;
      str = a.b(paramEvent.a(), paramEvent.b());
    } while (str == null);
    for (;;)
    {
      synchronized (ad)
      {
        if (!ae.containsKey(str))
        {
          ae.put(str, paramEvent);
          if (l.a) {
            Log.d("Kahuna", "Inserted new bucket mapping '" + str + "'");
          }
          return;
        }
      }
      if (l.a) {
        Log.d("Kahuna", "Attempted to insert bucket mapping that already exists '" + str + "', aborting.");
      }
    }
  }
  
  /* Error */
  protected static void a(java.util.List<Event> paramList)
  {
    // Byte code:
    //   0: getstatic 21	com/kahuna/sdk/c:a	Lcom/kahuna/sdk/c;
    //   3: getfield 32	com/kahuna/sdk/c:d	Ljava/lang/Object;
    //   6: astore_3
    //   7: aload_3
    //   8: monitorenter
    //   9: getstatic 21	com/kahuna/sdk/c:a	Lcom/kahuna/sdk/c;
    //   12: getfield 25	com/kahuna/sdk/c:b	Ljava/lang/Object;
    //   15: astore 4
    //   17: aload 4
    //   19: monitorenter
    //   20: getstatic 21	com/kahuna/sdk/c:a	Lcom/kahuna/sdk/c;
    //   23: getfield 34	com/kahuna/sdk/c:e	Ljava/util/HashMap;
    //   26: invokevirtual 71	java/util/HashMap:clear	()V
    //   29: aload_0
    //   30: invokeinterface 120 1 0
    //   35: istore_2
    //   36: iconst_0
    //   37: istore_1
    //   38: iload_1
    //   39: iload_2
    //   40: if_icmpge +167 -> 207
    //   43: aload_0
    //   44: iload_1
    //   45: invokeinterface 123 2 0
    //   50: checkcast 53	com/kahuna/sdk/Event
    //   53: astore 5
    //   55: aload 5
    //   57: invokevirtual 75	com/kahuna/sdk/Event:a	()Ljava/lang/String;
    //   60: invokevirtual 128	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   63: astore 6
    //   65: aload 5
    //   67: invokevirtual 132	com/kahuna/sdk/Event:i	()Z
    //   70: ifeq +187 -> 257
    //   73: getstatic 21	com/kahuna/sdk/c:a	Lcom/kahuna/sdk/c;
    //   76: getfield 30	com/kahuna/sdk/c:c	Ljava/util/HashMap;
    //   79: aload 6
    //   81: invokevirtual 47	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   84: ifeq +173 -> 257
    //   87: invokestatic 137	java/lang/System:currentTimeMillis	()J
    //   90: ldc2_w 138
    //   93: ldiv
    //   94: getstatic 21	com/kahuna/sdk/c:a	Lcom/kahuna/sdk/c;
    //   97: getfield 30	com/kahuna/sdk/c:c	Ljava/util/HashMap;
    //   100: aload 6
    //   102: invokevirtual 51	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   105: checkcast 56	java/lang/Long
    //   108: invokevirtual 60	java/lang/Long:longValue	()J
    //   111: aload 5
    //   113: invokevirtual 77	com/kahuna/sdk/Event:b	()J
    //   116: ladd
    //   117: lcmp
    //   118: ifge +139 -> 257
    //   121: getstatic 21	com/kahuna/sdk/c:a	Lcom/kahuna/sdk/c;
    //   124: aload 5
    //   126: invokevirtual 75	com/kahuna/sdk/Event:a	()Ljava/lang/String;
    //   129: aload 5
    //   131: invokevirtual 77	com/kahuna/sdk/Event:b	()J
    //   134: invokespecial 43	com/kahuna/sdk/c:b	(Ljava/lang/String;J)Ljava/lang/String;
    //   137: astore 6
    //   139: getstatic 21	com/kahuna/sdk/c:a	Lcom/kahuna/sdk/c;
    //   142: getfield 34	com/kahuna/sdk/c:e	Ljava/util/HashMap;
    //   145: aload 6
    //   147: invokevirtual 47	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   150: ifne +107 -> 257
    //   153: getstatic 21	com/kahuna/sdk/c:a	Lcom/kahuna/sdk/c;
    //   156: getfield 34	com/kahuna/sdk/c:e	Ljava/util/HashMap;
    //   159: aload 6
    //   161: aload 5
    //   163: invokevirtual 81	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   166: pop
    //   167: getstatic 86	com/kahuna/sdk/l:a	Z
    //   170: ifeq +87 -> 257
    //   173: ldc 88
    //   175: new 90	java/lang/StringBuilder
    //   178: dup
    //   179: invokespecial 91	java/lang/StringBuilder:<init>	()V
    //   182: ldc -115
    //   184: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: aload 6
    //   189: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: ldc 99
    //   194: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokestatic 107	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   203: pop
    //   204: goto +53 -> 257
    //   207: aload 4
    //   209: monitorexit
    //   210: aload_3
    //   211: monitorexit
    //   212: return
    //   213: astore_0
    //   214: aload 4
    //   216: monitorexit
    //   217: aload_0
    //   218: athrow
    //   219: astore_0
    //   220: aload_3
    //   221: monitorexit
    //   222: aload_0
    //   223: athrow
    //   224: astore_0
    //   225: getstatic 86	com/kahuna/sdk/l:a	Z
    //   228: ifeq -16 -> 212
    //   231: ldc 88
    //   233: new 90	java/lang/StringBuilder
    //   236: dup
    //   237: invokespecial 91	java/lang/StringBuilder:<init>	()V
    //   240: ldc -113
    //   242: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: aload_0
    //   246: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   249: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: invokestatic 149	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   255: pop
    //   256: return
    //   257: iload_1
    //   258: iconst_1
    //   259: iadd
    //   260: istore_1
    //   261: goto -223 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	264	0	paramList	java.util.List<Event>
    //   37	224	1	i	int
    //   35	6	2	j	int
    //   53	109	5	localEvent	Event
    //   63	125	6	str	String
    // Exception table:
    //   from	to	target	type
    //   20	36	213	finally
    //   43	204	213	finally
    //   207	210	213	finally
    //   214	217	213	finally
    //   9	20	219	finally
    //   210	212	219	finally
    //   217	219	219	finally
    //   220	222	219	finally
    //   0	9	224	java/lang/Exception
    //   222	224	224	java/lang/Exception
  }
  
  protected static void a(JSONObject paramJSONObject)
  {
    try
    {
      synchronized (ab)
      {
        ac.clear();
        if (paramJSONObject != null)
        {
          Iterator localIterator = paramJSONObject.keys();
          if (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            long l = (Double.valueOf(paramJSONObject.optDouble(str, 0.5D)).doubleValue() * 60.0D);
            ac.put(str.toLowerCase(), a.a(Long.valueOf(l)));
          }
        }
      }
    }
    catch (Exception paramJSONObject)
    {
      if (l.a) {
        Log.w("Kahuna", "Caught exception loading bucket mappings from persistent store: " + paramJSONObject);
      }
      return;
    }
  }
  
  protected static boolean a(String paramString)
  {
    if (w.a(paramString)) {
      return false;
    }
    synchronized (ab)
    {
      boolean bool = ac.containsKey(paramString.toLowerCase());
      return bool;
    }
  }
  
  private String b(String paramString, long paramLong)
  {
    Object localObject = null;
    synchronized (c)
    {
      String str = paramString.toLowerCase();
      if (c.containsKey(str))
      {
        long l = ((Long)c.get(str)).longValue();
        paramString = str + "_" + (int)(paramLong / l);
      }
      do
      {
        return paramString;
        paramString = (String)localObject;
      } while (!l.a);
      Log.w("Kahuna", "Attempted to obtain a bucket mapping for event not in bucketConfig: " + str);
      paramString = (String)localObject;
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */