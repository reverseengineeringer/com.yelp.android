package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.app.Fragment;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.p;
import com.facebook.internal.s;
import com.facebook.internal.u;
import java.util.Collection;

class KatanaProxyLoginMethodHandler
  extends LoginMethodHandler
{
  public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Parcelable.Creator()
  {
    public KatanaProxyLoginMethodHandler a(Parcel paramAnonymousParcel)
    {
      return new KatanaProxyLoginMethodHandler(paramAnonymousParcel);
    }
    
    public KatanaProxyLoginMethodHandler[] a(int paramAnonymousInt)
    {
      return new KatanaProxyLoginMethodHandler[paramAnonymousInt];
    }
  };
  
  KatanaProxyLoginMethodHandler(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  KatanaProxyLoginMethodHandler(LoginClient paramLoginClient)
  {
    super(paramLoginClient);
  }
  
  private LoginClient.Result a(LoginClient.Request paramRequest, Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    Object localObject = localBundle.getString("error");
    paramIntent = (Intent)localObject;
    if (localObject == null) {
      paramIntent = localBundle.getString("error_type");
    }
    String str2 = localBundle.getString("error_code");
    String str1 = localBundle.getString("error_message");
    localObject = str1;
    if (str1 == null) {
      localObject = localBundle.getString("error_description");
    }
    str1 = localBundle.getString("e2e");
    if (!u.a(str1)) {
      a(str1);
    }
    if ((paramIntent == null) && (str2 == null) && (localObject == null)) {
      try
      {
        paramIntent = LoginClient.Result.a(paramRequest, a(paramRequest.a(), localBundle, AccessTokenSource.FACEBOOK_APPLICATION_WEB, paramRequest.d()));
        return paramIntent;
      }
      catch (FacebookException paramIntent)
      {
        return LoginClient.Result.a(paramRequest, null, paramIntent.getMessage());
      }
    }
    if (s.a.contains(paramIntent)) {
      return null;
    }
    if (s.b.contains(paramIntent)) {
      return LoginClient.Result.a(paramRequest, null);
    }
    return LoginClient.Result.a(paramRequest, paramIntent, (String)localObject, str2);
  }
  
  String a()
  {
    return "katana_proxy_auth";
  }
  
  boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    LoginClient.Request localRequest = b.c();
    if (paramIntent == null)
    {
      paramIntent = LoginClient.Result.a(localRequest, "Operation canceled");
      if (paramIntent == null) {
        break label82;
      }
      b.a(paramIntent);
    }
    for (;;)
    {
      return true;
      if (paramInt2 == 0)
      {
        paramIntent = LoginClient.Result.a(localRequest, paramIntent.getStringExtra("error"));
        break;
      }
      if (paramInt2 != -1)
      {
        paramIntent = LoginClient.Result.a(localRequest, "Unexpected resultCode from authorization.", null);
        break;
      }
      paramIntent = a(localRequest, paramIntent);
      break;
      label82:
      b.h();
    }
  }
  
  protected boolean a(Intent paramIntent, int paramInt)
  {
    if (paramIntent == null) {
      return false;
    }
    try
    {
      b.a().startActivityForResult(paramIntent, paramInt);
      return true;
    }
    catch (ActivityNotFoundException paramIntent) {}
    return false;
  }
  
  boolean a(LoginClient.Request paramRequest)
  {
    String str = LoginClient.l();
    paramRequest = p.a(b.b(), paramRequest.d(), paramRequest.a(), str, paramRequest.f(), paramRequest.g(), paramRequest.c());
    a("e2e", str);
    return a(paramRequest, LoginClient.d());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.KatanaProxyLoginMethodHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */