package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;

@ey
public final class fe
{
  public static gf a(Context paramContext, fh paramfh, fe.a parama)
  {
    if (lO.wV) {
      return b(paramContext, paramfh, parama);
    }
    return c(paramContext, paramfh, parama);
  }
  
  private static gf b(Context paramContext, fh paramfh, fe.a parama)
  {
    gr.S("Fetching ad response from local ad request service.");
    paramContext = new ff.a(paramContext, paramfh, parama);
    paramContext.start();
    return paramContext;
  }
  
  private static gf c(Context paramContext, fh paramfh, fe.a parama)
  {
    gr.S("Fetching ad response from remote ad request service.");
    if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext) != 0)
    {
      gr.W("Failed to connect to remote ad request service.");
      return null;
    }
    return new ff.b(paramContext, paramfh, parama);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */