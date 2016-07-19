package com.yelp.android.ui.util;

import android.app.Activity;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.util.Holiday;
import java.util.Date;

public class am
{
  private final Activity a;
  
  public am(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  private Resources.Theme b(int paramInt, Resources.Theme paramTheme)
  {
    Resources.Theme localTheme = a.getResources().newTheme();
    if (paramTheme != null) {
      localTheme.setTo(paramTheme);
    }
    if (paramInt != 0) {
      localTheme.applyStyle(paramInt, false);
    }
    return localTheme;
  }
  
  public Resources.Theme a(int paramInt, Resources.Theme paramTheme)
  {
    paramTheme = b(paramInt, paramTheme);
    co localco = AppData.b().q();
    if (localco.c()) {
      if (!localco.j()) {
        break label60;
      }
    }
    label60:
    for (paramInt = 2131296591;; paramInt = 2131296592)
    {
      paramTheme.applyStyle(paramInt, true);
      paramInt = Holiday.getHolidayTheme(new Date());
      if (paramInt != 0) {
        paramTheme.applyStyle(paramInt, true);
      }
      return paramTheme;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */