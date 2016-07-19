package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.feed.viewbinder.t;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import java.util.ArrayList;

public class ActivityRecentCheckIns
  extends YelpListActivity
{
  public static Intent a(Context paramContext, ArrayList<YelpCheckIn> paramArrayList, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityRecentCheckIns.class);
    paramContext.putParcelableArrayListExtra("extra.multiple", paramArrayList);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(getString(2131165622, new Object[] { ((YelpBusiness)getIntent().getParcelableExtra("extra.business")).z() }));
    paramBundle = getIntent().getParcelableArrayListExtra("extra.multiple");
    t localt = new t();
    localt.a(paramBundle);
    r().setAdapter(localt);
    r().f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ActivityRecentCheckIns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */