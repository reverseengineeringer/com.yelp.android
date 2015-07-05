package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.dc;

public class z
  implements t
{
  public void a(Context paramContext, SharedPreferences.Editor paramEditor, String paramString)
  {
    paramContext = AppData.b().m().h();
    if (paramContext != null)
    {
      paramEditor.putBoolean(paramString, paramContext.i());
      return;
    }
    paramEditor.remove(paramString);
  }
  
  public boolean a(ChangeSettings paramChangeSettings, String paramString, Object paramObject)
  {
    paramString = new aa(this, paramChangeSettings, paramString);
    if (Boolean.valueOf(String.valueOf(paramObject)).booleanValue()) {
      paramChangeSettings.a(paramString);
    }
    for (;;)
    {
      return false;
      paramChangeSettings.showLoadingDialog(2131166497);
      paramChangeSettings.a(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */