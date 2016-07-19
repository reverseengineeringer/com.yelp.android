package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.favoriteslist.ActivityFavoritesList;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.YelpLog;
import java.util.List;

public class ActivityFavoritesListUrlCatcher
  extends YelpUrlCatcherActivity
{
  protected boolean a()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    for (;;)
    {
      try
      {
        ae.a(getIntent()).a("android.intent.action.VIEW", "yelp", "/list").a("android.intent.action.VIEW", "http", "/list").a();
        paramBundle = getIntent().getData();
        if (paramBundle == null) {
          break label139;
        }
        List localList = paramBundle.getPathSegments();
        if ((localList.size() < 2) || (!((String)localList.get(0)).equals("list"))) {
          break label139;
        }
        AppData.a(new n(paramBundle));
        paramBundle = ActivityFavoritesList.a(this, (String)localList.get(1));
        if (paramBundle == null) {
          throw new IllegalStateException("Unable to launch favorites list from ActivityFavoritesListUrlCatcher.");
        }
      }
      catch (SecurityException paramBundle)
      {
        YelpLog.remoteError(paramBundle);
        finish();
        return;
      }
      startActivity(paramBundle);
      finish();
      return;
      label139:
      paramBundle = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivityFavoritesListUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */