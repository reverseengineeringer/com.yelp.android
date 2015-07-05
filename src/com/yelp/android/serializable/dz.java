package com.yelp.android.serializable;

import java.util.Comparator;
import java.util.Date;

class dz
  implements Comparator<Media>
{
  dz(YelpBusinessReview paramYelpBusinessReview) {}
  
  public int a(Media paramMedia1, Media paramMedia2)
  {
    return paramMedia1.getTimeCreated().compareTo(paramMedia2.getTimeCreated());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */