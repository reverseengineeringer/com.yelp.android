package com.yelp.android.ui.activities;

import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookException;
import com.facebook.f;
import com.facebook.login.c;
import java.util.Arrays;
import java.util.Collection;

class FacebookConnectManager$2
  implements f
{
  FacebookConnectManager$2(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void a()
  {
    FacebookConnectManager.e(a);
  }
  
  public void a(FacebookException paramFacebookException)
  {
    if (((paramFacebookException instanceof FacebookAuthorizationException)) && (FacebookConnectManager.a())) {
      a.g();
    }
    FacebookConnectManager.a(a, paramFacebookException);
  }
  
  public void a(Object paramObject)
  {
    if (!FacebookConnectManager.d(a).allReadPermissionsGranted())
    {
      FacebookConnectManager.e(a);
      return;
    }
    if (!FacebookConnectManager.d(a).hasPublishPermissions())
    {
      FacebookConnectManager.f(a);
      return;
    }
    if (FacebookConnectManager.d(a).allPublishPermissionsGranted())
    {
      FacebookConnectManager.f(a);
      return;
    }
    c.a().a(FacebookConnectManager.g(a), FacebookConnectManager.h(a));
    paramObject = Arrays.asList(FacebookConnectManager.d(a).getPublishPermissions());
    c.a().b(FacebookConnectManager.c(a), (Collection)paramObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.FacebookConnectManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */