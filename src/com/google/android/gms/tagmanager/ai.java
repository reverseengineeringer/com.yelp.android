package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class ai
{
  private static v<d.a> a(v<d.a> paramv)
  {
    try
    {
      v localv = new v(ag.c(a(ag.a((d.a)paramv.a()))), paramv.b());
      return localv;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      m.a("Escape URI: unsupported encoding", localUnsupportedEncodingException);
    }
    return paramv;
  }
  
  private static v<d.a> a(v<d.a> paramv, int paramInt)
  {
    if (!a((d.a)paramv.a()))
    {
      m.a("Escaping can only be applied to strings.");
      return paramv;
    }
    switch (paramInt)
    {
    default: 
      m.a("Unsupported Value Escaping: " + paramInt);
      return paramv;
    }
    return a(paramv);
  }
  
  static v<d.a> a(v<d.a> paramv, int... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramv = a(paramv, paramVarArgs[i]);
      i += 1;
    }
    return paramv;
  }
  
  static String a(String paramString)
    throws UnsupportedEncodingException
  {
    return URLEncoder.encode(paramString, "UTF-8").replaceAll("\\+", "%20");
  }
  
  private static boolean a(d.a parama)
  {
    return ag.c(parama) instanceof String;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */