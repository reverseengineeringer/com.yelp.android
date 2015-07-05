package com.google.android.gms.analytics;

import com.google.android.gms.internal.ha;
import java.util.Collection;
import java.util.Map;

abstract interface d
{
  public abstract void a(Map<String, String> paramMap, long paramLong, String paramString, Collection<ha> paramCollection);
  
  public abstract r dV();
  
  public abstract void dispatch();
  
  public abstract void l(long paramLong);
  
  public abstract void setDryRun(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */