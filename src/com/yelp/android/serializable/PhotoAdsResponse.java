package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;
import java.util.List;

public class PhotoAdsResponse
  extends _PhotoAdsResponse
  implements Media
{
  public static final JsonParser.DualCreator<PhotoAdsResponse> CREATOR = new PhotoAdsResponse.1();
  
  public String a()
  {
    return null;
  }
  
  public boolean a(Media.MediaType paramMediaType)
  {
    return paramMediaType == Media.MediaType.AD;
  }
  
  public String b()
  {
    return null;
  }
  
  public BusinessLocalAd c()
  {
    if (a.size() > 0) {
      return (BusinessLocalAd)a.get(0);
    }
    return null;
  }
  
  public int d()
  {
    return 0;
  }
  
  public int e()
  {
    return 0;
  }
  
  public String f()
  {
    return null;
  }
  
  public String g()
  {
    return null;
  }
  
  public Date h()
  {
    return null;
  }
  
  public Passport i()
  {
    return null;
  }
  
  public Feedback j()
  {
    return null;
  }
  
  public String k()
  {
    return m().aD();
  }
  
  public String l()
  {
    return null;
  }
  
  public YelpBusiness m()
  {
    if (b.size() > 0) {
      return (YelpBusiness)b.get(0);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PhotoAdsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */