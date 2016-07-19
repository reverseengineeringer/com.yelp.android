package com.google.android.gms.ads.internal.formats;

import android.os.Bundle;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bh.a;
import com.google.android.gms.internal.fv;
import java.util.List;

@fv
public class d
  extends bh.a
  implements h.a
{
  private String a;
  private List<c> b;
  private String c;
  private bd d;
  private String e;
  private double f;
  private String g;
  private String h;
  private a i;
  private Bundle j;
  private Object k = new Object();
  private h l;
  
  public d(String paramString1, List paramList, String paramString2, bd parambd, String paramString3, double paramDouble, String paramString4, String paramString5, a parama, Bundle paramBundle)
  {
    a = paramString1;
    b = paramList;
    c = paramString2;
    d = parambd;
    e = paramString3;
    f = paramDouble;
    g = paramString4;
    h = paramString5;
    i = parama;
    j = paramBundle;
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(h paramh)
  {
    synchronized (k)
    {
      l = paramh;
      return;
    }
  }
  
  public List b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public bd d()
  {
    return d;
  }
  
  public String e()
  {
    return e;
  }
  
  public double f()
  {
    return f;
  }
  
  public String g()
  {
    return g;
  }
  
  public String h()
  {
    return h;
  }
  
  public com.google.android.gms.dynamic.c i()
  {
    return com.google.android.gms.dynamic.d.a(l);
  }
  
  public String j()
  {
    return "2";
  }
  
  public String k()
  {
    return "";
  }
  
  public a l()
  {
    return i;
  }
  
  public Bundle m()
  {
    return j;
  }
  
  public void n()
  {
    a = null;
    b = null;
    c = null;
    d = null;
    e = null;
    f = 0.0D;
    g = null;
    h = null;
    i = null;
    j = null;
    k = null;
    l = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */