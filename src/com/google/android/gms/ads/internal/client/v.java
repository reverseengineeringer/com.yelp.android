package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.fv;

@fv
public class v
{
  private static final Object a = new Object();
  private static v b;
  private final a c = new a();
  private final n d = new n();
  private final t e = new t();
  private final e f = new e();
  private final bq g = new bq();
  private final com.yelp.android.bb.e h = new com.yelp.android.bb.e();
  
  static
  {
    a(new v());
  }
  
  public static a a()
  {
    return ec;
  }
  
  protected static void a(v paramv)
  {
    synchronized (a)
    {
      b = paramv;
      return;
    }
  }
  
  public static n b()
  {
    return ed;
  }
  
  public static t c()
  {
    return ee;
  }
  
  public static bq d()
  {
    return eg;
  }
  
  private static v e()
  {
    synchronized (a)
    {
      v localv = b;
      return localv;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */