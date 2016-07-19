package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.net.http.SslError;
import android.webkit.WebChromeClient;

@TargetApi(14)
public class he$c
  extends he.b
{
  public String a(SslError paramSslError)
  {
    return paramSslError.getUrl();
  }
  
  public WebChromeClient c(ib paramib)
  {
    return new ij(paramib);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.he.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */