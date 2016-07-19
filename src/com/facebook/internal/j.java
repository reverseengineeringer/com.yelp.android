package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.io.Closeable;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class j
{
  private static Handler a;
  private static x b = new x(8);
  private static x c = new x(2);
  private static final Map<d, c> d = new HashMap();
  
  private static Handler a()
  {
    try
    {
      if (a == null) {
        a = new Handler(Looper.getMainLooper());
      }
      Handler localHandler = a;
      return localHandler;
    }
    finally {}
  }
  
  private static c a(d paramd)
  {
    synchronized (d)
    {
      paramd = (c)d.remove(paramd);
      return paramd;
    }
  }
  
  private static void a(d paramd, final Exception paramException, final Bitmap paramBitmap, final boolean paramBoolean)
  {
    paramd = a(paramd);
    if ((paramd != null) && (!c))
    {
      paramd = b;
      final k.b localb = paramd.c();
      if (localb != null) {
        a().post(new Runnable()
        {
          public void run()
          {
            l locall = new l(a, paramException, paramBoolean, paramBitmap);
            localb.a(locall);
          }
        });
      }
    }
  }
  
  public static void a(k paramk)
  {
    if (paramk == null) {
      return;
    }
    d locald = new d(paramk.b(), paramk.e());
    for (;;)
    {
      synchronized (d)
      {
        c localc = (c)d.get(locald);
        if (localc != null)
        {
          b = paramk;
          c = false;
          a.b();
          return;
        }
      }
      a(paramk, locald, paramk.d());
    }
  }
  
  private static void a(k paramk, d paramd)
  {
    a(paramk, paramd, b, new b(paramk.a(), paramd));
  }
  
  private static void a(k paramk, d paramd, x paramx, Runnable paramRunnable)
  {
    synchronized (d)
    {
      c localc = new c(null);
      b = paramk;
      d.put(paramd, localc);
      a = paramx.a(paramRunnable);
      return;
    }
  }
  
  private static void a(k paramk, d paramd, boolean paramBoolean)
  {
    a(paramk, paramd, c, new a(paramk.a(), paramd, paramBoolean));
  }
  
  /* Error */
  private static void b(d paramd, Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 9
    //   9: iconst_1
    //   10: istore_3
    //   11: iconst_1
    //   12: istore_2
    //   13: new 145	java/net/URL
    //   16: dup
    //   17: aload_0
    //   18: getfield 148	com/facebook/internal/j$d:a	Landroid/net/Uri;
    //   21: invokevirtual 154	android/net/Uri:toString	()Ljava/lang/String;
    //   24: invokespecial 157	java/net/URL:<init>	(Ljava/lang/String;)V
    //   27: invokevirtual 161	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   30: checkcast 163	java/net/HttpURLConnection
    //   33: astore 5
    //   35: aload 5
    //   37: iconst_0
    //   38: invokevirtual 167	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   41: aload 5
    //   43: invokevirtual 171	java/net/HttpURLConnection:getResponseCode	()I
    //   46: lookupswitch	default:+437->483, 200:+267->313, 301:+175->221, 302:+175->221
    //   80: aload 5
    //   82: invokevirtual 175	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   85: astore 6
    //   87: aload 6
    //   89: astore 7
    //   91: aload 6
    //   93: astore 8
    //   95: new 177	java/lang/StringBuilder
    //   98: dup
    //   99: invokespecial 178	java/lang/StringBuilder:<init>	()V
    //   102: astore 11
    //   104: aload 6
    //   106: ifnull +300 -> 406
    //   109: aload 6
    //   111: astore 7
    //   113: aload 6
    //   115: astore 8
    //   117: new 180	java/io/InputStreamReader
    //   120: dup
    //   121: aload 6
    //   123: invokespecial 183	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   126: astore_1
    //   127: aload 6
    //   129: astore 7
    //   131: aload 6
    //   133: astore 8
    //   135: sipush 128
    //   138: newarray <illegal type>
    //   140: astore 12
    //   142: aload 6
    //   144: astore 7
    //   146: aload 6
    //   148: astore 8
    //   150: aload_1
    //   151: aload 12
    //   153: iconst_0
    //   154: aload 12
    //   156: arraylength
    //   157: invokevirtual 187	java/io/InputStreamReader:read	([CII)I
    //   160: istore 4
    //   162: iload 4
    //   164: ifle +185 -> 349
    //   167: aload 6
    //   169: astore 7
    //   171: aload 6
    //   173: astore 8
    //   175: aload 11
    //   177: aload 12
    //   179: iconst_0
    //   180: iload 4
    //   182: invokevirtual 191	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   185: pop
    //   186: goto -44 -> 142
    //   189: astore_1
    //   190: aload 7
    //   192: astore 6
    //   194: aload 6
    //   196: invokestatic 196	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   199: aload 5
    //   201: invokestatic 199	com/facebook/internal/u:a	(Ljava/net/URLConnection;)V
    //   204: aload 9
    //   206: astore 7
    //   208: iload_2
    //   209: ifeq +11 -> 220
    //   212: aload_0
    //   213: aload_1
    //   214: aload 7
    //   216: iconst_0
    //   217: invokestatic 201	com/facebook/internal/j:a	(Lcom/facebook/internal/j$d;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    //   220: return
    //   221: aload 5
    //   223: ldc -53
    //   225: invokevirtual 207	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   228: astore_1
    //   229: aload_1
    //   230: invokestatic 210	com/facebook/internal/u:a	(Ljava/lang/String;)Z
    //   233: ifne +236 -> 469
    //   236: aload_1
    //   237: invokestatic 214	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   240: astore_1
    //   241: aload_0
    //   242: getfield 148	com/facebook/internal/j$d:a	Landroid/net/Uri;
    //   245: aload_1
    //   246: invokestatic 219	com/facebook/internal/t:a	(Landroid/net/Uri;Landroid/net/Uri;)V
    //   249: aload_0
    //   250: invokestatic 71	com/facebook/internal/j:a	(Lcom/facebook/internal/j$d;)Lcom/facebook/internal/j$c;
    //   253: astore 6
    //   255: aload 6
    //   257: ifnull +32 -> 289
    //   260: aload 6
    //   262: getfield 74	com/facebook/internal/j$c:c	Z
    //   265: ifne +24 -> 289
    //   268: aload 6
    //   270: getfield 77	com/facebook/internal/j$c:b	Lcom/facebook/internal/k;
    //   273: new 17	com/facebook/internal/j$d
    //   276: dup
    //   277: aload_1
    //   278: aload_0
    //   279: getfield 222	com/facebook/internal/j$d:b	Ljava/lang/Object;
    //   282: invokespecial 102	com/facebook/internal/j$d:<init>	(Landroid/net/Uri;Ljava/lang/Object;)V
    //   285: iconst_0
    //   286: invokestatic 118	com/facebook/internal/j:a	(Lcom/facebook/internal/k;Lcom/facebook/internal/j$d;Z)V
    //   289: iconst_0
    //   290: istore_2
    //   291: aconst_null
    //   292: astore_1
    //   293: aconst_null
    //   294: astore 6
    //   296: aload 10
    //   298: astore 7
    //   300: aload 6
    //   302: invokestatic 196	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   305: aload 5
    //   307: invokestatic 199	com/facebook/internal/u:a	(Ljava/net/URLConnection;)V
    //   310: goto -102 -> 208
    //   313: aload_1
    //   314: aload 5
    //   316: invokestatic 227	com/facebook/internal/m:a	(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    //   319: astore 6
    //   321: aload 6
    //   323: astore 7
    //   325: aload 6
    //   327: astore 8
    //   329: aload 6
    //   331: invokestatic 233	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   334: astore_1
    //   335: aconst_null
    //   336: astore 8
    //   338: aload_1
    //   339: astore 7
    //   341: iload_3
    //   342: istore_2
    //   343: aload 8
    //   345: astore_1
    //   346: goto -46 -> 300
    //   349: aload 6
    //   351: astore 7
    //   353: aload 6
    //   355: astore 8
    //   357: aload_1
    //   358: invokestatic 196	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   361: aload 6
    //   363: astore 7
    //   365: aload 6
    //   367: astore 8
    //   369: new 235	com/facebook/FacebookException
    //   372: dup
    //   373: aload 11
    //   375: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   378: invokespecial 237	com/facebook/FacebookException:<init>	(Ljava/lang/String;)V
    //   381: astore_1
    //   382: iload_3
    //   383: istore_2
    //   384: aload 10
    //   386: astore 7
    //   388: goto -88 -> 300
    //   391: astore_0
    //   392: aload 5
    //   394: astore_1
    //   395: aload 8
    //   397: invokestatic 196	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   400: aload_1
    //   401: invokestatic 199	com/facebook/internal/u:a	(Ljava/net/URLConnection;)V
    //   404: aload_0
    //   405: athrow
    //   406: aload 6
    //   408: astore 7
    //   410: aload 6
    //   412: astore 8
    //   414: aload 11
    //   416: aload_1
    //   417: getstatic 243	com/facebook/o$f:com_facebook_image_download_unknown_error	I
    //   420: invokevirtual 249	android/content/Context:getString	(I)Ljava/lang/String;
    //   423: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: pop
    //   427: goto -66 -> 361
    //   430: astore_0
    //   431: aconst_null
    //   432: astore_1
    //   433: goto -38 -> 395
    //   436: astore_0
    //   437: aload 5
    //   439: astore_1
    //   440: goto -45 -> 395
    //   443: astore_1
    //   444: aconst_null
    //   445: astore 6
    //   447: aconst_null
    //   448: astore 5
    //   450: goto -256 -> 194
    //   453: astore_1
    //   454: aconst_null
    //   455: astore 6
    //   457: goto -263 -> 194
    //   460: astore_1
    //   461: aconst_null
    //   462: astore 6
    //   464: iconst_0
    //   465: istore_2
    //   466: goto -272 -> 194
    //   469: iconst_0
    //   470: istore_2
    //   471: aconst_null
    //   472: astore_1
    //   473: aconst_null
    //   474: astore 6
    //   476: aload 10
    //   478: astore 7
    //   480: goto -180 -> 300
    //   483: goto -403 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	486	0	paramd	d
    //   0	486	1	paramContext	Context
    //   12	459	2	i	int
    //   10	373	3	j	int
    //   160	21	4	k	int
    //   33	416	5	localHttpURLConnection	java.net.HttpURLConnection
    //   85	390	6	localObject1	Object
    //   89	390	7	localObject2	Object
    //   4	409	8	localObject3	Object
    //   7	198	9	localObject4	Object
    //   1	476	10	localObject5	Object
    //   102	313	11	localStringBuilder	StringBuilder
    //   140	38	12	arrayOfChar	char[]
    // Exception table:
    //   from	to	target	type
    //   95	104	189	java/io/IOException
    //   117	127	189	java/io/IOException
    //   135	142	189	java/io/IOException
    //   150	162	189	java/io/IOException
    //   175	186	189	java/io/IOException
    //   329	335	189	java/io/IOException
    //   357	361	189	java/io/IOException
    //   369	382	189	java/io/IOException
    //   414	427	189	java/io/IOException
    //   95	104	391	finally
    //   117	127	391	finally
    //   135	142	391	finally
    //   150	162	391	finally
    //   175	186	391	finally
    //   329	335	391	finally
    //   357	361	391	finally
    //   369	382	391	finally
    //   414	427	391	finally
    //   13	35	430	finally
    //   35	80	436	finally
    //   80	87	436	finally
    //   221	255	436	finally
    //   260	289	436	finally
    //   313	321	436	finally
    //   13	35	443	java/io/IOException
    //   35	80	453	java/io/IOException
    //   80	87	453	java/io/IOException
    //   313	321	453	java/io/IOException
    //   221	255	460	java/io/IOException
    //   260	289	460	java/io/IOException
  }
  
  private static void b(d paramd, Context paramContext, boolean paramBoolean)
  {
    boolean bool = false;
    Object localObject;
    if (paramBoolean)
    {
      localObject = t.a(a);
      if (localObject != null)
      {
        localObject = m.a((Uri)localObject, paramContext);
        paramBoolean = bool;
        if (localObject != null) {
          paramBoolean = true;
        }
      }
    }
    for (;;)
    {
      if (!paramBoolean) {
        localObject = m.a(a, paramContext);
      }
      if (localObject != null)
      {
        paramContext = BitmapFactory.decodeStream((InputStream)localObject);
        u.a((Closeable)localObject);
        a(paramd, null, paramContext, paramBoolean);
      }
      do
      {
        return;
        paramContext = a(paramd);
      } while ((paramContext == null) || (c));
      a(b, paramd);
      return;
      paramBoolean = false;
      localObject = null;
    }
  }
  
  public static boolean b(k arg0)
  {
    d locald = new d(???.b(), ???.e());
    for (;;)
    {
      synchronized (d)
      {
        c localc = (c)d.get(locald);
        if (localc != null)
        {
          if (a.a())
          {
            d.remove(locald);
            bool = true;
            return bool;
          }
          c = true;
          bool = true;
        }
      }
      boolean bool = false;
    }
  }
  
  private static class a
    implements Runnable
  {
    private Context a;
    private j.d b;
    private boolean c;
    
    a(Context paramContext, j.d paramd, boolean paramBoolean)
    {
      a = paramContext;
      b = paramd;
      c = paramBoolean;
    }
    
    public void run()
    {
      j.a(b, a, c);
    }
  }
  
  private static class b
    implements Runnable
  {
    private Context a;
    private j.d b;
    
    b(Context paramContext, j.d paramd)
    {
      a = paramContext;
      b = paramd;
    }
    
    public void run()
    {
      j.a(b, a);
    }
  }
  
  private static class c
  {
    x.a a;
    k b;
    boolean c;
  }
  
  private static class d
  {
    Uri a;
    Object b;
    
    d(Uri paramUri, Object paramObject)
    {
      a = paramUri;
      b = paramObject;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (paramObject != null)
      {
        bool1 = bool2;
        if ((paramObject instanceof d))
        {
          paramObject = (d)paramObject;
          bool1 = bool2;
          if (a == a)
          {
            bool1 = bool2;
            if (b == b) {
              bool1 = true;
            }
          }
        }
      }
      return bool1;
    }
    
    public int hashCode()
    {
      return (a.hashCode() + 1073) * 37 + b.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */