package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.g;
import java.util.UUID;

public class e
{
  public static void a(a parama)
  {
    a(parama, new FacebookException("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
  }
  
  public static void a(a parama, Activity paramActivity)
  {
    paramActivity.startActivityForResult(parama.b(), parama.d());
    parama.e();
  }
  
  public static void a(a parama, Bundle paramBundle, d paramd)
  {
    v.b(g.f());
    v.a(g.f());
    String str = paramd.name();
    Object localObject = d(paramd);
    if (localObject == null) {
      throw new FacebookException("Unable to fetch the Url for the DialogFeature : '" + str + "'");
    }
    int i = p.a();
    paramBundle = s.a(parama.c().toString(), i, paramBundle);
    if (paramBundle == null) {
      throw new FacebookException("Unable to fetch the app's key-hash");
    }
    if (((Uri)localObject).isRelative()) {}
    for (paramBundle = u.a(s.a(), ((Uri)localObject).toString(), paramBundle);; paramBundle = u.a(((Uri)localObject).getAuthority(), ((Uri)localObject).getPath(), paramBundle))
    {
      localObject = new Bundle();
      ((Bundle)localObject).putString("url", paramBundle.toString());
      ((Bundle)localObject).putBoolean("is_fallback", true);
      paramBundle = new Intent();
      p.a(paramBundle, parama.c().toString(), paramd.getAction(), p.a(), (Bundle)localObject);
      paramBundle.setClass(g.f(), FacebookActivity.class);
      paramBundle.setAction("FacebookDialogFragment");
      parama.a(paramBundle);
      return;
    }
  }
  
  public static void a(a parama, Fragment paramFragment)
  {
    paramFragment.startActivityForResult(parama.b(), parama.d());
    parama.e();
  }
  
  public static void a(a parama, FacebookException paramFacebookException)
  {
    b(parama, paramFacebookException);
  }
  
  public static void a(a parama, a parama1, d paramd)
  {
    Context localContext = g.f();
    String str = paramd.getAction();
    int i = c(paramd);
    if (i == -1) {
      throw new FacebookException("Cannot present this dialog. This likely means that the Facebook app is not installed.");
    }
    if (p.a(i)) {}
    for (parama1 = parama1.a();; parama1 = parama1.b())
    {
      paramd = parama1;
      if (parama1 == null) {
        paramd = new Bundle();
      }
      parama1 = p.a(localContext, parama.c().toString(), str, i, paramd);
      if (parama1 != null) {
        break;
      }
      throw new FacebookException("Unable to create Intent; this likely means theFacebook app is not installed.");
    }
    parama.a(parama1);
  }
  
  public static void a(a parama, String paramString, Bundle paramBundle)
  {
    v.b(g.f());
    v.a(g.f());
    Bundle localBundle = new Bundle();
    localBundle.putString("action", paramString);
    localBundle.putBundle("params", paramBundle);
    paramBundle = new Intent();
    p.a(paramBundle, parama.c().toString(), paramString, p.a(), localBundle);
    paramBundle.setClass(g.f(), FacebookActivity.class);
    paramBundle.setAction("FacebookDialogFragment");
    parama.a(paramBundle);
  }
  
  public static boolean a(d paramd)
  {
    return c(paramd) != -1;
  }
  
  private static int[] a(String paramString1, String paramString2, d paramd)
  {
    paramString1 = u.a(paramString1, paramString2, paramd.name());
    if (paramString1 != null) {
      return paramString1.d();
    }
    return new int[] { paramd.getMinVersion() };
  }
  
  public static void b(a parama, FacebookException paramFacebookException)
  {
    if (paramFacebookException == null) {
      return;
    }
    v.b(g.f());
    Intent localIntent = new Intent();
    localIntent.setClass(g.f(), FacebookActivity.class);
    localIntent.setAction(FacebookActivity.a);
    p.a(localIntent, parama.c().toString(), null, p.a(), p.a(paramFacebookException));
    parama.a(localIntent);
  }
  
  public static boolean b(d paramd)
  {
    return d(paramd) != null;
  }
  
  public static int c(d paramd)
  {
    String str1 = g.h();
    String str2 = paramd.getAction();
    return p.a(str2, a(str1, str2, paramd));
  }
  
  private static Uri d(d paramd)
  {
    Object localObject = paramd.name();
    paramd = paramd.getAction();
    localObject = u.a(g.h(), paramd, (String)localObject);
    paramd = null;
    if (localObject != null) {
      paramd = ((u.a)localObject).c();
    }
    return paramd;
  }
  
  public static abstract interface a
  {
    public abstract Bundle a();
    
    public abstract Bundle b();
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */