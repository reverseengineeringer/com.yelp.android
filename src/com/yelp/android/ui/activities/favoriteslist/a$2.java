package com.yelp.android.ui.activities.favoriteslist;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.FavoritesList;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import java.util.Map;

class a$2
  implements View.OnClickListener
{
  a$2(a parama, YelpBusiness paramYelpBusiness, YelpBusinessReview paramYelpBusinessReview, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    paramView = ActivityFavoritesList.a(a.aD(), a.a(d).e());
    paramView.put("review_id", b.a());
    AppData.a(EventIri.FavoritesListReview, paramView);
    c.startActivity(ActivityReviewPager.a(c, b.a(), a.aD()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.favoriteslist.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */