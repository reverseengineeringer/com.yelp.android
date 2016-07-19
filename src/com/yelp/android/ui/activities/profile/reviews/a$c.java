package com.yelp.android.ui.activities.profile.reviews;

import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bx.b;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.List;

public abstract interface a$c
  extends b
{
  public abstract void a();
  
  public abstract void a(YelpBusinessReview paramYelpBusinessReview);
  
  public abstract void a(YelpBusinessReview paramYelpBusinessReview, int paramInt);
  
  public abstract void a(List<YelpBusinessReview> paramList);
  
  public abstract void b(YelpBusinessReview paramYelpBusinessReview);
  
  public abstract void b(List<YelpBusinessReview> paramList);
  
  public abstract void disableLoading();
  
  public abstract void populateError(YelpException paramYelpException);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.reviews.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */