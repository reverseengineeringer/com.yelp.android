package com.google.android.gms.iid;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;

public class a
{
  static Map<String, a> a = new HashMap();
  static String f;
  private static e g;
  private static d h;
  Context b;
  KeyPair c;
  String d = "";
  long e;
  
  protected a(Context paramContext, String paramString, Bundle paramBundle)
  {
    b = paramContext.getApplicationContext();
    d = paramString;
  }
  
  static int a(Context paramContext)
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.w("InstanceID", "Never happens: can't find own package " + paramContext);
    }
    return 0;
  }
  
  public static a a(Context paramContext, Bundle paramBundle)
  {
    String str;
    if (paramBundle == null) {
      str = "";
    }
    for (;;)
    {
      try
      {
        Context localContext = paramContext.getApplicationContext();
        if (g == null)
        {
          g = new e(localContext);
          h = new d(localContext);
        }
        f = Integer.toString(a(localContext));
        a locala = (a)a.get(str);
        paramContext = locala;
        if (locala == null)
        {
          paramContext = new a(localContext, str, paramBundle);
          a.put(str, paramContext);
        }
        return paramContext;
      }
      finally {}
      str = paramBundle.getString("subtype");
      while (str != null) {
        break;
      }
      str = "";
    }
  }
  
  static String a(KeyPair paramKeyPair)
  {
    paramKeyPair = paramKeyPair.getPublic().getEncoded();
    try
    {
      paramKeyPair = MessageDigest.getInstance("SHA1").digest(paramKeyPair);
      paramKeyPair[0] = ((byte)((paramKeyPair[0] & 0xF) + 112 & 0xFF));
      paramKeyPair = Base64.encodeToString(paramKeyPair, 0, 8, 11);
      return paramKeyPair;
    }
    catch (NoSuchAlgorithmException paramKeyPair)
    {
      Log.w("InstanceID", "Unexpected error, device missing required alghorithms");
    }
    return null;
  }
  
  static String a(byte[] paramArrayOfByte)
  {
    return Base64.encodeToString(paramArrayOfByte, 11);
  }
  
  public static a b(Context paramContext)
  {
    return a(paramContext, null);
  }
  
  public String a(String paramString1, String paramString2, Bundle paramBundle)
    throws IOException
  {
    int j = 0;
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new IOException("MAIN_THREAD");
    }
    int i = 1;
    if (e()) {}
    for (Object localObject = null; localObject != null; localObject = g.a(d, paramString1, paramString2)) {
      return (String)localObject;
    }
    localObject = paramBundle;
    if (paramBundle == null) {
      localObject = new Bundle();
    }
    if (((Bundle)localObject).getString("ttl") != null) {
      i = 0;
    }
    if ("jwt".equals(((Bundle)localObject).getString("type"))) {
      i = j;
    }
    for (;;)
    {
      paramBundle = b(paramString1, paramString2, (Bundle)localObject);
      Log.w("InstanceID", "token: " + paramBundle);
      localObject = paramBundle;
      if (paramBundle == null) {
        break;
      }
      localObject = paramBundle;
      if (i == 0) {
        break;
      }
      g.a(d, paramString1, paramString2, paramBundle, f);
      return paramBundle;
    }
  }
  
  KeyPair a()
  {
    if (c == null) {
      c = g.c(d);
    }
    if (c == null)
    {
      e = System.currentTimeMillis();
      c = g.a(d, e);
    }
    return c;
  }
  
  public String b(String paramString1, String paramString2, Bundle paramBundle)
    throws IOException
  {
    if (paramString2 != null) {
      paramBundle.putString("scope", paramString2);
    }
    paramBundle.putString("sender", paramString1);
    if ("".equals(d)) {}
    for (paramString2 = paramString1;; paramString2 = d)
    {
      if (!paramBundle.containsKey("legacy.register"))
      {
        paramBundle.putString("subscription", paramString1);
        paramBundle.putString("subtype", paramString2);
        paramBundle.putString("X-subscription", paramString1);
        paramBundle.putString("X-subtype", paramString2);
      }
      paramString1 = h.a(paramBundle, a());
      return h.b(paramString1);
    }
  }
  
  void b()
  {
    e = 0L;
    g.d(d);
    c = null;
  }
  
  public e c()
  {
    return g;
  }
  
  d d()
  {
    return h;
  }
  
  boolean e()
  {
    String str = g.a("appVersion");
    if ((str == null) || (!str.equals(f))) {}
    long l;
    do
    {
      do
      {
        return true;
        str = g.a("lastToken");
      } while (str == null);
      l = Long.parseLong(str);
    } while (System.currentTimeMillis() / 1000L - Long.valueOf(l).longValue() > 604800L);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */