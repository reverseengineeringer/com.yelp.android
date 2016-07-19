package com.facebook.share.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.content.m;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.b;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.f;
import com.facebook.g;
import com.facebook.i.a;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.CallbackManagerImpl.a;
import com.facebook.internal.a;
import com.facebook.internal.n;
import com.facebook.internal.p;
import com.facebook.internal.q.a;
import com.facebook.internal.u;
import com.facebook.internal.x;
import com.facebook.share.widget.LikeView.ObjectType;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  private static final String a = b.class.getSimpleName();
  private static com.facebook.internal.i b;
  private static final ConcurrentHashMap<String, b> c = new ConcurrentHashMap();
  private static x d = new x(1);
  private static x e = new x(1);
  private static Handler f;
  private static String g;
  private static boolean h;
  private static volatile int i;
  private static com.facebook.c j;
  private String k;
  private LikeView.ObjectType l;
  private boolean m;
  private String n;
  private String o;
  private String p;
  private String q;
  private String r;
  private String s;
  private boolean t;
  private boolean u;
  private boolean v;
  private Bundle w;
  private AppEventsLogger x;
  
  private b(String paramString, LikeView.ObjectType paramObjectType)
  {
    k = paramString;
    l = paramObjectType;
  }
  
  private static b a(String paramString)
  {
    paramString = d(paramString);
    b localb = (b)c.get(paramString);
    if (localb != null) {
      d.a(new h(paramString, false));
    }
    return localb;
  }
  
  private h a(final Bundle paramBundle)
  {
    new h(null)
    {
      public void a(a paramAnonymousa)
      {
        a(paramAnonymousa, new FacebookOperationCanceledException());
      }
      
      public void a(a paramAnonymousa, Bundle paramAnonymousBundle)
      {
        if ((paramAnonymousBundle == null) || (!paramAnonymousBundle.containsKey("object_is_liked"))) {
          return;
        }
        boolean bool = paramAnonymousBundle.getBoolean("object_is_liked");
        Object localObject1 = b.b(b.this);
        String str1 = b.c(b.this);
        if (paramAnonymousBundle.containsKey("like_count_string"))
        {
          str1 = paramAnonymousBundle.getString("like_count_string");
          localObject1 = str1;
        }
        Object localObject2 = b.d(b.this);
        String str2 = b.e(b.this);
        if (paramAnonymousBundle.containsKey("social_sentence"))
        {
          str2 = paramAnonymousBundle.getString("social_sentence");
          localObject2 = str2;
        }
        if (paramAnonymousBundle.containsKey("object_is_liked"))
        {
          paramAnonymousBundle = paramAnonymousBundle.getString("unlike_token");
          if (paramBundle != null) {
            break label189;
          }
        }
        label189:
        for (Bundle localBundle = new Bundle();; localBundle = paramBundle)
        {
          localBundle.putString("call_id", paramAnonymousa.c().toString());
          b.g(b.this).a("fb_like_control_dialog_did_succeed", null, localBundle);
          b.a(b.this, bool, (String)localObject1, str1, (String)localObject2, str2, paramAnonymousBundle);
          return;
          paramAnonymousBundle = b.f(b.this);
          break;
        }
      }
      
      public void a(a paramAnonymousa, FacebookException paramAnonymousFacebookException)
      {
        n.a(LoggingBehavior.REQUESTS, b.f(), "Like Dialog failed with error : %s", new Object[] { paramAnonymousFacebookException });
        if (paramBundle == null) {}
        for (Bundle localBundle = new Bundle();; localBundle = paramBundle)
        {
          localBundle.putString("call_id", paramAnonymousa.c().toString());
          b.a(b.this, "present_dialog", localBundle);
          b.b(b.this, "com.facebook.sdk.LikeActionController.DID_ERROR", p.a(paramAnonymousFacebookException));
          return;
        }
      }
    };
  }
  
  private static void a(c paramc, final b paramb, final FacebookException paramFacebookException)
  {
    if (paramc == null) {
      return;
    }
    f.post(new Runnable()
    {
      public void run()
      {
        a.a(paramb, paramFacebookException);
      }
    });
  }
  
  private void a(final k paramk)
  {
    if (!u.a(s))
    {
      if (paramk != null) {
        paramk.a();
      }
      return;
    }
    final e locale = new e(k, l);
    final g localg = new g(k, l);
    com.facebook.i locali = new com.facebook.i();
    locale.a(locali);
    localg.a(locali);
    locali.a(new i.a()
    {
      public void a(com.facebook.i paramAnonymousi)
      {
        b.c(b.this, localee);
        if (u.a(b.h(b.this)))
        {
          b.c(b.this, localge);
          b.d(b.this, localgf);
        }
        b localb;
        if (u.a(b.h(b.this)))
        {
          n.a(LoggingBehavior.DEVELOPER_ERRORS, b.f(), "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", new Object[] { b.j(b.this) });
          localb = b.this;
          if (localgc == null) {
            break label143;
          }
        }
        label143:
        for (paramAnonymousi = localgc;; paramAnonymousi = localec)
        {
          b.a(localb, "get_verified_id", paramAnonymousi);
          if (paramk != null) {
            paramk.a();
          }
          return;
        }
      }
    });
    locali.h();
  }
  
  private static void a(b paramb, LikeView.ObjectType paramObjectType, c paramc)
  {
    Object localObject = null;
    LikeView.ObjectType localObjectType = j.a(paramObjectType, l);
    if (localObjectType == null)
    {
      paramb = new FacebookException("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", new Object[] { k, l.toString(), paramObjectType.toString() });
      paramObjectType = (LikeView.ObjectType)localObject;
    }
    for (;;)
    {
      a(paramc, paramObjectType, paramb);
      return;
      l = localObjectType;
      localObject = null;
      paramObjectType = paramb;
      paramb = (b)localObject;
    }
  }
  
  private void a(String paramString, Bundle paramBundle)
  {
    paramBundle = new Bundle(paramBundle);
    paramBundle.putString("object_id", k);
    paramBundle.putString("object_type", l.toString());
    paramBundle.putString("current_action", paramString);
    l().a("fb_like_control_error", null, paramBundle);
  }
  
  private void a(String paramString, FacebookRequestError paramFacebookRequestError)
  {
    Bundle localBundle = new Bundle();
    if (paramFacebookRequestError != null)
    {
      paramFacebookRequestError = paramFacebookRequestError.e();
      if (paramFacebookRequestError != null) {
        localBundle.putString("error", paramFacebookRequestError.toString());
      }
    }
    a(paramString, localBundle);
  }
  
  private static void a(String paramString, b paramb)
  {
    paramString = d(paramString);
    d.a(new h(paramString, true));
    c.put(paramString, paramb);
  }
  
  public static void a(String paramString, LikeView.ObjectType paramObjectType, c paramc)
  {
    if (!h) {
      j();
    }
    b localb = a(paramString);
    if (localb != null)
    {
      a(localb, paramObjectType, paramc);
      return;
    }
    e.a(new b(paramString, paramObjectType, paramc));
  }
  
  private void a(boolean paramBoolean)
  {
    b(paramBoolean);
    Bundle localBundle = new Bundle();
    localBundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
    c(this, "com.facebook.sdk.LikeActionController.DID_ERROR", localBundle);
  }
  
  private void a(boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    paramString1 = u.a(paramString1, null);
    paramString2 = u.a(paramString2, null);
    paramString3 = u.a(paramString3, null);
    paramString4 = u.a(paramString4, null);
    paramString5 = u.a(paramString5, null);
    if ((paramBoolean != m) || (!u.a(paramString1, n)) || (!u.a(paramString2, o)) || (!u.a(paramString3, p)) || (!u.a(paramString4, q)) || (!u.a(paramString5, r))) {}
    for (int i1 = 1; i1 == 0; i1 = 0) {
      return;
    }
    m = paramBoolean;
    n = paramString1;
    o = paramString2;
    p = paramString3;
    q = paramString4;
    r = paramString5;
    l(this);
    d(this, "com.facebook.sdk.LikeActionController.UPDATED");
  }
  
  public static boolean a(int paramInt1, final int paramInt2, final Intent paramIntent)
  {
    if (u.a(g)) {
      g = g.f().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null);
    }
    if (u.a(g)) {
      return false;
    }
    a(g, LikeView.ObjectType.UNKNOWN, new c()
    {
      public void a(b paramAnonymousb, FacebookException paramAnonymousFacebookException)
      {
        if (paramAnonymousFacebookException == null)
        {
          b.a(paramAnonymousb, a, paramInt2, paramIntent);
          return;
        }
        u.a(b.f(), paramAnonymousFacebookException);
      }
    });
    return true;
  }
  
  private boolean a(boolean paramBoolean, Bundle paramBundle)
  {
    if (n())
    {
      if (paramBoolean)
      {
        c(paramBundle);
        return true;
      }
      if (!u.a(r))
      {
        d(paramBundle);
        return true;
      }
    }
    return false;
  }
  
  /* Error */
  private static b b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokestatic 132	com/facebook/share/internal/b:d	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_0
    //   10: getstatic 364	com/facebook/share/internal/b:b	Lcom/facebook/internal/i;
    //   13: aload_0
    //   14: invokevirtual 369	com/facebook/internal/i:a	(Ljava/lang/String;)Ljava/io/InputStream;
    //   17: astore_0
    //   18: aload 4
    //   20: astore_2
    //   21: aload_0
    //   22: ifnull +32 -> 54
    //   25: aload_0
    //   26: astore_1
    //   27: aload_0
    //   28: invokestatic 372	com/facebook/internal/u:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   31: astore 5
    //   33: aload 4
    //   35: astore_2
    //   36: aload_0
    //   37: astore_1
    //   38: aload 5
    //   40: invokestatic 165	com/facebook/internal/u:a	(Ljava/lang/String;)Z
    //   43: ifne +11 -> 54
    //   46: aload_0
    //   47: astore_1
    //   48: aload 5
    //   50: invokestatic 374	com/facebook/share/internal/b:c	(Ljava/lang/String;)Lcom/facebook/share/internal/b;
    //   53: astore_2
    //   54: aload_2
    //   55: astore_1
    //   56: aload_0
    //   57: ifnull +9 -> 66
    //   60: aload_0
    //   61: invokestatic 377	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   64: aload_2
    //   65: astore_1
    //   66: aload_1
    //   67: areturn
    //   68: astore_2
    //   69: aconst_null
    //   70: astore_0
    //   71: aload_0
    //   72: astore_1
    //   73: getstatic 102	com/facebook/share/internal/b:a	Ljava/lang/String;
    //   76: ldc_w 379
    //   79: aload_2
    //   80: invokestatic 384	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   83: pop
    //   84: aload_3
    //   85: astore_1
    //   86: aload_0
    //   87: ifnull -21 -> 66
    //   90: aload_0
    //   91: invokestatic 377	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   94: aconst_null
    //   95: areturn
    //   96: astore_0
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_1
    //   100: ifnull +7 -> 107
    //   103: aload_1
    //   104: invokestatic 377	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   107: aload_0
    //   108: athrow
    //   109: astore_0
    //   110: goto -11 -> 99
    //   113: astore_2
    //   114: goto -43 -> 71
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	paramString	String
    //   26	78	1	localObject1	Object
    //   20	45	2	localObject2	Object
    //   68	12	2	localIOException1	IOException
    //   113	1	2	localIOException2	IOException
    //   1	84	3	localObject3	Object
    //   3	31	4	localObject4	Object
    //   31	18	5	str	String
    // Exception table:
    //   from	to	target	type
    //   5	18	68	java/io/IOException
    //   5	18	96	finally
    //   27	33	109	finally
    //   38	46	109	finally
    //   48	54	109	finally
    //   73	84	109	finally
    //   27	33	113	java/io/IOException
    //   38	46	113	java/io/IOException
    //   48	54	113	java/io/IOException
  }
  
  private void b(int paramInt1, int paramInt2, Intent paramIntent)
  {
    j.a(paramInt1, paramInt2, paramIntent, a(w));
    m();
  }
  
  private void b(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    Object localObject;
    if (d.e())
    {
      localObject = "fb_like_control_did_present_dialog";
      if (localObject != null)
      {
        if (l == null) {
          break label135;
        }
        localObject = l.toString();
        label32:
        localObject = new LikeContent.a().a(k).b((String)localObject).a();
        if (paramFragment == null) {
          break label146;
        }
        new d(paramFragment).a(localObject);
      }
    }
    for (;;)
    {
      b(paramBundle);
      l().a("fb_like_control_did_present_dialog", null, paramBundle);
      return;
      if (d.f())
      {
        localObject = "fb_like_control_did_present_fallback_dialog";
        break;
      }
      a("present_dialog", paramBundle);
      u.b(a, "Cannot show the Like Dialog on this device.");
      d(null, "com.facebook.sdk.LikeActionController.UPDATED");
      localObject = null;
      break;
      label135:
      localObject = LikeView.ObjectType.UNKNOWN.toString();
      break label32;
      label146:
      new d(paramActivity).a(localObject);
    }
  }
  
  private void b(Bundle paramBundle)
  {
    e(k);
    w = paramBundle;
    l(this);
  }
  
  private static void b(String paramString1, String paramString2)
  {
    Object localObject = null;
    String str = null;
    try
    {
      paramString1 = b.b(paramString1);
      str = paramString1;
      localObject = paramString1;
      paramString1.write(paramString2.getBytes());
      if (paramString1 != null) {
        u.a(paramString1);
      }
      return;
    }
    catch (IOException paramString1)
    {
      do
      {
        localObject = str;
        Log.e(a, "Unable to serialize controller to disk", paramString1);
      } while (str == null);
      u.a(str);
      return;
    }
    finally
    {
      if (localObject != null) {
        u.a((Closeable)localObject);
      }
    }
  }
  
  private void b(boolean paramBoolean)
  {
    a(paramBoolean, n, o, p, q, r);
  }
  
  private static b c(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.optInt("com.facebook.share.internal.LikeActionController.version", -1) != 3) {
        return null;
      }
      b localb = new b(paramString.getString("object_id"), LikeView.ObjectType.fromInt(paramString.optInt("object_type", LikeView.ObjectType.UNKNOWN.getValue())));
      n = paramString.optString("like_count_string_with_like", null);
      o = paramString.optString("like_count_string_without_like", null);
      p = paramString.optString("social_sentence_with_like", null);
      q = paramString.optString("social_sentence_without_like", null);
      m = paramString.optBoolean("is_object_liked");
      r = paramString.optString("unlike_token", null);
      JSONObject localJSONObject = paramString.optJSONObject("facebook_dialog_analytics_bundle");
      paramString = localb;
      if (localJSONObject != null)
      {
        w = com.facebook.internal.c.a(localJSONObject);
        paramString = localb;
      }
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        Log.e(a, "Unable to deserialize controller from JSON", paramString);
        paramString = null;
      }
    }
    return paramString;
  }
  
  private void c(final Bundle paramBundle)
  {
    v = true;
    a(new k()
    {
      public void a()
      {
        if (u.a(b.h(b.this)))
        {
          localObject = new Bundle();
          ((Bundle)localObject).putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
          b.b(b.this, "com.facebook.sdk.LikeActionController.DID_ERROR", (Bundle)localObject);
          return;
        }
        Object localObject = new com.facebook.i();
        final b.i locali = new b.i(b.this, b.h(b.this), b.i(b.this));
        locali.a((com.facebook.i)localObject);
        ((com.facebook.i)localObject).a(new i.a()
        {
          public void a(com.facebook.i paramAnonymous2i)
          {
            b.a(b.this, false);
            if (localic != null)
            {
              b.b(b.this, false);
              return;
            }
            b.b(b.this, u.a(localie, null));
            b.c(b.this, true);
            b.g(b.this).a("fb_like_control_did_like", null, a);
            b.a(b.this, a);
          }
        });
        ((com.facebook.i)localObject).h();
      }
    });
  }
  
  private static void c(b paramb, String paramString, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramString);
    paramString = paramBundle;
    if (paramb != null)
    {
      paramString = paramBundle;
      if (paramBundle == null) {
        paramString = new Bundle();
      }
      paramString.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", paramb.a());
    }
    if (paramString != null) {
      localIntent.putExtras(paramString);
    }
    m.a(g.f()).a(localIntent);
  }
  
  private static void c(String paramString, LikeView.ObjectType paramObjectType, c paramc)
  {
    Object localObject = a(paramString);
    if (localObject != null)
    {
      a((b)localObject, paramObjectType, paramc);
      return;
    }
    b localb = b(paramString);
    localObject = localb;
    if (localb == null)
    {
      localObject = new b(paramString, paramObjectType);
      l((b)localObject);
    }
    a(paramString, (b)localObject);
    f.post(new Runnable()
    {
      public void run()
      {
        b.a(a);
      }
    });
    a(paramc, (b)localObject, null);
  }
  
  private static String d(String paramString)
  {
    String str = null;
    Object localObject = AccessToken.a();
    if (localObject != null) {
      str = ((AccessToken)localObject).b();
    }
    localObject = str;
    if (str != null) {
      localObject = u.b(str);
    }
    return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", new Object[] { paramString, u.a((String)localObject, ""), Integer.valueOf(i) });
  }
  
  private void d(final Bundle paramBundle)
  {
    v = true;
    com.facebook.i locali = new com.facebook.i();
    final j localj = new j(r);
    localj.a(locali);
    locali.a(new i.a()
    {
      public void a(com.facebook.i paramAnonymousi)
      {
        b.a(b.this, false);
        if (localjc != null)
        {
          b.b(b.this, true);
          return;
        }
        b.b(b.this, null);
        b.c(b.this, false);
        b.g(b.this).a("fb_like_control_did_unlike", null, paramBundle);
        b.a(b.this, paramBundle);
      }
    });
    locali.h();
  }
  
  private static void d(b paramb, String paramString)
  {
    c(paramb, paramString, null);
  }
  
  private void e(Bundle paramBundle)
  {
    if ((m != u) && (!a(m, paramBundle))) {
      if (m) {
        break label38;
      }
    }
    label38:
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  private static void e(String paramString)
  {
    g = paramString;
    g.f().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", g).apply();
  }
  
  /* Error */
  private static void j()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 276	com/facebook/share/internal/b:h	Z
    //   6: istore_0
    //   7: iload_0
    //   8: ifeq +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: new 153	android/os/Handler
    //   18: dup
    //   19: invokestatic 603	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   22: invokespecial 606	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   25: putstatic 149	com/facebook/share/internal/b:f	Landroid/os/Handler;
    //   28: invokestatic 327	com/facebook/g:f	()Landroid/content/Context;
    //   31: ldc_w 329
    //   34: iconst_0
    //   35: invokevirtual 335	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   38: ldc_w 608
    //   41: iconst_1
    //   42: invokeinterface 611 3 0
    //   47: putstatic 128	com/facebook/share/internal/b:i	I
    //   50: new 366	com/facebook/internal/i
    //   53: dup
    //   54: getstatic 102	com/facebook/share/internal/b:a	Ljava/lang/String;
    //   57: new 613	com/facebook/internal/i$d
    //   60: dup
    //   61: invokespecial 614	com/facebook/internal/i$d:<init>	()V
    //   64: invokespecial 617	com/facebook/internal/i:<init>	(Ljava/lang/String;Lcom/facebook/internal/i$d;)V
    //   67: putstatic 364	com/facebook/share/internal/b:b	Lcom/facebook/internal/i;
    //   70: invokestatic 619	com/facebook/share/internal/b:k	()V
    //   73: getstatic 625	com/facebook/internal/CallbackManagerImpl$RequestCodeOffset:Like	Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
    //   76: invokevirtual 628	com/facebook/internal/CallbackManagerImpl$RequestCodeOffset:toRequestCode	()I
    //   79: new 20	com/facebook/share/internal/b$5
    //   82: dup
    //   83: invokespecial 629	com/facebook/share/internal/b$5:<init>	()V
    //   86: invokestatic 634	com/facebook/internal/CallbackManagerImpl:a	(ILcom/facebook/internal/CallbackManagerImpl$a;)V
    //   89: iconst_1
    //   90: putstatic 276	com/facebook/share/internal/b:h	Z
    //   93: goto -82 -> 11
    //   96: astore_1
    //   97: ldc 2
    //   99: monitorexit
    //   100: aload_1
    //   101: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	2	0	bool	boolean
    //   96	5	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	7	96	finally
    //   15	93	96	finally
  }
  
  private static void k()
  {
    j = new com.facebook.c()
    {
      protected void a(AccessToken paramAnonymousAccessToken1, AccessToken paramAnonymousAccessToken2)
      {
        paramAnonymousAccessToken1 = g.f();
        if (paramAnonymousAccessToken2 == null)
        {
          b.a((b.g() + 1) % 1000);
          paramAnonymousAccessToken1.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", b.g()).apply();
          b.h().clear();
          b.i().a();
        }
        b.a(null, "com.facebook.sdk.LikeActionController.DID_RESET");
      }
    };
  }
  
  private AppEventsLogger l()
  {
    if (x == null) {
      x = AppEventsLogger.a(g.f());
    }
    return x;
  }
  
  private static void l(b paramb)
  {
    String str = m(paramb);
    paramb = d(k);
    if ((!u.a(str)) && (!u.a(paramb))) {
      e.a(new l(paramb, str));
    }
  }
  
  private static String m(b paramb)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("com.facebook.share.internal.LikeActionController.version", 3);
      localJSONObject.put("object_id", k);
      localJSONObject.put("object_type", l.getValue());
      localJSONObject.put("like_count_string_with_like", n);
      localJSONObject.put("like_count_string_without_like", o);
      localJSONObject.put("social_sentence_with_like", p);
      localJSONObject.put("social_sentence_without_like", q);
      localJSONObject.put("is_object_liked", m);
      localJSONObject.put("unlike_token", r);
      if (w != null)
      {
        paramb = com.facebook.internal.c.a(w);
        if (paramb != null) {
          localJSONObject.put("facebook_dialog_analytics_bundle", paramb);
        }
      }
      return localJSONObject.toString();
    }
    catch (JSONException paramb)
    {
      Log.e(a, "Unable to serialize controller to JSON", paramb);
    }
    return null;
  }
  
  private void m()
  {
    w = null;
    e(null);
  }
  
  private boolean n()
  {
    AccessToken localAccessToken = AccessToken.a();
    return (!t) && (s != null) && (localAccessToken != null) && (localAccessToken.d() != null) && (localAccessToken.d().contains("publish_actions"));
  }
  
  private void o()
  {
    if (AccessToken.a() == null)
    {
      p();
      return;
    }
    a(new k()
    {
      public void a()
      {
        final b.f localf = new b.f(b.this, b.h(b.this), b.i(b.this));
        final b.d locald = new b.d(b.this, b.h(b.this), b.i(b.this));
        com.facebook.i locali = new com.facebook.i();
        localf.a(locali);
        locald.a(locali);
        locali.a(new i.a()
        {
          public void a(com.facebook.i paramAnonymous2i)
          {
            if ((localfc != null) || (localdc != null))
            {
              n.a(LoggingBehavior.REQUESTS, b.f(), "Unable to refresh like state for id: '%s'", new Object[] { b.j(b.this) });
              return;
            }
            b.a(b.this, localfe, localde, localdf, localdg, localdh, localff);
          }
        });
        locali.h();
      }
    });
  }
  
  private void p()
  {
    e locale = new e(g.f(), g.h(), k);
    if (!locale.a()) {
      return;
    }
    locale.a(new q.a()
    {
      public void a(Bundle paramAnonymousBundle)
      {
        if ((paramAnonymousBundle == null) || (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED"))) {
          return;
        }
        boolean bool = paramAnonymousBundle.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED");
        String str1;
        String str2;
        label54:
        String str3;
        label71:
        String str4;
        if (paramAnonymousBundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"))
        {
          str1 = paramAnonymousBundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE");
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE")) {
            break label132;
          }
          str2 = paramAnonymousBundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE");
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE")) {
            break label144;
          }
          str3 = paramAnonymousBundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE");
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE")) {
            break label156;
          }
          str4 = paramAnonymousBundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE");
          label88:
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN")) {
            break label168;
          }
        }
        label132:
        label144:
        label156:
        label168:
        for (paramAnonymousBundle = paramAnonymousBundle.getString("com.facebook.platform.extra.UNLIKE_TOKEN");; paramAnonymousBundle = b.f(b.this))
        {
          b.a(b.this, bool, str1, str2, str3, str4, paramAnonymousBundle);
          return;
          str1 = b.b(b.this);
          break;
          str2 = b.c(b.this);
          break label54;
          str3 = b.d(b.this);
          break label71;
          str4 = b.e(b.this);
          break label88;
        }
      }
    });
  }
  
  public String a()
  {
    return k;
  }
  
  public void a(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    boolean bool2 = true;
    l().a("fb_like_control_did_tap", null, paramBundle);
    if (!m)
    {
      bool1 = true;
      if (!n()) {
        break label103;
      }
      b(bool1);
      if (!v) {
        break label64;
      }
      l().a("fb_like_control_did_undo_quickly", null, paramBundle);
    }
    label64:
    while (a(bool1, paramBundle))
    {
      return;
      bool1 = false;
      break;
    }
    if (!bool1) {}
    for (boolean bool1 = bool2;; bool1 = false)
    {
      b(bool1);
      b(paramActivity, paramFragment, paramBundle);
      return;
    }
    label103:
    b(paramActivity, paramFragment, paramBundle);
  }
  
  public String b()
  {
    if (m) {
      return n;
    }
    return o;
  }
  
  public String c()
  {
    if (m) {
      return p;
    }
    return q;
  }
  
  public boolean d()
  {
    return m;
  }
  
  public boolean e()
  {
    if ((d.e()) || (d.f())) {}
    AccessToken localAccessToken;
    do
    {
      return true;
      if ((t) || (l == LikeView.ObjectType.PAGE)) {
        return false;
      }
      localAccessToken = AccessToken.a();
    } while ((localAccessToken != null) && (localAccessToken.d() != null) && (localAccessToken.d().contains("publish_actions")));
    return false;
  }
  
  private abstract class a
  {
    protected String a;
    protected LikeView.ObjectType b;
    FacebookRequestError c;
    private GraphRequest e;
    
    protected a(String paramString, LikeView.ObjectType paramObjectType)
    {
      a = paramString;
      b = paramObjectType;
    }
    
    protected void a(FacebookRequestError paramFacebookRequestError)
    {
      n.a(LoggingBehavior.REQUESTS, b.f(), "Error running request for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
    }
    
    protected void a(GraphRequest paramGraphRequest)
    {
      e = paramGraphRequest;
      paramGraphRequest.a("v2.3");
      paramGraphRequest.a(new GraphRequest.b()
      {
        public void a(GraphResponse paramAnonymousGraphResponse)
        {
          c = paramAnonymousGraphResponse.a();
          if (c != null)
          {
            a(c);
            return;
          }
          b.a.this.a(paramAnonymousGraphResponse);
        }
      });
    }
    
    protected abstract void a(GraphResponse paramGraphResponse);
    
    void a(com.facebook.i parami)
    {
      parami.a(e);
    }
  }
  
  private static class b
    implements Runnable
  {
    private String a;
    private LikeView.ObjectType b;
    private b.c c;
    
    b(String paramString, LikeView.ObjectType paramObjectType, b.c paramc)
    {
      a = paramString;
      b = paramObjectType;
      c = paramc;
    }
    
    public void run()
    {
      b.b(a, b, c);
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(b paramb, FacebookException paramFacebookException);
  }
  
  private class d
    extends b.a
  {
    String e = b.b(b.this);
    String f = b.c(b.this);
    String g = b.d(b.this);
    String h = b.e(b.this);
    
    d(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
      a(new GraphRequest(AccessToken.a(), paramString, b.this, HttpMethod.GET));
    }
    
    protected void a(FacebookRequestError paramFacebookRequestError)
    {
      n.a(LoggingBehavior.REQUESTS, b.f(), "Error fetching engagement for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
      b.a(b.this, "get_engagement", paramFacebookRequestError);
    }
    
    protected void a(GraphResponse paramGraphResponse)
    {
      paramGraphResponse = u.b(paramGraphResponse.b(), "engagement");
      if (paramGraphResponse != null)
      {
        e = paramGraphResponse.optString("count_string_with_like", e);
        f = paramGraphResponse.optString("count_string_without_like", f);
        g = paramGraphResponse.optString("social_sentence_with_like", g);
        h = paramGraphResponse.optString("social_sentence_without_like", h);
      }
    }
  }
  
  private class e
    extends b.a
  {
    String e;
    
    e(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("fields", "og_object.fields(id)");
      putString("ids", paramString);
      a(new GraphRequest(AccessToken.a(), "", b.this, HttpMethod.GET));
    }
    
    protected void a(FacebookRequestError paramFacebookRequestError)
    {
      if (paramFacebookRequestError.d().contains("og_object"))
      {
        c = null;
        return;
      }
      n.a(LoggingBehavior.REQUESTS, b.f(), "Error getting the FB id for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
    }
    
    protected void a(GraphResponse paramGraphResponse)
    {
      paramGraphResponse = u.b(paramGraphResponse.b(), a);
      if (paramGraphResponse != null)
      {
        paramGraphResponse = paramGraphResponse.optJSONObject("og_object");
        if (paramGraphResponse != null) {
          e = paramGraphResponse.optString("id");
        }
      }
    }
  }
  
  private class f
    extends b.a
  {
    boolean e = b.k(b.this);
    String f;
    
    f(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("fields", "id,application");
      putString("object", paramString);
      a(new GraphRequest(AccessToken.a(), "me/og.likes", b.this, HttpMethod.GET));
    }
    
    protected void a(FacebookRequestError paramFacebookRequestError)
    {
      n.a(LoggingBehavior.REQUESTS, b.f(), "Error fetching like status for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
      b.a(b.this, "get_og_object_like", paramFacebookRequestError);
    }
    
    protected void a(GraphResponse paramGraphResponse)
    {
      paramGraphResponse = u.c(paramGraphResponse.b(), "data");
      if (paramGraphResponse != null)
      {
        int i = 0;
        while (i < paramGraphResponse.length())
        {
          JSONObject localJSONObject1 = paramGraphResponse.optJSONObject(i);
          if (localJSONObject1 != null)
          {
            e = true;
            JSONObject localJSONObject2 = localJSONObject1.optJSONObject("application");
            AccessToken localAccessToken = AccessToken.a();
            if ((localJSONObject2 != null) && (localAccessToken != null) && (u.a(localAccessToken.h(), localJSONObject2.optString("id")))) {
              f = localJSONObject1.optString("id");
            }
          }
          i += 1;
        }
      }
    }
  }
  
  private class g
    extends b.a
  {
    String e;
    boolean f;
    
    g(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("fields", "id");
      putString("ids", paramString);
      a(new GraphRequest(AccessToken.a(), "", b.this, HttpMethod.GET));
    }
    
    protected void a(FacebookRequestError paramFacebookRequestError)
    {
      n.a(LoggingBehavior.REQUESTS, b.f(), "Error getting the FB id for object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
    }
    
    protected void a(GraphResponse paramGraphResponse)
    {
      paramGraphResponse = u.b(paramGraphResponse.b(), a);
      if (paramGraphResponse != null)
      {
        e = paramGraphResponse.optString("id");
        if (u.a(e)) {
          break label44;
        }
      }
      label44:
      for (boolean bool = true;; bool = false)
      {
        f = bool;
        return;
      }
    }
  }
  
  private static class h
    implements Runnable
  {
    private static ArrayList<String> a = new ArrayList();
    private String b;
    private boolean c;
    
    h(String paramString, boolean paramBoolean)
    {
      b = paramString;
      c = paramBoolean;
    }
    
    public void run()
    {
      if (b != null)
      {
        a.remove(b);
        a.add(0, b);
      }
      if ((c) && (a.size() >= 128)) {
        while (64 < a.size())
        {
          String str = (String)a.remove(a.size() - 1);
          b.h().remove(str);
        }
      }
    }
  }
  
  private class i
    extends b.a
  {
    String e;
    
    i(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("object", paramString);
      a(new GraphRequest(AccessToken.a(), "me/og.likes", b.this, HttpMethod.POST));
    }
    
    protected void a(FacebookRequestError paramFacebookRequestError)
    {
      if (paramFacebookRequestError.b() == 3501)
      {
        c = null;
        return;
      }
      n.a(LoggingBehavior.REQUESTS, b.f(), "Error liking object '%s' with type '%s' : %s", new Object[] { a, b, paramFacebookRequestError });
      b.a(b.this, "publish_like", paramFacebookRequestError);
    }
    
    protected void a(GraphResponse paramGraphResponse)
    {
      e = u.a(paramGraphResponse.b(), "id");
    }
  }
  
  private class j
    extends b.a
  {
    private String f;
    
    j(String paramString)
    {
      super(null, null);
      f = paramString;
      a(new GraphRequest(AccessToken.a(), paramString, null, HttpMethod.DELETE));
    }
    
    protected void a(FacebookRequestError paramFacebookRequestError)
    {
      n.a(LoggingBehavior.REQUESTS, b.f(), "Error unliking object with unlike token '%s' : %s", new Object[] { f, paramFacebookRequestError });
      b.a(b.this, "publish_unlike", paramFacebookRequestError);
    }
    
    protected void a(GraphResponse paramGraphResponse) {}
  }
  
  private static abstract interface k
  {
    public abstract void a();
  }
  
  private static class l
    implements Runnable
  {
    private String a;
    private String b;
    
    l(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
    
    public void run()
    {
      b.a(a, b);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */