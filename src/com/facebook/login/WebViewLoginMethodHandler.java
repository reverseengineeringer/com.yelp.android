package com.facebook.login;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.u;
import com.facebook.internal.w;
import com.facebook.internal.w.a;
import com.facebook.internal.w.c;
import java.util.Locale;

class WebViewLoginMethodHandler
  extends LoginMethodHandler
{
  public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Parcelable.Creator()
  {
    public WebViewLoginMethodHandler a(Parcel paramAnonymousParcel)
    {
      return new WebViewLoginMethodHandler(paramAnonymousParcel);
    }
    
    public WebViewLoginMethodHandler[] a(int paramAnonymousInt)
    {
      return new WebViewLoginMethodHandler[paramAnonymousInt];
    }
  };
  private w c;
  private String d;
  
  WebViewLoginMethodHandler(Parcel paramParcel)
  {
    super(paramParcel);
    d = paramParcel.readString();
  }
  
  WebViewLoginMethodHandler(LoginClient paramLoginClient)
  {
    super(paramLoginClient);
  }
  
  private void b(String paramString)
  {
    b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", paramString).apply();
  }
  
  private String d()
  {
    return b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
  }
  
  String a()
  {
    return "web_view";
  }
  
  void a(LoginClient.Request paramRequest, Bundle paramBundle, FacebookException paramFacebookException)
  {
    if (paramBundle != null) {
      if (paramBundle.containsKey("e2e")) {
        d = paramBundle.getString("e2e");
      }
    }
    for (;;)
    {
      try
      {
        paramBundle = a(paramRequest.a(), paramBundle, AccessTokenSource.WEB_VIEW, paramRequest.d());
        paramRequest = LoginClient.Result.a(b.c(), paramBundle);
        CookieSyncManager.createInstance(b.b()).sync();
        b(paramBundle.b());
        if (!u.a(d)) {
          a(d);
        }
        b.a(paramRequest);
        return;
      }
      catch (FacebookException paramRequest)
      {
        paramRequest = LoginClient.Result.a(b.c(), null, paramRequest.getMessage());
        continue;
      }
      if (!(paramFacebookException instanceof FacebookOperationCanceledException)) {
        break;
      }
      paramRequest = LoginClient.Result.a(b.c(), "User canceled log in.");
    }
    d = null;
    paramRequest = paramFacebookException.getMessage();
    if ((paramFacebookException instanceof FacebookServiceException))
    {
      paramRequest = ((FacebookServiceException)paramFacebookException).getRequestError();
      paramBundle = String.format(Locale.ROOT, "%d", new Object[] { Integer.valueOf(paramRequest.b()) });
      paramRequest = paramRequest.toString();
    }
    for (;;)
    {
      paramRequest = LoginClient.Result.a(b.c(), null, paramRequest, paramBundle);
      break;
      paramBundle = null;
    }
  }
  
  boolean a(final LoginClient.Request paramRequest)
  {
    Bundle localBundle = new Bundle();
    if (!u.a(paramRequest.a()))
    {
      localObject = TextUtils.join(",", paramRequest.a());
      localBundle.putString("scope", (String)localObject);
      a("scope", localObject);
    }
    localBundle.putString("default_audience", paramRequest.c().getNativeProtocolAudience());
    Object localObject = AccessToken.a();
    if (localObject != null)
    {
      localObject = ((AccessToken)localObject).b();
      if ((localObject == null) || (!((String)localObject).equals(d()))) {
        break label212;
      }
      localBundle.putString("access_token", (String)localObject);
      a("access_token", "1");
    }
    for (;;)
    {
      w.c local1 = new w.c()
      {
        public void a(Bundle paramAnonymousBundle, FacebookException paramAnonymousFacebookException)
        {
          a(paramRequest, paramAnonymousBundle, paramAnonymousFacebookException);
        }
      };
      d = LoginClient.l();
      a("e2e", d);
      localObject = b.b();
      c = new a((Context)localObject, paramRequest.d(), localBundle).a(d).a(paramRequest.f()).a(local1).a();
      paramRequest = new FacebookDialogFragment();
      paramRequest.setRetainInstance(true);
      paramRequest.a(c);
      paramRequest.show(((FragmentActivity)localObject).getSupportFragmentManager(), "FacebookDialogFragment");
      return true;
      localObject = null;
      break;
      label212:
      u.b(b.b());
      a("access_token", "0");
    }
  }
  
  void b()
  {
    if (c != null)
    {
      c.cancel();
      c = null;
    }
  }
  
  boolean c()
  {
    return true;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(d);
  }
  
  static class a
    extends w.a
  {
    private String a;
    private boolean b;
    
    public a(Context paramContext, String paramString, Bundle paramBundle)
    {
      super(paramString, "oauth", paramBundle);
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
}

/* Location:
 * Qualified Name:     com.facebook.login.WebViewLoginMethodHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */