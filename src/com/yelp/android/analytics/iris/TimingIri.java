package com.yelp.android.analytics.iris;

import com.yelp.android.analytics.GaCustomDimenLink;
import com.yelp.android.analytics.c;

public enum TimingIri
  implements b
{
  ApplicationStartup("startup/initialize"),  BusinessDetailLoad("business_detail/ready"),  PlatformWebViewInitLoad("platform/webview/initial_load");
  
  private final String mIri;
  
  private TimingIri(String paramString)
  {
    mIri = paramString;
  }
  
  public AnalyticCategory getCategory()
  {
    return AnalyticCategory.TIMING;
  }
  
  public c[] getGaCustomDimenLinks()
  {
    return GaCustomDimenLink.EMPTY_ARRAY;
  }
  
  public GoogleAnalyticsCategory getGoogleAnalyticsCategory()
  {
    return GoogleAnalyticsCategory.TIMING;
  }
  
  public String getIriName()
  {
    return mIri;
  }
  
  public boolean isExcludedFromGoogleAnalytics()
  {
    return false;
  }
  
  public boolean isSampledInGoogleAnalytics()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.iris.TimingIri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */