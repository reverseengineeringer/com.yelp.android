package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.dc;

public class af
  implements t
{
  public void a(Context paramContext, SharedPreferences.Editor paramEditor, String paramString)
  {
    paramContext = AppData.b().m().h();
    if (paramContext != null)
    {
      paramEditor.putBoolean(paramString, paramContext.h());
      return;
    }
    paramEditor.remove(paramString);
  }
  
  public boolean a(ChangeSettings paramChangeSettings, String paramString, Object paramObject)
  {
    paramString = new ag(paramChangeSettings, paramString);
    if (Boolean.valueOf(String.valueOf(paramObject)).booleanValue()) {
      paramChangeSettings.a(paramString);
    }
    for (;;)
    {
      paramChangeSettings.showLoadingDialog(2131166497);
      return false;
      paramChangeSettings.b(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */