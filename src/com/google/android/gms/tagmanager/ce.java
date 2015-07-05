package com.google.android.gms.tagmanager;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class ce
{
  private static ce asm;
  private volatile String aqm;
  private volatile ce.a asn;
  private volatile String aso;
  private volatile String asp;
  
  ce()
  {
    clear();
  }
  
  private String cK(String paramString)
  {
    return paramString.split("&")[0].split("=")[1];
  }
  
  private String j(Uri paramUri)
  {
    return paramUri.getQuery().replace("&gtm_debug=x", "");
  }
  
  static ce qa()
  {
    try
    {
      if (asm == null) {
        asm = new ce();
      }
      ce localce = asm;
      return localce;
    }
    finally {}
  }
  
  void clear()
  {
    asn = ce.a.asq;
    aso = null;
    aqm = null;
    asp = null;
  }
  
  String getContainerId()
  {
    return aqm;
  }
  
  boolean i(Uri paramUri)
  {
    boolean bool = true;
    String str;
    try
    {
      str = URLDecoder.decode(paramUri.toString(), "UTF-8");
      if (!str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
        break label153;
      }
      bh.V("Container preview url: " + str);
      if (!str.matches(".*?&gtm_debug=x$")) {
        break label138;
      }
      asn = ce.a.ass;
    }
    catch (UnsupportedEncodingException paramUri)
    {
      for (;;)
      {
        bool = false;
        continue;
        asn = ce.a.asr;
      }
    }
    finally {}
    asp = j(paramUri);
    if ((asn == ce.a.asr) || (asn == ce.a.ass)) {
      aso = ("/r?" + asp);
    }
    aqm = cK(asp);
    for (;;)
    {
      return bool;
      label138:
      label153:
      if (str.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"))
      {
        if (cK(paramUri.getQuery()).equals(aqm))
        {
          bh.V("Exit preview mode for container: " + aqm);
          asn = ce.a.asq;
          aso = null;
        }
      }
      else
      {
        bh.W("Invalid preview uri: " + str);
        bool = false;
        continue;
      }
      bool = false;
    }
  }
  
  ce.a qb()
  {
    return asn;
  }
  
  String qc()
  {
    return aso;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */