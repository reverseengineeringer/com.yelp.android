package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fl;

public abstract class a
  implements t
{
  public void a(Context paramContext, SharedPreferences.Editor paramEditor, String paramString)
  {
    paramContext = AppData.b().m().h();
    if (paramContext != null)
    {
      a(paramEditor, paramString, paramContext);
      return;
    }
    paramEditor.remove(paramString);
  }
  
  abstract void a(SharedPreferences.Editor paramEditor, String paramString, RemoteConfigPreferences paramRemoteConfigPreferences);
  
  abstract void a(RemoteConfigPreferences paramRemoteConfigPreferences, String paramString);
  
  public final boolean a(ChangeSettings paramChangeSettings, String paramString, Object paramObject)
  {
    paramString = new b(this, paramChangeSettings, paramString, paramObject);
    paramChangeSettings = paramChangeSettings.getAppData();
    RemoteConfigPreferences localRemoteConfigPreferences = new RemoteConfigPreferences();
    a(localRemoteConfigPreferences, String.valueOf(paramObject));
    new fl(paramString, localRemoteConfigPreferences, paramChangeSettings.n().c(), null).execute(new Void[0]);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */