package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.text.TextUtils;
import com.yelp.android.serializable.YelpBusiness;
import java.util.ArrayList;
import java.util.List;

 enum BusinessBasicInfo$8
{
  BusinessBasicInfo$8(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramYelpBusiness.getMenu() == null) && (!TextUtils.isEmpty(paramYelpBusiness.getMenuUrl()))) {
      localArrayList.add(paramContext.getString(2131166078));
    }
    if (!TextUtils.isEmpty(paramYelpBusiness.getTransitDescription())) {
      localArrayList.add(paramContext.getString(2131166744));
    }
    List localList = paramYelpBusiness.getLocalizedHours();
    if ((localList != null) && (localList.size() != 0)) {
      localArrayList.add(paramContext.getString(2131165931));
    }
    if (!TextUtils.isEmpty(paramYelpBusiness.getBestUrl())) {
      localArrayList.add(paramContext.getString(2131166834));
    }
    localArrayList.add(paramContext.getString(2131165379));
    return TextUtils.join(", ", localArrayList);
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return paramContext.getString(2131166112);
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    List localList = paramYelpBusiness.getLocalizedHours();
    return (paramYelpBusiness.getMenu() != null) || (!TextUtils.isEmpty(paramYelpBusiness.getTransitDescription())) || ((localList != null) && (localList.size() != 0)) || (!TextUtils.isEmpty(paramYelpBusiness.getBestUrl())) || (!paramYelpBusiness.getAttributions().isEmpty()) || (paramYelpBusiness.getFromThisBusiness() != null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessBasicInfo.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */