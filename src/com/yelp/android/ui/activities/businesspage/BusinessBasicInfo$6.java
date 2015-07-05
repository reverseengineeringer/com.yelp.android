package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import com.yelp.android.serializable.PlatformAction;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.cp;

 enum BusinessBasicInfo$6
{
  BusinessBasicInfo$6(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public int getIcon(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return cp.a(paramContext, paramYelpBusiness.getPlatformAction().getImagePath());
  }
  
  public String getIconUrl(YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getPlatformAction().getImageUrl();
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return null;
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getPlatformAction().getTitle();
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getPlatformAction() != null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessBasicInfo.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */