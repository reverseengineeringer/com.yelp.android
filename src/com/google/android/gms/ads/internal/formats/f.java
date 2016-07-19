package com.google.android.gms.ads.internal.formats;

import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bl.a;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;
import com.yelp.android.g.i;
import java.util.Arrays;
import java.util.List;

@fv
public class f
  extends bl.a
  implements h.a
{
  private final a a;
  private final String b;
  private final i<String, c> c;
  private final i<String, String> d;
  private final Object e = new Object();
  private h f;
  
  public f(String paramString, i<String, c> parami, i<String, String> parami1, a parama)
  {
    b = paramString;
    c = parami;
    d = parami1;
    a = parama;
  }
  
  public String a(String paramString)
  {
    return (String)d.get(paramString);
  }
  
  public List<String> a()
  {
    int n = 0;
    String[] arrayOfString = new String[c.size() + d.size()];
    int j = 0;
    int i = 0;
    int k;
    int m;
    for (;;)
    {
      k = n;
      m = i;
      if (j >= c.size()) {
        break;
      }
      arrayOfString[i] = ((String)c.b(j));
      i += 1;
      j += 1;
    }
    while (k < d.size())
    {
      arrayOfString[m] = ((String)d.b(k));
      k += 1;
      m += 1;
    }
    return Arrays.asList(arrayOfString);
  }
  
  public void a(h paramh)
  {
    synchronized (e)
    {
      f = paramh;
      return;
    }
  }
  
  public bd b(String paramString)
  {
    return (bd)c.get(paramString);
  }
  
  public void b()
  {
    synchronized (e)
    {
      if (f == null)
      {
        gz.b("Attempt to perform recordImpression before ad initialized.");
        return;
      }
      f.a();
      return;
    }
  }
  
  public void c(String paramString)
  {
    synchronized (e)
    {
      if (f == null)
      {
        gz.b("Attempt to call performClick before ad initialized.");
        return;
      }
      f.a(paramString, null, null, null);
      return;
    }
  }
  
  public String j()
  {
    return "3";
  }
  
  public String k()
  {
    return b;
  }
  
  public a l()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */