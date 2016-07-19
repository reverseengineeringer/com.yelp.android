package com.google.android.gms.tagmanager;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class zzcb
{
  private static zzcb a;
  private volatile zza b;
  private volatile String c;
  private volatile String d;
  private volatile String e;
  
  zzcb()
  {
    e();
  }
  
  static zzcb a()
  {
    try
    {
      if (a == null) {
        a = new zzcb();
      }
      zzcb localzzcb = a;
      return localzzcb;
    }
    finally {}
  }
  
  private String a(String paramString)
  {
    return paramString.split("&")[0].split("=")[1];
  }
  
  private String b(Uri paramUri)
  {
    return paramUri.getQuery().replace("&gtm_debug=x", "");
  }
  
  boolean a(Uri paramUri)
  {
    boolean bool = true;
    String str;
    try
    {
      str = URLDecoder.decode(paramUri.toString(), "UTF-8");
      if (!str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
        break label153;
      }
      m.d("Container preview url: " + str);
      if (!str.matches(".*?&gtm_debug=x$")) {
        break label138;
      }
      b = zza.zzbjW;
    }
    catch (UnsupportedEncodingException paramUri)
    {
      for (;;)
      {
        bool = false;
        continue;
        b = zza.zzbjV;
      }
    }
    finally {}
    e = b(paramUri);
    if ((b == zza.zzbjV) || (b == zza.zzbjW)) {
      d = ("/r?" + e);
    }
    c = a(e);
    for (;;)
    {
      return bool;
      label138:
      label153:
      if (str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"))
      {
        if (a(paramUri.getQuery()).equals(c))
        {
          m.d("Exit preview mode for container: " + c);
          b = zza.zzbjU;
          d = null;
        }
      }
      else
      {
        m.b("Invalid preview uri: " + str);
        bool = false;
        continue;
      }
      bool = false;
    }
  }
  
  zza b()
  {
    return b;
  }
  
  String c()
  {
    return d;
  }
  
  String d()
  {
    return c;
  }
  
  void e()
  {
    b = zza.zzbjU;
    d = null;
    c = null;
    e = null;
  }
  
  static enum zza
  {
    private zza() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */