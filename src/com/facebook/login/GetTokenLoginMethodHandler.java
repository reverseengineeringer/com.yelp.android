package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.q.a;
import com.facebook.internal.u;
import com.facebook.internal.u.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class GetTokenLoginMethodHandler
  extends LoginMethodHandler
{
  public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new Parcelable.Creator()
  {
    public GetTokenLoginMethodHandler a(Parcel paramAnonymousParcel)
    {
      return new GetTokenLoginMethodHandler(paramAnonymousParcel);
    }
    
    public GetTokenLoginMethodHandler[] a(int paramAnonymousInt)
    {
      return new GetTokenLoginMethodHandler[paramAnonymousInt];
    }
  };
  private a c;
  
  GetTokenLoginMethodHandler(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  GetTokenLoginMethodHandler(LoginClient paramLoginClient)
  {
    super(paramLoginClient);
  }
  
  String a()
  {
    return "get_token";
  }
  
  void a(LoginClient.Request paramRequest, Bundle paramBundle)
  {
    c = null;
    b.k();
    if (paramBundle != null)
    {
      ArrayList localArrayList = paramBundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
      Object localObject = paramRequest.a();
      if ((localArrayList != null) && ((localObject == null) || (localArrayList.containsAll((Collection)localObject))))
      {
        c(paramRequest, paramBundle);
        return;
      }
      paramBundle = new HashSet();
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        if (!localArrayList.contains(str)) {
          paramBundle.add(str);
        }
      }
      if (!paramBundle.isEmpty()) {
        a("new_permissions", TextUtils.join(",", paramBundle));
      }
      paramRequest.a(paramBundle);
    }
    b.h();
  }
  
  boolean a(final LoginClient.Request paramRequest)
  {
    c = new a(b.b(), paramRequest.d());
    if (!c.a()) {
      return false;
    }
    b.j();
    paramRequest = new q.a()
    {
      public void a(Bundle paramAnonymousBundle)
      {
        a(paramRequest, paramAnonymousBundle);
      }
    };
    c.a(paramRequest);
    return true;
  }
  
  void b()
  {
    if (c != null)
    {
      c.b();
      c = null;
    }
  }
  
  void b(LoginClient.Request paramRequest, Bundle paramBundle)
  {
    paramRequest = a(paramBundle, AccessTokenSource.FACEBOOK_APPLICATION_SERVICE, paramRequest.d());
    paramRequest = LoginClient.Result.a(b.c(), paramRequest);
    b.a(paramRequest);
  }
  
  void c(final LoginClient.Request paramRequest, final Bundle paramBundle)
  {
    String str = paramBundle.getString("com.facebook.platform.extra.USER_ID");
    if ((str == null) || (str.isEmpty()))
    {
      b.j();
      u.a(paramBundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), new u.c()
      {
        public void a(FacebookException paramAnonymousFacebookException)
        {
          b.b(LoginClient.Result.a(b.c(), "Caught exception", paramAnonymousFacebookException.getMessage()));
        }
        
        public void a(JSONObject paramAnonymousJSONObject)
        {
          try
          {
            paramAnonymousJSONObject = paramAnonymousJSONObject.getString("id");
            paramBundle.putString("com.facebook.platform.extra.USER_ID", paramAnonymousJSONObject);
            b(paramRequest, paramBundle);
            return;
          }
          catch (JSONException paramAnonymousJSONObject)
          {
            b.b(LoginClient.Result.a(b.c(), "Caught exception", paramAnonymousJSONObject.getMessage()));
          }
        }
      });
      return;
    }
    b(paramRequest, paramBundle);
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
 * Qualified Name:     com.facebook.login.GetTokenLoginMethodHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */