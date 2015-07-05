package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;

public final class jl$e
  extends js.a
{
  private jl MT;
  
  public jl$e(jl paramjl)
  {
    MT = paramjl;
  }
  
  public void b(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    jx.b("onPostInitComplete can be called only once per call to getServiceFromBroker", MT);
    MT.a(paramInt, paramIBinder, paramBundle);
    MT = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */