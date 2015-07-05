package com.yelp.android.ui.activities.businesspage;

import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.YelpBusiness;

 enum BusinessRedeemButton$2
{
  BusinessRedeemButton$2(int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean)
  {
    super(paramString, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramBoolean, null);
  }
  
  public String getSubtitle(YelpBusiness paramYelpBusiness)
  {
    return paramYelpBusiness.getCheckInOffer().getOfferText();
  }
  
  public boolean passesRequirements(YelpBusiness paramYelpBusiness)
  {
    paramYelpBusiness = paramYelpBusiness.getCheckInOffer();
    return (paramYelpBusiness != null) && (paramYelpBusiness.isAwarded());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessRedeemButton.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */