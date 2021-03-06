package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.m;
import android.util.Log;
import com.facebook.internal.u;
import com.facebook.internal.v;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

final class b
{
  private static volatile b a;
  private final m b;
  private final a c;
  private AccessToken d;
  private AtomicBoolean e = new AtomicBoolean(false);
  private Date f = new Date(0L);
  
  b(m paramm, a parama)
  {
    v.a(paramm, "localBroadcastManager");
    v.a(parama, "accessTokenCache");
    b = paramm;
    c = parama;
  }
  
  private static GraphRequest a(AccessToken paramAccessToken, GraphRequest.b paramb)
  {
    return new GraphRequest(paramAccessToken, "me/permissions", new Bundle(), HttpMethod.GET, paramb);
  }
  
  static b a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new b(m.a(g.f()), new a());
      }
      return a;
    }
    finally {}
  }
  
  private void a(AccessToken paramAccessToken1, AccessToken paramAccessToken2)
  {
    Intent localIntent = new Intent("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
    localIntent.putExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN", paramAccessToken1);
    localIntent.putExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN", paramAccessToken2);
    b.a(localIntent);
  }
  
  private void a(AccessToken paramAccessToken, boolean paramBoolean)
  {
    AccessToken localAccessToken = d;
    d = paramAccessToken;
    e.set(false);
    f = new Date(0L);
    if (paramBoolean)
    {
      if (paramAccessToken == null) {
        break label61;
      }
      c.a(paramAccessToken);
    }
    for (;;)
    {
      if (!u.a(localAccessToken, paramAccessToken)) {
        a(localAccessToken, paramAccessToken);
      }
      return;
      label61:
      c.b();
      u.b(g.f());
    }
  }
  
  private static GraphRequest b(AccessToken paramAccessToken, GraphRequest.b paramb)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("grant_type", "fb_extend_sso_token");
    return new GraphRequest(paramAccessToken, "oauth/access_token", localBundle, HttpMethod.GET, paramb);
  }
  
  private boolean f()
  {
    if (d == null) {}
    Long localLong;
    do
    {
      return false;
      localLong = Long.valueOf(new Date().getTime());
    } while ((!d.f().canExtendToken()) || (localLong.longValue() - f.getTime() <= 3600000L) || (localLong.longValue() - d.g().getTime() <= 86400000L));
    return true;
  }
  
  private void g()
  {
    final AccessToken localAccessToken = d;
    if (localAccessToken == null) {}
    while (!e.compareAndSet(false, true)) {
      return;
    }
    v.a();
    f = new Date();
    final HashSet localHashSet1 = new HashSet();
    final HashSet localHashSet2 = new HashSet();
    final AtomicBoolean localAtomicBoolean = new AtomicBoolean(false);
    final a locala = new a(null);
    i locali = new i(new GraphRequest[] { a(localAccessToken, new GraphRequest.b()
    {
      public void a(GraphResponse paramAnonymousGraphResponse)
      {
        paramAnonymousGraphResponse = paramAnonymousGraphResponse.b();
        if (paramAnonymousGraphResponse == null) {}
        do
        {
          return;
          paramAnonymousGraphResponse = paramAnonymousGraphResponse.optJSONArray("data");
        } while (paramAnonymousGraphResponse == null);
        localAtomicBoolean.set(true);
        int i = 0;
        label31:
        Object localObject;
        if (i < paramAnonymousGraphResponse.length())
        {
          localObject = paramAnonymousGraphResponse.optJSONObject(i);
          if (localObject != null) {
            break label58;
          }
        }
        for (;;)
        {
          i += 1;
          break label31;
          break;
          label58:
          String str = ((JSONObject)localObject).optString("permission");
          localObject = ((JSONObject)localObject).optString("status");
          if ((!u.a(str)) && (!u.a((String)localObject)))
          {
            localObject = ((String)localObject).toLowerCase(Locale.US);
            if (((String)localObject).equals("granted")) {
              localHashSet1.add(str);
            } else if (((String)localObject).equals("declined")) {
              localHashSet2.add(str);
            } else {
              Log.w("AccessTokenManager", "Unexpected status: " + (String)localObject);
            }
          }
        }
      }
    }), b(localAccessToken, new GraphRequest.b()
    {
      public void a(GraphResponse paramAnonymousGraphResponse)
      {
        paramAnonymousGraphResponse = paramAnonymousGraphResponse.b();
        if (paramAnonymousGraphResponse == null) {
          return;
        }
        localaa = paramAnonymousGraphResponse.optString("access_token");
        localab = paramAnonymousGraphResponse.optInt("expires_at");
      }
    }) });
    locali.a(new i.a()
    {
      /* Error */
      public void a(i paramAnonymousi)
      {
        // Byte code:
        //   0: invokestatic 43	com/facebook/b:a	()Lcom/facebook/b;
        //   3: invokevirtual 46	com/facebook/b:b	()Lcom/facebook/AccessToken;
        //   6: ifnull +22 -> 28
        //   9: invokestatic 43	com/facebook/b:a	()Lcom/facebook/b;
        //   12: invokevirtual 46	com/facebook/b:b	()Lcom/facebook/AccessToken;
        //   15: invokevirtual 52	com/facebook/AccessToken:i	()Ljava/lang/String;
        //   18: aload_0
        //   19: getfield 28	com/facebook/b$4:a	Lcom/facebook/AccessToken;
        //   22: invokevirtual 52	com/facebook/AccessToken:i	()Ljava/lang/String;
        //   25: if_acmpeq +4 -> 29
        //   28: return
        //   29: aload_0
        //   30: getfield 30	com/facebook/b$4:b	Ljava/util/concurrent/atomic/AtomicBoolean;
        //   33: invokevirtual 58	java/util/concurrent/atomic/AtomicBoolean:get	()Z
        //   36: ifne +37 -> 73
        //   39: aload_0
        //   40: getfield 32	com/facebook/b$4:c	Lcom/facebook/b$a;
        //   43: getfield 63	com/facebook/b$a:a	Ljava/lang/String;
        //   46: ifnonnull +27 -> 73
        //   49: aload_0
        //   50: getfield 32	com/facebook/b$4:c	Lcom/facebook/b$a;
        //   53: getfield 66	com/facebook/b$a:b	I
        //   56: istore_2
        //   57: iload_2
        //   58: ifne +15 -> 73
        //   61: aload_0
        //   62: getfield 26	com/facebook/b$4:f	Lcom/facebook/b;
        //   65: invokestatic 69	com/facebook/b:b	(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
        //   68: iconst_0
        //   69: invokevirtual 73	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
        //   72: return
        //   73: aload_0
        //   74: getfield 32	com/facebook/b$4:c	Lcom/facebook/b$a;
        //   77: getfield 63	com/facebook/b$a:a	Ljava/lang/String;
        //   80: ifnull +146 -> 226
        //   83: aload_0
        //   84: getfield 32	com/facebook/b$4:c	Lcom/facebook/b$a;
        //   87: getfield 63	com/facebook/b$a:a	Ljava/lang/String;
        //   90: astore_1
        //   91: aload_0
        //   92: getfield 28	com/facebook/b$4:a	Lcom/facebook/AccessToken;
        //   95: invokevirtual 76	com/facebook/AccessToken:h	()Ljava/lang/String;
        //   98: astore 6
        //   100: aload_0
        //   101: getfield 28	com/facebook/b$4:a	Lcom/facebook/AccessToken;
        //   104: invokevirtual 52	com/facebook/AccessToken:i	()Ljava/lang/String;
        //   107: astore 7
        //   109: aload_0
        //   110: getfield 30	com/facebook/b$4:b	Ljava/util/concurrent/atomic/AtomicBoolean;
        //   113: invokevirtual 58	java/util/concurrent/atomic/AtomicBoolean:get	()Z
        //   116: ifeq +121 -> 237
        //   119: aload_0
        //   120: getfield 34	com/facebook/b$4:d	Ljava/util/Set;
        //   123: astore_3
        //   124: aload_0
        //   125: getfield 30	com/facebook/b$4:b	Ljava/util/concurrent/atomic/AtomicBoolean;
        //   128: invokevirtual 58	java/util/concurrent/atomic/AtomicBoolean:get	()Z
        //   131: ifeq +117 -> 248
        //   134: aload_0
        //   135: getfield 36	com/facebook/b$4:e	Ljava/util/Set;
        //   138: astore 4
        //   140: aload_0
        //   141: getfield 28	com/facebook/b$4:a	Lcom/facebook/AccessToken;
        //   144: invokevirtual 79	com/facebook/AccessToken:f	()Lcom/facebook/AccessTokenSource;
        //   147: astore 8
        //   149: aload_0
        //   150: getfield 32	com/facebook/b$4:c	Lcom/facebook/b$a;
        //   153: getfield 66	com/facebook/b$a:b	I
        //   156: ifeq +104 -> 260
        //   159: new 81	java/util/Date
        //   162: dup
        //   163: aload_0
        //   164: getfield 32	com/facebook/b$4:c	Lcom/facebook/b$a;
        //   167: getfield 66	com/facebook/b$a:b	I
        //   170: i2l
        //   171: ldc2_w 82
        //   174: lmul
        //   175: invokespecial 86	java/util/Date:<init>	(J)V
        //   178: astore 5
        //   180: new 48	com/facebook/AccessToken
        //   183: dup
        //   184: aload_1
        //   185: aload 6
        //   187: aload 7
        //   189: aload_3
        //   190: aload 4
        //   192: aload 8
        //   194: aload 5
        //   196: new 81	java/util/Date
        //   199: dup
        //   200: invokespecial 87	java/util/Date:<init>	()V
        //   203: invokespecial 90	com/facebook/AccessToken:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V
        //   206: astore_1
        //   207: invokestatic 43	com/facebook/b:a	()Lcom/facebook/b;
        //   210: aload_1
        //   211: invokevirtual 93	com/facebook/b:a	(Lcom/facebook/AccessToken;)V
        //   214: aload_0
        //   215: getfield 26	com/facebook/b$4:f	Lcom/facebook/b;
        //   218: invokestatic 69	com/facebook/b:b	(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
        //   221: iconst_0
        //   222: invokevirtual 73	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
        //   225: return
        //   226: aload_0
        //   227: getfield 28	com/facebook/b$4:a	Lcom/facebook/AccessToken;
        //   230: invokevirtual 95	com/facebook/AccessToken:b	()Ljava/lang/String;
        //   233: astore_1
        //   234: goto -143 -> 91
        //   237: aload_0
        //   238: getfield 28	com/facebook/b$4:a	Lcom/facebook/AccessToken;
        //   241: invokevirtual 98	com/facebook/AccessToken:d	()Ljava/util/Set;
        //   244: astore_3
        //   245: goto -121 -> 124
        //   248: aload_0
        //   249: getfield 28	com/facebook/b$4:a	Lcom/facebook/AccessToken;
        //   252: invokevirtual 100	com/facebook/AccessToken:e	()Ljava/util/Set;
        //   255: astore 4
        //   257: goto -117 -> 140
        //   260: aload_0
        //   261: getfield 28	com/facebook/b$4:a	Lcom/facebook/AccessToken;
        //   264: invokevirtual 103	com/facebook/AccessToken:c	()Ljava/util/Date;
        //   267: astore 5
        //   269: goto -89 -> 180
        //   272: astore_1
        //   273: aload_0
        //   274: getfield 26	com/facebook/b$4:f	Lcom/facebook/b;
        //   277: invokestatic 69	com/facebook/b:b	(Lcom/facebook/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
        //   280: iconst_0
        //   281: invokevirtual 73	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
        //   284: aload_1
        //   285: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	286	0	this	4
        //   0	286	1	paramAnonymousi	i
        //   56	2	2	i	int
        //   123	122	3	localSet1	Set
        //   138	118	4	localSet2	Set
        //   178	90	5	localDate	Date
        //   98	88	6	str1	String
        //   107	81	7	str2	String
        //   147	46	8	localAccessTokenSource	AccessTokenSource
        // Exception table:
        //   from	to	target	type
        //   29	57	272	finally
        //   73	91	272	finally
        //   91	124	272	finally
        //   124	140	272	finally
        //   140	180	272	finally
        //   180	214	272	finally
        //   226	234	272	finally
        //   237	245	272	finally
        //   248	257	272	finally
        //   260	269	272	finally
      }
    });
    locali.h();
  }
  
  void a(AccessToken paramAccessToken)
  {
    a(paramAccessToken, true);
  }
  
  AccessToken b()
  {
    return d;
  }
  
  boolean c()
  {
    boolean bool = false;
    AccessToken localAccessToken = c.a();
    if (localAccessToken != null)
    {
      a(localAccessToken, false);
      bool = true;
    }
    return bool;
  }
  
  void d()
  {
    if (!f()) {
      return;
    }
    e();
  }
  
  void e()
  {
    if (Looper.getMainLooper().equals(Looper.myLooper()))
    {
      g();
      return;
    }
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public void run()
      {
        b.a(b.this);
      }
    });
  }
  
  private static class a
  {
    public String a;
    public int b;
  }
}

/* Location:
 * Qualified Name:     com.facebook.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */