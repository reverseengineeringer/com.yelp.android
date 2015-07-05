package com.yelp.android.ui.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.activities.nearby.ActivityNearby;

public class RootActivity
  extends Activity
{
  private void a()
  {
    startActivity(ActivityNearby.b(this));
    finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 812) {
      a();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = AppData.b();
    paramBundle = ((AppData)localObject).f();
    localObject = ((AppData)localObject).m();
    if (((dc)localObject).o())
    {
      paramBundle = new Intent();
      paramBundle.setClass(this, ActivitySplashLogin.class);
      paramBundle.addFlags(536870912);
      paramBundle.addFlags(67108864);
      startActivityForResult(paramBundle, 812);
      return;
    }
    if ((((dc)localObject).c()) && (paramBundle.n() == 3))
    {
      startActivityForResult(new Intent(this, ActivitySplashFindFriends.class), 812);
      return;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.RootActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */