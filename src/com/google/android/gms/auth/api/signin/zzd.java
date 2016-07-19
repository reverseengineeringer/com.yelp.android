package com.google.android.gms.auth.api.signin;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.yelp.android.ba.a.e;

public enum zzd
{
  private final String zzVY;
  private final String zzXj;
  private final int zzXk;
  
  private zzd(String paramString1, int paramInt, String paramString2)
  {
    zzXj = paramString1;
    zzXk = paramInt;
    zzVY = paramString2;
  }
  
  public static zzd zzbL(String paramString)
  {
    if (paramString != null)
    {
      zzd[] arrayOfzzd = values();
      int j = arrayOfzzd.length;
      int i = 0;
      while (i < j)
      {
        zzd localzzd = arrayOfzzd[i];
        if (localzzd.zzmT().equals(paramString)) {
          return localzzd;
        }
        i += 1;
      }
      Log.w("IdProvider", "Unrecognized providerId: " + paramString);
    }
    return null;
  }
  
  public String toString()
  {
    return zzXj;
  }
  
  public CharSequence zzae(Context paramContext)
  {
    return paramContext.getResources().getString(zzXk);
  }
  
  public String zzmT()
  {
    return zzXj;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.api.signin.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */