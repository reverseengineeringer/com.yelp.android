package com.yelp.android.serializable;

import android.os.Parcelable;
import com.yelp.android.ui.panels.businesssearch.f;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public abstract class LocalAd
  extends _LocalAd
  implements Parcelable, f, Comparable<LocalAd>
{
  public int compareTo(LocalAd paramLocalAd)
  {
    return getSlot() - paramLocalAd.getSlot();
  }
  
  public Map<String, Object> getIriParams(YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap(5);
    localHashMap.put("ad_request_id", getRequestId());
    localHashMap.put("ad_business_id", getBusinessId());
    localHashMap.put("placement", getPlacement());
    localHashMap.put("slot", Integer.valueOf(getSlot()));
    if (paramYelpBusiness != null) {
      localHashMap.put("business_id", paramYelpBusiness.getId());
    }
    return localHashMap;
  }
  
  public Map<String, Object> getIriParams(boolean paramBoolean)
  {
    return getIriParams(null, paramBoolean);
  }
  
  public LocalAdPlacement getLocalAdPlacement()
  {
    return LocalAdPlacement.valueOf(getPlacement().toUpperCase(Locale.US));
  }
  
  public LocalAdType getLocalAdType()
  {
    return LocalAdType.valueOf(getType().toUpperCase(Locale.US));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.LocalAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */