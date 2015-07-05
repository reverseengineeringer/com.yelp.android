package com.yelp.android.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.util.Locale;

 enum PlatformQualifier$1
{
  PlatformQualifier$1()
  {
    super(paramString, paramInt, null);
  }
  
  protected boolean isQualified(Context paramContext)
  {
    return getResourcesgetConfigurationlocale.getCountry().startsWith("AU");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.PlatformQualifier.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */