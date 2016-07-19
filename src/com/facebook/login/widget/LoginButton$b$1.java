package com.facebook.login.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.facebook.login.c;

class LoginButton$b$1
  implements DialogInterface.OnClickListener
{
  LoginButton$b$1(LoginButton.b paramb) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a.getLoginManager().b();
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.LoginButton.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */