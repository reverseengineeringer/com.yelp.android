package com.yelp.android.ui.activities.search;

import com.yelp.android.database.x;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;

class an
  extends x
{
  an(SearchOverlay paramSearchOverlay) {}
  
  public void a(Object paramObject)
  {
    SearchOverlay.a(a, (ArrayList)paramObject);
    SearchOverlay.e(a).a(SearchOverlay.d(a));
    SearchOverlay.e(a).notifyDataSetChanged();
  }
  
  public void b()
  {
    YelpLog.d("SearchOverlay", "Failed to load saved searches");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */