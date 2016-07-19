package com.yelp.android.ui.util;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.SharedPreferences;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.c;
import com.yelp.android.ui.activities.support.b;

public class ax
{
  private final Activity a;
  private final c b;
  
  public ax(b paramb)
  {
    a = paramb.c();
    b = AppData.b().f();
  }
  
  public boolean a()
  {
    if (b.z()) {}
    while ((!a.getSharedPreferences("Features", 0).contains(Features.updated_privacy_policy.getKey())) || (AppData.b().f().n())) {
      return false;
    }
    return true;
  }
  
  public Dialog b()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(a).setMessage(a.getString(2131166800));
    localBuilder.setPositiveButton(a.getString(2131166060), new ax.1(this));
    localBuilder.setNegativeButton(a.getString(17039370), new ax.2(this));
    return localBuilder.create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */