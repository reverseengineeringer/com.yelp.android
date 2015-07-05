package com.yelp.android.ui.activities;

import com.yelp.android.appdata.AppData;
import com.yelp.android.database.d;
import com.yelp.android.database.q;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.util.aa;
import java.util.ArrayList;

public final class dr
  extends aa<ActivityRecents, Void, ArrayList<YelpBusiness>>
{
  private ActivityRecents a;
  
  protected ArrayList<YelpBusiness> a(ActivityRecents... paramVarArgs)
  {
    a = paramVarArgs[0];
    return AppData.b().i().f().a();
  }
  
  protected void a(ArrayList<YelpBusiness> paramArrayList)
  {
    ActivityRecents.a(a, paramArrayList);
    ActivityRecents.a(a).a(paramArrayList);
    a.q().setEmptyView(ActivityRecents.a(a, a.q(), 2131165758));
    a.disableLoading();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */