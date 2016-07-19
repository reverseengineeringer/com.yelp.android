package com.facebook.login.widget;

import android.app.Activity;
import com.facebook.internal.u;
import com.facebook.internal.u.b;

class LoginButton$1
  implements Runnable
{
  LoginButton$1(LoginButton paramLoginButton, String paramString) {}
  
  public void run()
  {
    final u.b localb = u.a(a, false);
    LoginButton.a(b).runOnUiThread(new Runnable()
    {
      public void run()
      {
        LoginButton.a(b, localb);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.LoginButton.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */