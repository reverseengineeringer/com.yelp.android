package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.j;

@fv
public class a
{
  public gy a(Context paramContext, AdRequestInfoParcel.a parama, j paramj, a parama1)
  {
    if (b.c.getBundle("sdk_less_server_data") != null) {}
    for (paramContext = new l(paramContext, parama, parama1);; paramContext = new zzb(paramContext, parama, paramj, parama1))
    {
      paramContext.g();
      return paramContext;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(gr.a parama);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */