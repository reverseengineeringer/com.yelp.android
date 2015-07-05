package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebSettings;

@ey
public final class go
{
  public static void a(Context paramContext, WebSettings paramWebSettings)
  {
    gm.a(paramContext, paramWebSettings);
    paramWebSettings.setMediaPlaybackRequiresUserGesture(false);
  }
  
  public static String getDefaultUserAgent(Context paramContext)
  {
    return WebSettings.getDefaultUserAgent(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */