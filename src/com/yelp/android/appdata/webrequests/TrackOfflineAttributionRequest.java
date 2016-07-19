package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.a;
import java.util.Locale;

public class TrackOfflineAttributionRequest
  extends c
{
  private YelpBusiness a;
  private String g;
  
  private TrackOfflineAttributionRequest(YelpBusiness paramYelpBusiness, OfflineAttributionEventType paramOfflineAttributionEventType, String paramString)
  {
    super("offline_attribution/track", null);
    a = paramYelpBusiness;
    g = paramString;
    b("advertiser_id", g);
    b("business_id", a.aD());
    b("event_type", paramOfflineAttributionEventType.toString());
  }
  
  public static boolean a(YelpBusiness paramYelpBusiness, OfflineAttributionEventType paramOfflineAttributionEventType)
  {
    return a(AppData.b().n().a(), paramYelpBusiness, paramOfflineAttributionEventType);
  }
  
  public static boolean a(String paramString, YelpBusiness paramYelpBusiness, OfflineAttributionEventType paramOfflineAttributionEventType)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramYelpBusiness != null)
    {
      bool1 = bool2;
      if (paramOfflineAttributionEventType != null)
      {
        paramString = new TrackOfflineAttributionRequest(paramYelpBusiness, paramOfflineAttributionEventType, paramString);
        bool1 = bool2;
        if (paramString.b())
        {
          paramString.f(new Void[0]);
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private boolean b()
  {
    return (!TextUtils.isEmpty(g)) && (a.S());
  }
  
  public static enum OfflineAttributionEventType
  {
    AD_CLICK,  AD_IMPRESSION,  PAGE_VIEW;
    
    private OfflineAttributionEventType() {}
    
    public String toString()
    {
      return name().toLowerCase(Locale.US);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */