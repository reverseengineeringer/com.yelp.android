package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import com.yelp.android.appdata.Features;
import com.yelp.android.serializable.YelpBusiness;

 enum BusinessBasicInfo$4
{
  BusinessBasicInfo$4(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return null;
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramContext.getString(2131166087);
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    return (paramYelpBusiness.isMessageToBusinessEnabled()) && (Features.message_to_business.isEnabled());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessBasicInfo.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */