package com.yelp.android.ck;

import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.ui.util.as;

public abstract class a
  implements g
{
  private ChangeSettings a;
  
  public void a(ChangeSettings paramChangeSettings, String paramString, int paramInt)
  {
    a = paramChangeSettings;
    AppData.b().o().a(paramString, paramInt, new a.1(this, paramString, paramChangeSettings, paramInt));
  }
  
  public void a(String paramString, YelpException paramYelpException)
  {
    a.a(paramString);
    as.a(paramYelpException.getMessage(a), 0);
  }
  
  abstract void b(ChangeSettings paramChangeSettings, String paramString, int paramInt);
}

/* Location:
 * Qualified Name:     com.yelp.android.ck.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */