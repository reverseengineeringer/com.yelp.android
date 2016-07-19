package com.facebook.login.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.facebook.AccessToken;
import com.facebook.Profile;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.LoginAuthorizationType;
import com.facebook.login.c;
import com.facebook.o.f;

class LoginButton$b
  implements View.OnClickListener
{
  private LoginButton$b(LoginButton paramLoginButton) {}
  
  public void onClick(View paramView)
  {
    Object localObject3 = a.getContext();
    AccessToken localAccessToken = AccessToken.a();
    Object localObject2;
    Object localObject1;
    if (localAccessToken != null) {
      if (LoginButton.c(a))
      {
        localObject2 = a.getResources().getString(o.f.com_facebook_loginview_log_out_action);
        String str = a.getResources().getString(o.f.com_facebook_loginview_cancel_action);
        localObject1 = Profile.a();
        if ((localObject1 != null) && (((Profile)localObject1).c() != null))
        {
          localObject1 = String.format(a.getResources().getString(o.f.com_facebook_loginview_logged_in_as), new Object[] { ((Profile)localObject1).c() });
          localObject3 = new AlertDialog.Builder((Context)localObject3);
          ((AlertDialog.Builder)localObject3).setMessage((CharSequence)localObject1).setCancelable(true).setPositiveButton((CharSequence)localObject2, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              a.getLoginManager().b();
            }
          }).setNegativeButton(str, null);
          ((AlertDialog.Builder)localObject3).create().show();
          label151:
          localObject1 = AppEventsLogger.a(a.getContext());
          localObject2 = new Bundle();
          if (localAccessToken == null) {
            break label406;
          }
        }
      }
    }
    label406:
    for (int i = 0;; i = 1)
    {
      ((Bundle)localObject2).putInt("logging_in", i);
      ((AppEventsLogger)localObject1).a(LoginButton.g(a), null, (Bundle)localObject2);
      LoginButton.a(a, paramView);
      return;
      localObject1 = a.getResources().getString(o.f.com_facebook_loginview_logged_in_using_facebook);
      break;
      a.getLoginManager().b();
      break label151;
      localObject1 = a.getLoginManager();
      ((c)localObject1).a(a.getDefaultAudience());
      ((c)localObject1).a(a.getLoginBehavior());
      if (LoginAuthorizationType.PUBLISH.equals(LoginButton.a.a(LoginButton.d(a))))
      {
        if (a.getFragment() != null)
        {
          ((c)localObject1).b(a.getFragment(), LoginButton.a.b(LoginButton.d(a)));
          break label151;
        }
        ((c)localObject1).b(LoginButton.e(a), LoginButton.a.b(LoginButton.d(a)));
        break label151;
      }
      if (a.getFragment() != null)
      {
        ((c)localObject1).a(a.getFragment(), LoginButton.a.b(LoginButton.d(a)));
        break label151;
      }
      ((c)localObject1).a(LoginButton.f(a), LoginButton.a.b(LoginButton.d(a)));
      break label151;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.LoginButton.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */