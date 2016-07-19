package com.yelp.android.ui.activities.profile.reviews;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bx.b;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.UserReviewsViewModel;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.ArrayList;
import java.util.List;

public abstract interface a
{
  public static abstract interface a
    extends com.yelp.android.bx.a
  {
    public abstract void a(YelpBusinessReview paramYelpBusinessReview);
    
    public abstract void a(YelpBusinessReview paramYelpBusinessReview1, YelpBusinessReview paramYelpBusinessReview2);
    
    public abstract void d();
    
    public abstract boolean e();
  }
  
  public static class b
  {
    public static Intent a(Context paramContext, User paramUser)
    {
      return new Intent(paramContext, ActivityUserReviews.class).putExtra("extra.user", paramUser);
    }
    
    public static UserReviewsViewModel a(Intent paramIntent)
    {
      return new UserReviewsViewModel(new ArrayList(), (User)paramIntent.getParcelableExtra("extra.user"), 20);
    }
  }
  
  public static abstract interface c
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
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.reviews.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */