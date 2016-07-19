package com.yelp.android.ui.activities.favoriteslist;

import android.content.Context;
import android.util.ArrayMap;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.FavoritesList;
import com.yelp.android.serializable.Passport;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import java.util.Map;

class ActivityFavoritesList$2
  implements View.OnClickListener
{
  ActivityFavoritesList$2(ActivityFavoritesList paramActivityFavoritesList) {}
  
  public void onClick(View paramView)
  {
    String str = ActivityFavoritesList.c(a).g().p();
    ArrayMap localArrayMap = new ArrayMap();
    localArrayMap.put("list_id", ActivityFavoritesList.b(a));
    localArrayMap.put("user_id", str);
    AppData.a(EventIri.FavoritesListUser, localArrayMap);
    paramView.getContext().startActivity(ActivityUserProfile.a(paramView.getContext(), str));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.favoriteslist.ActivityFavoritesList.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */