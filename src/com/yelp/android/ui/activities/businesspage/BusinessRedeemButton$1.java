package com.yelp.android.ui.activities.businesspage;

import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;
import java.util.List;

 enum BusinessRedeemButton$1
{
  BusinessRedeemButton$1(int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean)
  {
    super(paramString, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramBoolean, null);
  }
  
  public String getSubtitle(YelpBusiness paramYelpBusiness)
  {
    return ((YelpDeal)paramYelpBusiness.getUserDeals().get(0)).getTitle();
  }
  
  public boolean passesRequirements(YelpBusiness paramYelpBusiness)
  {
    paramYelpBusiness = paramYelpBusiness.getUserDeals();
    return (paramYelpBusiness != null) && (!paramYelpBusiness.isEmpty());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessRedeemButton.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */