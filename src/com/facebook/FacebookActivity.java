package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.p;
import com.facebook.login.LoginFragment;

public class FacebookActivity
  extends FragmentActivity
{
  public static String a = "PassThrough";
  private static String b = "SingleFragment";
  private Fragment c;
  
  private void a()
  {
    Intent localIntent = getIntent();
    setResult(0, p.a(localIntent, null, p.a(p.d(localIntent))));
    finish();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (c != null) {
      c.onConfigurationChanged(paramConfiguration);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(o.e.com_facebook_activity_layout);
    Intent localIntent = getIntent();
    if (a.equals(localIntent.getAction()))
    {
      a();
      return;
    }
    l locall = getSupportFragmentManager();
    Fragment localFragment = locall.a(b);
    paramBundle = localFragment;
    if (localFragment == null)
    {
      if (!"FacebookDialogFragment".equals(localIntent.getAction())) {
        break label96;
      }
      paramBundle = new FacebookDialogFragment();
      paramBundle.setRetainInstance(true);
      paramBundle.show(locall, b);
    }
    for (;;)
    {
      c = paramBundle;
      return;
      label96:
      paramBundle = new LoginFragment();
      paramBundle.setRetainInstance(true);
      locall.a().a(o.d.com_facebook_fragment_container, paramBundle, b).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */