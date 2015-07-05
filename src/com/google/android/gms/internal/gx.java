package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@ey
public class gx
  extends gv
{
  public gx(gu paramgu, boolean paramBoolean)
  {
    super(paramgu, paramBoolean);
  }
  
  protected WebResourceResponse d(Context paramContext, String paramString1, String paramString2)
  {
    paramString2 = (HttpURLConnection)new URL(paramString2).openConnection();
    try
    {
      gi.a(paramContext, paramString1, true, paramString2, true);
      paramString2.addRequestProperty("Cache-Control", "max-stale=3600");
      paramString2.connect();
      paramContext = new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(gi.a(new InputStreamReader(paramString2.getInputStream())).getBytes("UTF-8")));
      return paramContext;
    }
    finally
    {
      paramString2.disconnect();
    }
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    try
    {
      if (!"mraid.js".equalsIgnoreCase(new File(paramString).getName())) {
        return super.shouldInterceptRequest(paramWebView, paramString);
      }
      if (!(paramWebView instanceof gu))
      {
        gr.W("Tried to intercept request from a WebView that wasn't an AdWebView.");
        return super.shouldInterceptRequest(paramWebView, paramString);
      }
      Object localObject = (gu)paramWebView;
      ((gu)localObject).dD().cg();
      if (acoq)
      {
        gr.V("shouldInterceptRequest(https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js)");
        return d(((gu)localObject).getContext(), mo.dG().wS, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
      }
      if (((gu)localObject).dH())
      {
        gr.V("shouldInterceptRequest(https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js)");
        return d(((gu)localObject).getContext(), mo.dG().wS, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
      }
      gr.V("shouldInterceptRequest(https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js)");
      localObject = d(((gu)localObject).getContext(), mo.dG().wS, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
      return (WebResourceResponse)localObject;
    }
    catch (IOException localIOException)
    {
      gr.W("Could not fetch MRAID JS. " + localIOException.getMessage());
    }
    return super.shouldInterceptRequest(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */