package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.b;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.q;
import com.google.android.gms.ads.internal.request.AdResponseParcel;

@fv
public class fl
{
  public hf a(Context paramContext, b paramb, gr.a parama, j paramj, ib paramib, ds paramds, a parama1, ax paramax)
  {
    AdResponseParcel localAdResponseParcel = b;
    if (h) {
      paramContext = new fo(paramContext, parama, paramds, parama1, paramax, paramib);
    }
    for (;;)
    {
      gz.a("AdRenderer: " + paramContext.getClass().getName());
      paramContext.e();
      return paramContext;
      if (t)
      {
        if ((paramb instanceof q))
        {
          paramContext = new fp(paramContext, (q)paramb, new cz(), parama, paramj, parama1);
        }
        else
        {
          parama = new StringBuilder().append("Invalid NativeAdManager type. Found: ");
          if (paramb != null) {}
          for (paramContext = paramb.getClass().getName();; paramContext = "null") {
            throw new IllegalArgumentException(paramContext + "; Required: NativeAdManager.");
          }
        }
      }
      else if (p) {
        paramContext = new fk(paramContext, parama, paramib, parama1);
      } else if ((((Boolean)ao.U.c()).booleanValue()) && (kf.g()) && (!kf.i()) && (ke)) {
        paramContext = new fn(paramContext, parama, paramib, parama1);
      } else {
        paramContext = new fm(paramContext, parama, paramib, parama1);
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void b(gr paramgr);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */