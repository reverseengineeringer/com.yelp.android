package com.crashlytics.android.internal;

import org.json.JSONObject;

public class ay
{
  private bb a;
  private final ba b;
  private final bi c;
  private final an d;
  private final bz e;
  
  public ay(bb parambb, bi parambi, ba paramba, an paraman, bz parambz)
  {
    a = parambb;
    c = parambi;
    b = paramba;
    d = paraman;
    e = parambz;
  }
  
  private void a(JSONObject paramJSONObject, String paramString)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (!bd.e(cl.a().w())) {
      localJSONObject = b.a(paramJSONObject);
    }
    cl.a().b().a("Crashlytics", paramString + localJSONObject.toString());
  }
  
  /* Error */
  private az b(aV paramaV)
  {
    // Byte code:
    //   0: getstatic 82	com/crashlytics/android/internal/aV:b	Lcom/crashlytics/android/internal/aV;
    //   3: aload_1
    //   4: invokevirtual 86	com/crashlytics/android/internal/aV:equals	(Ljava/lang/Object;)Z
    //   7: ifne +195 -> 202
    //   10: aload_0
    //   11: getfield 27	com/crashlytics/android/internal/ay:d	Lcom/crashlytics/android/internal/an;
    //   14: invokevirtual 91	com/crashlytics/android/internal/an:a	()Lorg/json/JSONObject;
    //   17: astore 8
    //   19: aload 8
    //   21: ifnull +128 -> 149
    //   24: aload_0
    //   25: getfield 25	com/crashlytics/android/internal/ay:b	Lcom/crashlytics/android/internal/ba;
    //   28: aload_0
    //   29: getfield 23	com/crashlytics/android/internal/ay:c	Lcom/crashlytics/android/internal/bi;
    //   32: aload 8
    //   34: invokevirtual 94	com/crashlytics/android/internal/ba:a	(Lcom/crashlytics/android/internal/bi;Lorg/json/JSONObject;)Lcom/crashlytics/android/internal/az;
    //   37: astore 7
    //   39: aload 7
    //   41: ifnull +90 -> 131
    //   44: aload_0
    //   45: aload 8
    //   47: ldc 96
    //   49: invokespecial 98	com/crashlytics/android/internal/ay:a	(Lorg/json/JSONObject;Ljava/lang/String;)V
    //   52: aload_0
    //   53: getfield 23	com/crashlytics/android/internal/ay:c	Lcom/crashlytics/android/internal/bi;
    //   56: invokevirtual 103	com/crashlytics/android/internal/bi:a	()J
    //   59: lstore_3
    //   60: getstatic 105	com/crashlytics/android/internal/aV:c	Lcom/crashlytics/android/internal/aV;
    //   63: aload_1
    //   64: invokevirtual 86	com/crashlytics/android/internal/aV:equals	(Ljava/lang/Object;)Z
    //   67: ifne +23 -> 90
    //   70: aload 7
    //   72: getfield 111	com/crashlytics/android/internal/az:f	J
    //   75: lstore 5
    //   77: lload 5
    //   79: lload_3
    //   80: lcmp
    //   81: ifge +27 -> 108
    //   84: iconst_1
    //   85: istore_2
    //   86: iload_2
    //   87: ifne +26 -> 113
    //   90: invokestatic 36	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   93: invokevirtual 53	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   96: ldc 55
    //   98: ldc 113
    //   100: invokeinterface 74 3 0
    //   105: aload 7
    //   107: areturn
    //   108: iconst_0
    //   109: istore_2
    //   110: goto -24 -> 86
    //   113: invokestatic 36	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   116: invokevirtual 53	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   119: ldc 55
    //   121: ldc 115
    //   123: invokeinterface 74 3 0
    //   128: goto +74 -> 202
    //   131: invokestatic 36	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   134: invokevirtual 53	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   137: ldc 55
    //   139: ldc 117
    //   141: aconst_null
    //   142: invokeinterface 120 4 0
    //   147: aconst_null
    //   148: areturn
    //   149: invokestatic 36	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   152: invokevirtual 53	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   155: ldc 55
    //   157: ldc 122
    //   159: invokeinterface 74 3 0
    //   164: goto +38 -> 202
    //   167: astore 7
    //   169: aconst_null
    //   170: astore_1
    //   171: invokestatic 36	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   174: invokevirtual 53	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   177: ldc 55
    //   179: ldc 124
    //   181: aload 7
    //   183: invokeinterface 120 4 0
    //   188: aload_1
    //   189: areturn
    //   190: astore 8
    //   192: aload 7
    //   194: astore_1
    //   195: aload 8
    //   197: astore 7
    //   199: goto -28 -> 171
    //   202: aconst_null
    //   203: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	204	0	this	ay
    //   0	204	1	paramaV	aV
    //   85	25	2	i	int
    //   59	21	3	l1	long
    //   75	3	5	l2	long
    //   37	69	7	localaz	az
    //   167	26	7	localException1	Exception
    //   197	1	7	localException2	Exception
    //   17	29	8	localJSONObject	JSONObject
    //   190	6	8	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   0	19	167	java/lang/Exception
    //   24	39	167	java/lang/Exception
    //   44	77	167	java/lang/Exception
    //   113	128	167	java/lang/Exception
    //   131	147	167	java/lang/Exception
    //   149	164	167	java/lang/Exception
    //   90	105	190	java/lang/Exception
  }
  
  public az a()
  {
    return a(aV.a);
  }
  
  public az a(aV paramaV)
  {
    Object localObject = null;
    try
    {
      if (!cl.a().g()) {
        localObject = b(paramaV);
      }
      paramaV = (aV)localObject;
      if (localObject == null) {
        paramaV = (aV)localObject;
      }
      JSONObject localJSONObject;
      cl.a().b().a("Crashlytics", "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved.", localException1);
    }
    catch (Exception localException1)
    {
      try
      {
        localJSONObject = e.a(a);
        paramaV = (aV)localObject;
        if (localJSONObject != null)
        {
          paramaV = (aV)localObject;
          localObject = b.a(c, localJSONObject);
          paramaV = (aV)localObject;
          d.a(f, localJSONObject);
          paramaV = (aV)localObject;
          a(localJSONObject, "Loaded settings: ");
          paramaV = (aV)localObject;
        }
        localObject = paramaV;
        if (paramaV != null) {}
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
      try
      {
        localObject = b(aV.c);
        return (az)localObject;
      }
      catch (Exception localException3)
      {
        break label104;
      }
      localException1 = localException1;
      paramaV = null;
    }
    label104:
    return paramaV;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */