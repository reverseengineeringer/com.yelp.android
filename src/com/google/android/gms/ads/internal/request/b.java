package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.zze;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hf;
import com.google.android.gms.internal.hu;

@fv
public final class b
{
  public static hf a(Context paramContext, VersionInfoParcel paramVersionInfoParcel, hu<AdRequestInfoParcel> paramhu, a parama)
  {
    a(paramContext, paramVersionInfoParcel, paramhu, parama, new b()
    {
      public boolean a(VersionInfoParcel paramAnonymousVersionInfoParcel)
      {
        return (e) || ((zze.zzap(a)) && (!((Boolean)ao.B.c()).booleanValue()));
      }
    });
  }
  
  static hf a(Context paramContext, VersionInfoParcel paramVersionInfoParcel, hu<AdRequestInfoParcel> paramhu, a parama, b paramb)
  {
    if (paramb.a(paramVersionInfoParcel)) {
      return a(paramContext, paramhu, parama);
    }
    return b(paramContext, paramVersionInfoParcel, paramhu, parama);
  }
  
  private static hf a(Context paramContext, hu<AdRequestInfoParcel> paramhu, a parama)
  {
    gz.a("Fetching ad response from local ad request service.");
    paramContext = new c.a(paramContext, paramhu, parama);
    paramContext.c();
    return paramContext;
  }
  
  private static hf b(Context paramContext, VersionInfoParcel paramVersionInfoParcel, hu<AdRequestInfoParcel> paramhu, a parama)
  {
    gz.a("Fetching ad response from remote ad request service.");
    if (!v.a().b(paramContext))
    {
      gz.d("Failed to connect to remote ad request service.");
      return null;
    }
    return new c.b(paramContext, paramVersionInfoParcel, paramhu, parama);
  }
  
  public static abstract interface a
  {
    public abstract void a(AdResponseParcel paramAdResponseParcel);
  }
  
  static abstract interface b
  {
    public abstract boolean a(VersionInfoParcel paramVersionInfoParcel);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */