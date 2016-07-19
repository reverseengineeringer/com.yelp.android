package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import com.facebook.FacebookException;
import com.facebook.g;

public class FacebookDialogFragment
  extends DialogFragment
{
  private Dialog a;
  
  private void a(Bundle paramBundle)
  {
    FragmentActivity localFragmentActivity = getActivity();
    Intent localIntent = new Intent();
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localIntent.putExtras(localBundle);
    localFragmentActivity.setResult(-1, localIntent);
    localFragmentActivity.finish();
  }
  
  private void a(Bundle paramBundle, FacebookException paramFacebookException)
  {
    FragmentActivity localFragmentActivity = getActivity();
    paramBundle = p.a(localFragmentActivity.getIntent(), paramBundle, paramFacebookException);
    if (paramFacebookException == null) {}
    for (int i = -1;; i = 0)
    {
      localFragmentActivity.setResult(i, paramBundle);
      localFragmentActivity.finish();
      return;
    }
  }
  
  public void a(Dialog paramDialog)
  {
    a = paramDialog;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if ((a instanceof w)) {
      ((w)a).d();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle;
    String str;
    if (a == null)
    {
      paramBundle = getActivity();
      localBundle = p.d(paramBundle.getIntent());
      if (localBundle.getBoolean("is_fallback", false)) {
        break label99;
      }
      str = localBundle.getString("action");
      localBundle = localBundle.getBundle("params");
      if (u.a(str))
      {
        u.b("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
        paramBundle.finish();
      }
    }
    else
    {
      return;
    }
    paramBundle = new w.a(paramBundle, str, localBundle).a(new w.c()
    {
      public void a(Bundle paramAnonymousBundle, FacebookException paramAnonymousFacebookException)
      {
        FacebookDialogFragment.a(FacebookDialogFragment.this, paramAnonymousBundle, paramAnonymousFacebookException);
      }
    }).a();
    for (;;)
    {
      a = paramBundle;
      return;
      label99:
      str = localBundle.getString("url");
      if (u.a(str))
      {
        u.b("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
        paramBundle.finish();
        return;
      }
      paramBundle = new h(paramBundle, str, String.format("fb%s://bridge/", new Object[] { g.h() }));
      paramBundle.a(new w.c()
      {
        public void a(Bundle paramAnonymousBundle, FacebookException paramAnonymousFacebookException)
        {
          FacebookDialogFragment.a(FacebookDialogFragment.this, paramAnonymousBundle);
        }
      });
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    if (a == null)
    {
      a(null, null);
      setShowsDialog(false);
    }
    return a;
  }
  
  public void onDestroyView()
  {
    if ((getDialog() != null) && (getRetainInstance())) {
      getDialog().setDismissMessage(null);
    }
    super.onDestroyView();
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.FacebookDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */