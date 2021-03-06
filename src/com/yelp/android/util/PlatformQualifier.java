package com.yelp.android.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.d;
import java.util.Collection;
import java.util.Locale;

public enum PlatformQualifier
{
  SensisYellowPages;
  
  private PlatformQualifier() {}
  
  abstract boolean isQualified(Context paramContext);
  
  public final boolean qualifies(Context paramContext)
  {
    if (BaseYelpApplication.d(paramContext).I().a(paramContext).contains(name())) {
      return true;
    }
    return isQualified(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.PlatformQualifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */