package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;
import java.net.URISyntaxException;

@ey
public class gz
  extends WebViewClient
{
  private final gu mo;
  private final String xr = Z(paramString);
  private boolean xs = false;
  private final fb xt;
  
  public gz(fb paramfb, gu paramgu, String paramString)
  {
    mo = paramgu;
    xt = paramfb;
  }
  
  private String Z(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return paramString;
      try
      {
        if (paramString.endsWith("/"))
        {
          String str = paramString.substring(0, paramString.length() - 1);
          return str;
        }
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        gr.T(localIndexOutOfBoundsException.getMessage());
      }
    }
    return paramString;
  }
  
  protected boolean Y(String paramString)
  {
    paramString = Z(paramString);
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return false;
      try
      {
        Object localObject1 = new URI(paramString);
        if ("passback".equals(((URI)localObject1).getScheme()))
        {
          gr.S("Passback received");
          xt.cG();
          return true;
        }
        if (!TextUtils.isEmpty(xr))
        {
          Object localObject2 = new URI(xr);
          paramString = ((URI)localObject2).getHost();
          String str = ((URI)localObject1).getHost();
          localObject2 = ((URI)localObject2).getPath();
          localObject1 = ((URI)localObject1).getPath();
          if ((jv.equal(paramString, str)) && (jv.equal(localObject2, localObject1)))
          {
            gr.S("Passback received");
            xt.cG();
            return true;
          }
        }
      }
      catch (URISyntaxException paramString)
      {
        gr.T(paramString.getMessage());
      }
    }
    return false;
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    gr.S("JavascriptAdWebViewClient::onLoadResource: " + paramString);
    if (!Y(paramString)) {
      mo.dD().onLoadResource(mo, paramString);
    }
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    gr.S("JavascriptAdWebViewClient::onPageFinished: " + paramString);
    if (!xs)
    {
      xt.cF();
      xs = true;
    }
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    gr.S("JavascriptAdWebViewClient::shouldOverrideUrlLoading: " + paramString);
    if (Y(paramString))
    {
      gr.S("shouldOverrideUrlLoading: received passback url");
      return true;
    }
    return mo.dD().shouldOverrideUrlLoading(mo, paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */