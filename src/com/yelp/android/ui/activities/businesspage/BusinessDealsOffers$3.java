package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.CallToAction;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Map;
import java.util.TreeMap;

 enum BusinessDealsOffers$3
{
  BusinessDealsOffers$3(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getCallToAction().getText();
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getCallToAction().getTitle();
  }
  
  public int getTitleColor()
  {
    return 2131361948;
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    if (paramYelpBusiness.getCallToAction() == null) {
      return false;
    }
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("business_id", paramYelpBusiness.getId());
    localTreeMap.put("call_to_action_id", paramYelpBusiness.getCallToAction().getId());
    AppData.a(ViewIri.CallToActionBusinessShown, localTreeMap);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessDealsOffers.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */