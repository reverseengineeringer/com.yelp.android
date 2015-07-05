package com.yelp.android.serializable;

import android.content.Context;
import com.yelp.android.ui.activities.businesspage.cf;
import com.yelp.android.ui.util.cp;

class bx
  extends cf
{
  bx(PlatformSearchAction paramPlatformSearchAction, SearchAction paramSearchAction)
  {
    super(paramSearchAction);
  }
  
  public int getIcon(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return cp.a(paramContext, paramYelpBusiness.getPlatformAction().getImagePath());
  }
  
  public String getIconUrl(YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getPlatformAction().getImageUrl();
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
 * Qualified Name:     com.yelp.android.serializable.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */