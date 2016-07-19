package com.google.android.gms.ads.internal;

import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.overlay.d;
import com.google.android.gms.ads.internal.purchase.i;
import com.google.android.gms.internal.al;
import com.google.android.gms.internal.am;
import com.google.android.gms.internal.an;
import com.google.android.gms.internal.ar;
import com.google.android.gms.internal.ck;
import com.google.android.gms.internal.cs;
import com.google.android.gms.internal.do;
import com.google.android.gms.internal.fl;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.ge;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.he;
import com.google.android.gms.internal.hj;
import com.google.android.gms.internal.id;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.jv;

@fv
public class s
{
  private static final Object a = new Object();
  private static s b;
  private final com.google.android.gms.ads.internal.request.a c = new com.google.android.gms.ads.internal.request.a();
  private final com.google.android.gms.ads.internal.overlay.a d = new com.google.android.gms.ads.internal.overlay.a();
  private final d e = new d();
  private final fl f = new fl();
  private final hd g = new hd();
  private final id h = new id();
  private final he i = he.a(Build.VERSION.SDK_INT);
  private final gt j = new gt(g);
  private final jt k = new jv();
  private final ar l = new ar();
  private final ge m = new ge();
  private final am n = new am();
  private final al o = new al();
  private final an p = new an();
  private final i q = new i();
  private final cs r = new cs();
  private final hj s = new hj();
  private final do t = new do();
  private final p u = new p();
  private final ck v = new ck();
  
  static
  {
    a(new s());
  }
  
  public static com.google.android.gms.ads.internal.request.a a()
  {
    return uc;
  }
  
  protected static void a(s params)
  {
    synchronized (a)
    {
      b = params;
      return;
    }
  }
  
  public static com.google.android.gms.ads.internal.overlay.a b()
  {
    return ud;
  }
  
  public static d c()
  {
    return ue;
  }
  
  public static fl d()
  {
    return uf;
  }
  
  public static hd e()
  {
    return ug;
  }
  
  public static id f()
  {
    return uh;
  }
  
  public static he g()
  {
    return ui;
  }
  
  public static gt h()
  {
    return uj;
  }
  
  public static jt i()
  {
    return uk;
  }
  
  public static ar j()
  {
    return ul;
  }
  
  public static ge k()
  {
    return um;
  }
  
  public static am l()
  {
    return un;
  }
  
  public static al m()
  {
    return uo;
  }
  
  public static an n()
  {
    return up;
  }
  
  public static i o()
  {
    return uq;
  }
  
  public static cs p()
  {
    return ur;
  }
  
  public static hj q()
  {
    return us;
  }
  
  public static do r()
  {
    return ut;
  }
  
  public static p s()
  {
    return uu;
  }
  
  public static ck t()
  {
    return uv;
  }
  
  private static s u()
  {
    synchronized (a)
    {
      s locals = b;
      return locals;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */