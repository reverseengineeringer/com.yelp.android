package com.yelp.android.ui.util;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.SharedPreferences;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.i;
import com.yelp.android.ui.activities.ActivitySplashFindFriends;
import com.yelp.android.ui.activities.support.h;

public class dg
{
  private final Activity a;
  private final i b;
  
  public dg(h paramh)
  {
    a = paramh.c();
    b = AppData.b().f();
  }
  
  public boolean a()
  {
    if (b.w()) {}
    while ((!a.getSharedPreferences("Features", 0).contains(Features.updated_privacy_policy.getKey())) || ((a instanceof ActivitySplashFindFriends)) || (AppData.b().f().l())) {
      return false;
    }
    return true;
  }
  
  public Dialog b()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a).setMessage(a.getString(2131166833));
    localBuilder.setPositiveButton(a.getString(2131166005), new dh(this));
    localBuilder.setNegativeButton(a.getString(17039370), new di(this));
    return localBuilder.create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */