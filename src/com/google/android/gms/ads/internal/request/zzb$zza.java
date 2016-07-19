package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.fv;

@fv
final class zzb$zza
  extends Exception
{
  private final int zzGu;
  
  public zzb$zza(String paramString, int paramInt)
  {
    super(paramString);
    zzGu = paramInt;
  }
  
  public int getErrorCode()
  {
    return zzGu;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.zzb.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */