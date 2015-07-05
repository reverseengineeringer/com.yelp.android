package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import com.yelp.android.serializable.Menu;
import com.yelp.android.serializable.YelpBusiness;

 enum BusinessBasicInfo$5
{
  BusinessBasicInfo$5(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getIconUrl(YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getMenu().getActionImageUrl();
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getMenu().getActionText();
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getMenu().getActionTitle();
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getMenu() != null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessBasicInfo.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */