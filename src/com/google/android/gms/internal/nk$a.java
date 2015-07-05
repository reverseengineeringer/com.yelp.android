package com.google.android.gms.internal;

import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.c.a;

final class nk$a
  extends jl<ni>.b<c.a>
{
  private final int Iv;
  private final String[] aha;
  
  public nk$a(nk paramnk, c.a parama, int paramInt, String[] paramArrayOfString)
  {
    super(paramnk, parama);
    Iv = LocationStatusCodes.eC(paramInt);
    aha = paramArrayOfString;
  }
  
  protected void a(c.a parama)
  {
    if (parama != null) {
      parama.a(Iv, aha);
    }
  }
  
  protected void hx() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */