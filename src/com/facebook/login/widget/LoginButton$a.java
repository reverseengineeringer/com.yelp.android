package com.facebook.login.widget;

import com.facebook.internal.LoginAuthorizationType;
import com.facebook.internal.u;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import java.util.Collections;
import java.util.List;

class LoginButton$a
{
  private DefaultAudience a = DefaultAudience.FRIENDS;
  private List<String> b = Collections.emptyList();
  private LoginAuthorizationType c = null;
  private LoginBehavior d = LoginBehavior.SSO_WITH_FALLBACK;
  
  public DefaultAudience a()
  {
    return a;
  }
  
  public void a(DefaultAudience paramDefaultAudience)
  {
    a = paramDefaultAudience;
  }
  
  public void a(LoginBehavior paramLoginBehavior)
  {
    d = paramLoginBehavior;
  }
  
  public void a(List<String> paramList)
  {
    if (LoginAuthorizationType.PUBLISH.equals(c)) {
      throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
    }
    b = paramList;
    c = LoginAuthorizationType.READ;
  }
  
  List<String> b()
  {
    return b;
  }
  
  public void b(List<String> paramList)
  {
    if (LoginAuthorizationType.READ.equals(c)) {
      throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
    }
    if (u.a(paramList)) {
      throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
    }
    b = paramList;
    c = LoginAuthorizationType.PUBLISH;
  }
  
  public LoginBehavior c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.LoginButton.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */