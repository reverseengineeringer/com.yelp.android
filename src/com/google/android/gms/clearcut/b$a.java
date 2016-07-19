package com.google.android.gms.clearcut;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.lu.d;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import java.util.ArrayList;

public class b$a
{
  private int b = b.a(a);
  private String c = b.b(a);
  private String d = b.c(a);
  private String e = b.d(a);
  private int f = b.e(a);
  private final b.b g;
  private b.b h;
  private ArrayList<Integer> i = null;
  private final lu.d j = new lu.d();
  private boolean k = false;
  
  private b$a(b paramb, byte[] paramArrayOfByte)
  {
    this(paramb, paramArrayOfByte, null);
  }
  
  private b$a(b paramb, byte[] paramArrayOfByte, b.b paramb1)
  {
    d = b.c(paramb);
    e = b.d(paramb);
    j.a = b.f(paramb).a();
    j.b = b.f(paramb).b();
    j.u = b.h(paramb).a(b.g(paramb));
    j.p = b.i(paramb).a(j.a);
    if (paramArrayOfByte != null) {
      j.j = paramArrayOfByte;
    }
    g = paramb1;
  }
  
  public LogEventParcelable a()
  {
    return new LogEventParcelable(new PlayLoggerContext(b.k(a), b.l(a), b, c, d, e, b.j(a), f), j, g, h, b.a(i));
  }
  
  public a a(int paramInt)
  {
    j.e = paramInt;
    return this;
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient)
  {
    if (k) {
      throw new IllegalStateException("do not reuse LogEventBuilder");
    }
    k = true;
    return b.m(a).a(paramGoogleApiClient, a());
  }
  
  public a b(int paramInt)
  {
    j.f = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.clearcut.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */