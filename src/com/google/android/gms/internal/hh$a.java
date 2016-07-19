package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public class hh$a
{
  public final String a;
  public final double b;
  public final double c;
  public final double d;
  public final int e;
  
  public hh$a(String paramString, double paramDouble1, double paramDouble2, double paramDouble3, int paramInt)
  {
    a = paramString;
    c = paramDouble1;
    b = paramDouble2;
    d = paramDouble3;
    e = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {}
    do
    {
      return false;
      paramObject = (a)paramObject;
    } while ((!zzw.equal(a, a)) || (b != b) || (c != c) || (e != e) || (Double.compare(d, d) != 0));
    return true;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { a, Double.valueOf(b), Double.valueOf(c), Double.valueOf(d), Integer.valueOf(e) });
  }
  
  public String toString()
  {
    return zzw.zzy(this).zzg("name", a).zzg("minBound", Double.valueOf(c)).zzg("maxBound", Double.valueOf(b)).zzg("percent", Double.valueOf(d)).zzg("count", Integer.valueOf(e)).toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */