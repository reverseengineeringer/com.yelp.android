package com.yelp.android.ui.activities.favoriteslist;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.FavoritesList;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class a$1
  implements View.OnClickListener
{
  a$1(a parama, YelpBusiness paramYelpBusiness, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.FavoritesListBusiness, ActivityFavoritesList.a(a.aD(), a.a(c).e()));
    b.startActivity(ActivityBusinessPage.b(b, a.aD()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.favoriteslist.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */