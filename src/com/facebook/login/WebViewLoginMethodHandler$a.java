package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.w;
import com.facebook.internal.w.a;

class WebViewLoginMethodHandler$a
  extends w.a
{
  private String a;
  private boolean b;
  
  public WebViewLoginMethodHandler$a(Context paramContext, String paramString, Bundle paramBundle)
  {
    super(paramContext, paramString, "oauth", paramBundle);
  }
  
  public w a()
  {
    Bundle localBundle = e();
    localBundle.putString("redirect_uri", "fbconnect://success");
    localBundle.putString("client_id", b());
    localBundle.putString("e2e", a);
    localBundle.putString("response_type", "token,signed_request");
    localBundle.putString("return_scopes", "true");
    if (b) {
      localBundle.putString("auth_type", "rerequest");
    }
    return new w(c(), "oauth", localBundle, d(), f());
  }
  
  public a a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public a a(boolean paramBoolean)
  {
    b = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.WebViewLoginMethodHandler.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */