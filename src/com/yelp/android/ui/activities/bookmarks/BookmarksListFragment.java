package com.yelp.android.ui.activities.bookmarks;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

public class BookmarksListFragment
  extends YelpListFragment
  implements ActivityBookmarks.b
{
  private BusinessAdapter<YelpBusiness> a;
  private ArrayList<YelpBusiness> b;
  private Runnable c;
  
  public static BookmarksListFragment c()
  {
    return new BookmarksListFragment();
  }
  
  private BusinessAdapter<YelpBusiness> f()
  {
    BusinessAdapter localBusinessAdapter = new BusinessAdapter(getActivity(), false);
    localBusinessAdapter.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.ALTERNATE_NAMES, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.BOOKMARK, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.PRICE, BusinessAdapter.DisplayFeature.NUMBERED, BusinessAdapter.DisplayFeature.ADDRESS, BusinessAdapter.DisplayFeature.DISTANCE });
    return localBusinessAdapter;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    startActivity(ActivityBusinessPage.b(getActivity(), (YelpBusiness)b.get(paramInt)));
  }
  
  public void a(ErrorType paramErrorType)
  {
    super.a(paramErrorType);
    m().setVisibility(8);
  }
  
  public void a(Runnable paramRunnable)
  {
    c = paramRunnable;
    try
    {
      m().setOnLoadNeeded(c);
      return;
    }
    catch (IllegalStateException paramRunnable) {}
  }
  
  public void a(ArrayList<YelpBusiness> paramArrayList)
  {
    b.clear();
    b.addAll(paramArrayList);
    a.notifyDataSetChanged();
  }
  
  public a getIri()
  {
    return ViewIri.BookmarksList;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null) {}
    for (b = paramBundle.getParcelableArrayList("business_list");; b = new ArrayList())
    {
      if (c != null) {
        m().setOnLoadNeeded(c);
      }
      a = f();
      a.a(b);
      a(a);
      return;
    }
  }
  
  public void onPause()
  {
    super.onPause();
    l();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("business_list", b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.BookmarksListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */