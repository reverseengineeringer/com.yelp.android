package com.yelp.android.ui.activities;

import com.yelp.android.appdata.AppData;
import com.yelp.android.database.b;
import com.yelp.android.database.g;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.util.q;
import java.util.ArrayList;

public final class ActivityRecents$a
  extends q<ActivityRecents, Void, ArrayList<YelpBusiness>>
{
  private ActivityRecents a;
  
  protected ArrayList<YelpBusiness> a(ActivityRecents... paramVarArgs)
  {
    a = paramVarArgs[0];
    return AppData.b().i().d().a();
  }
  
  protected void a(ArrayList<YelpBusiness> paramArrayList)
  {
    ActivityRecents.a(a, paramArrayList);
    ActivityRecents.a(a).a(paramArrayList);
    a.r().setEmptyView(ActivityRecents.a(a, a.r(), 2131165841));
    a.disableLoading();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRecents.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */