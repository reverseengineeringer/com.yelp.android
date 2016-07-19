package com.yelp.android.appdata;

import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.serializable.BadgesViewModel;
import com.yelp.android.serializable.ClaimPlatformAccountViewModel;
import com.yelp.android.serializable.MoviesViewModel;
import com.yelp.android.serializable.UserReviewsViewModel;
import com.yelp.android.serializable.UserTipsViewModel;
import com.yelp.android.ui.activities.badges.b.a;
import com.yelp.android.ui.activities.badges.b.c;
import com.yelp.android.ui.activities.badges.c;

public class m
{
  public b.a a(b.c paramc, BadgesViewModel paramBadgesViewModel)
  {
    return new c(AppData.b().C(), AppData.b().q(), com.yelp.android.by.b.a(), paramc, paramBadgesViewModel);
  }
  
  public com.yelp.android.ui.activities.businesspage.movies.a.a a(com.yelp.android.ui.activities.businesspage.movies.a.c paramc, MoviesViewModel paramMoviesViewModel, MetricsManager paramMetricsManager)
  {
    return new com.yelp.android.ui.activities.businesspage.movies.b(com.yelp.android.by.b.a(), paramc, paramMoviesViewModel, paramMetricsManager);
  }
  
  public com.yelp.android.ui.activities.profile.reviews.a.a a(com.yelp.android.ui.activities.profile.reviews.a.c paramc, UserReviewsViewModel paramUserReviewsViewModel)
  {
    return new com.yelp.android.ui.activities.profile.reviews.b(AppData.b().C(), AppData.b().q(), com.yelp.android.by.b.a(), paramc, paramUserReviewsViewModel);
  }
  
  public com.yelp.android.ui.activities.profile.tips.a.a a(com.yelp.android.bt.b paramb, com.yelp.android.ui.activities.profile.tips.a.c paramc, UserTipsViewModel paramUserTipsViewModel, int paramInt)
  {
    return new com.yelp.android.ui.activities.profile.tips.b(paramb, com.yelp.android.by.b.a(), paramc, paramUserTipsViewModel, paramInt);
  }
  
  public com.yelp.android.ui.activities.user.claimaccount.a.a a(com.yelp.android.bt.b paramb, com.yelp.android.ui.activities.user.claimaccount.a.c paramc, ClaimPlatformAccountViewModel paramClaimPlatformAccountViewModel)
  {
    return new com.yelp.android.ui.activities.user.claimaccount.b(paramb, com.yelp.android.by.b.a(), paramc, paramClaimPlatformAccountViewModel);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */