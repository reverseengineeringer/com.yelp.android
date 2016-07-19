package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.o.d;
import com.facebook.o.e;

public class LoginFragment
  extends Fragment
{
  private String a;
  private LoginClient b;
  private LoginClient.Request c;
  
  static Bundle a(LoginClient.Request paramRequest)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("request", paramRequest);
    return localBundle;
  }
  
  private void a(Activity paramActivity)
  {
    paramActivity = paramActivity.getCallingActivity();
    if (paramActivity == null) {
      return;
    }
    a = paramActivity.getPackageName();
  }
  
  private void a(LoginClient.Result paramResult)
  {
    c = null;
    if (a == LoginClient.Result.Code.CANCEL) {}
    for (int i = 0;; i = -1)
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("com.facebook.LoginFragment:Result", paramResult);
      paramResult = new Intent();
      paramResult.putExtras(localBundle);
      if (isAdded())
      {
        getActivity().setResult(i, paramResult);
        getActivity().finish();
      }
      return;
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    b.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      b = ((LoginClient)paramBundle.getParcelable("loginClient"));
      b.a(this);
      b.a(new LoginClient.b()
      {
        public void a(LoginClient.Result paramAnonymousResult)
        {
          LoginFragment.a(LoginFragment.this, paramAnonymousResult);
        }
      });
      paramBundle = getActivity();
      if (paramBundle != null) {
        break label70;
      }
    }
    label70:
    do
    {
      return;
      b = new LoginClient(this);
      break;
      a(paramBundle);
    } while (paramBundle.getIntent() == null);
    c = ((LoginClient.Request)paramBundle.getIntent().getParcelableExtra("request"));
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(o.e.com_facebook_login_fragment, paramViewGroup, false);
    b.a(new LoginClient.a()
    {
      public void a()
      {
        paramLayoutInflater.findViewById(o.d.com_facebook_login_activity_progress_bar).setVisibility(0);
      }
      
      public void b()
      {
        paramLayoutInflater.findViewById(o.d.com_facebook_login_activity_progress_bar).setVisibility(8);
      }
    });
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    b.f();
    super.onDestroy();
  }
  
  public void onPause()
  {
    super.onPause();
    getActivity().findViewById(o.d.com_facebook_login_activity_progress_bar).setVisibility(8);
  }
  
  public void onResume()
  {
    super.onResume();
    if (a == null)
    {
      Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
      getActivity().finish();
      return;
    }
    b.a(c);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("loginClient", b);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.LoginFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */