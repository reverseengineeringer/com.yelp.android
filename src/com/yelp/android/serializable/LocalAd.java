package com.yelp.android.serializable;

import android.os.Parcelable;
import com.yelp.android.ui.panels.businesssearch.a;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public abstract class LocalAd
  extends _LocalAd
  implements Parcelable, a, Comparable<LocalAd>
{
  public int a(LocalAd paramLocalAd)
  {
    return d() - paramLocalAd.d();
  }
  
  public Map<String, Object> a(YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap(5);
    localHashMap.put("ad_request_id", l());
    localHashMap.put("ad_business_id", m());
    localHashMap.put("placement", h());
    localHashMap.put("slot", Integer.valueOf(d()));
    if (paramYelpBusiness != null) {
      localHashMap.put("business_id", paramYelpBusiness.aD());
    }
    return localHashMap;
  }
  
  public Map<String, Object> a(boolean paramBoolean)
  {
    return a(null, paramBoolean);
  }
  
  public LocalAdType b()
  {
    return LocalAdType.valueOf(k().toUpperCase(Locale.US));
  }
  
  public LocalAdPlacement c()
  {
    return LocalAdPlacement.valueOf(h().toUpperCase(Locale.US));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.LocalAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */