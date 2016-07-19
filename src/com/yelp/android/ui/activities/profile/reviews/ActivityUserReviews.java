package com.yelp.android.ui.activities.profile.reviews;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.m;
import com.yelp.android.serializable.UserReviewsViewModel;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.profile.d;
import com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPager;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.t;
import java.util.Collections;
import java.util.List;

public class ActivityUserReviews
  extends YelpListActivity
  implements a.c
{
  private d a;
  private a.a b;
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    b.a((YelpBusinessReview)paramListView.getItemAtPosition(paramInt));
  }
  
  public void a(YelpBusinessReview paramYelpBusinessReview)
  {
    if (paramYelpBusinessReview != null) {
      a.c(paramYelpBusinessReview);
    }
  }
  
  public void a(YelpBusinessReview paramYelpBusinessReview, int paramInt)
  {
    a.a(Collections.singletonList(paramYelpBusinessReview), paramInt);
    a.notifyDataSetChanged();
  }
  
  public void a(List<YelpBusinessReview> paramList)
  {
    if (paramList != null)
    {
      a.clear();
      b(paramList);
    }
  }
  
  public void b(YelpBusinessReview paramYelpBusinessReview)
  {
    startActivityForResult(ActivityReviewPager.a(this, paramYelpBusinessReview, paramYelpBusinessReview.M(), paramYelpBusinessReview.Q(), null), 1053);
  }
  
  public void b(List<YelpBusinessReview> paramList)
  {
    if (paramList != null)
    {
      a.a(paramList);
      a.notifyDataSetChanged();
    }
  }
  
  public boolean b()
  {
    return b.e();
  }
  
  protected void c()
  {
    b.d();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileReviews;
  }
  
  public int h()
  {
    return 2131166200;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1053) && (paramInt2 == 1052)) {
      b.a(ActivityAbstractReviewPager.a(paramIntent), ActivityAbstractReviewPager.b(paramIntent));
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null) {}
    for (paramBundle = a.b.a(getIntent());; paramBundle = UserReviewsViewModel.b(paramBundle))
    {
      b = getAppData().B().a(this, paramBundle);
      setPresenter(b);
      a = new d(t.a(this), paramBundle.d(), null);
      r().setAdapter(a);
      b.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.reviews.ActivityUserReviews
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */