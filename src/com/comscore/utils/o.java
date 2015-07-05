package com.comscore.utils;

public class o
{
  private static StringBuilder a;
  private static int b = -1;
  private static int c = -1;
  private static final String[] d = { "c12", "c1", "ns_ap_an", "ns_ap_pn", "ns_ap_device", "ns_ak" };
  private static final String[] e = { "c12", "c1", "ns_ap_an", "ns_ap_pn", "ns_ap_device", "ns_ts", "ns_ak" };
  private static final long f = (1 << e.length) - 1;
  
  /* Error */
  public static String a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: aload_1
    //   5: invokestatic 47	com/comscore/utils/o:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: getstatic 18	com/comscore/utils/o:b	I
    //   11: iconst_m1
    //   12: if_icmpeq +28 -> 40
    //   15: getstatic 20	com/comscore/utils/o:c	I
    //   18: getstatic 18	com/comscore/utils/o:b	I
    //   21: if_icmple +19 -> 40
    //   24: aload_0
    //   25: getstatic 18	com/comscore/utils/o:b	I
    //   28: getstatic 20	com/comscore/utils/o:c	I
    //   31: invokevirtual 51	java/lang/String:substring	(II)Ljava/lang/String;
    //   34: astore_0
    //   35: ldc 2
    //   37: monitorexit
    //   38: aload_0
    //   39: areturn
    //   40: aconst_null
    //   41: astore_0
    //   42: goto -7 -> 35
    //   45: astore_0
    //   46: ldc 2
    //   48: monitorexit
    //   49: aload_0
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	paramString1	String
    //   0	51	1	paramString2	String
    // Exception table:
    //   from	to	target	type
    //   3	35	45	finally
  }
  
  public static String a(String[] paramArrayOfString, String paramString)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>");
      a(localStringBuilder, paramArrayOfString[0], paramString);
      a(paramArrayOfString, localStringBuilder);
      a(localStringBuilder);
      localStringBuilder.append("</events>");
      paramArrayOfString = localStringBuilder.toString();
      return paramArrayOfString;
    }
    finally
    {
      paramArrayOfString = finally;
      throw paramArrayOfString;
    }
  }
  
  private static void a(String paramString, StringBuilder paramStringBuilder)
  {
    long l1 = 0L;
    b(paramString, "ns_ts");
    int j;
    int i;
    int k;
    if ((b != -1) && (c > b))
    {
      paramStringBuilder.append("<event t=\"").append(paramString, b, c).append("\">");
      j = 0;
      i = 0;
      if (j < paramString.length())
      {
        k = paramString.indexOf('&', j);
        if (k != -1) {
          break label282;
        }
        k = paramString.length();
      }
    }
    label123:
    label259:
    label276:
    label282:
    for (;;)
    {
      int m = i;
      long l2 = l1;
      int n;
      if (k > j)
      {
        m = i;
        l2 = l1;
        if (paramString.indexOf('=', j) > j)
        {
          if (l1 == f) {
            break label276;
          }
          m = 0;
          if (m >= e.length) {
            break label276;
          }
          l2 = 1 << m;
          if (((l1 & l2) != 0L) || (!e[m].regionMatches(0, paramString, j, e[m].length()))) {
            break label259;
          }
          n = 0;
          l1 |= l2;
        }
      }
      for (;;)
      {
        m = i;
        l2 = l1;
        if (n != 0)
        {
          if (i > 0)
          {
            a.append('&');
            paramStringBuilder.append('&');
          }
          a.append(paramString, j, k);
          paramStringBuilder.append(paramString, j, k);
          m = i + 1;
          l2 = l1;
        }
        j = k + 1;
        i = m;
        l1 = l2;
        break;
        m += 1;
        break label123;
        paramStringBuilder.append("</event>");
        return;
        n = 1;
      }
    }
  }
  
  private static void a(StringBuilder paramStringBuilder)
  {
    String str = n.a(a.toString()).toLowerCase();
    int i = paramStringBuilder.indexOf("md5=\"");
    paramStringBuilder.insert("md5=\"".length() + i, str);
  }
  
  private static void a(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    long l = h.a();
    paramStringBuilder.append("<events t=\"").append(String.valueOf(l)).append("\" ");
    int i = 0;
    while (i < d.length)
    {
      b(paramStringBuilder, paramString1, d[i]);
      i += 1;
    }
    paramStringBuilder.append("dropped=\"").append(paramString2).append("\" md5=\"\">");
  }
  
  private static void a(String[] paramArrayOfString, StringBuilder paramStringBuilder)
  {
    a = new StringBuilder();
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      if (n.f(paramArrayOfString[i])) {
        a(paramArrayOfString[i], paramStringBuilder);
      }
      i += 1;
    }
  }
  
  private static void b(String paramString1, String paramString2)
  {
    c = -1;
    b = -1;
    int j = 0;
    int i;
    do
    {
      j = paramString1.indexOf(paramString2, j);
      i = j;
      if (j >= 0)
      {
        i = paramString2.length() + j;
        if (((j == 0) || (paramString1.charAt(j - 1) == '&')) && (i < paramString1.length()) && (paramString1.charAt(i) == '='))
        {
          b = i + 1;
          c = paramString1.indexOf('&', b);
          if (c == -1) {
            c = paramString1.length();
          }
        }
      }
      while (i < 0)
      {
        return;
        i += 1;
      }
      j = i;
    } while (i < paramString1.length());
  }
  
  private static void b(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    b(paramString1, paramString2);
    if ((b != -1) && (c > b)) {
      paramStringBuilder.append(paramString2).append("=\"").append(paramString1, b, c).append("\" ");
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */