package com.yelp.android.ui.activities.bookmarks;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.b;
import com.yelp.android.ui.map.e.a;
import com.yelp.android.ui.map.j;
import com.yelp.android.ui.util.YelpMapFragment;
import java.util.ArrayList;

public class BookmarksMapFragment
  extends YelpMapFragment<YelpBusiness>
  implements ActivityBookmarks.b
{
  private ArrayList<YelpBusiness> b;
  private final e.a<YelpBusiness> c = new BookmarksMapFragment.1(this);
  
  public static BookmarksMapFragment b()
  {
    return new BookmarksMapFragment();
  }
  
  private void h()
  {
    a.g();
    a.a(b, new j(getActivity(), 0));
    a.f();
  }
  
  public void a()
  {
    h();
  }
  
  public void a(ArrayList<YelpBusiness> paramArrayList)
  {
    b = paramArrayList;
    if (getActivity() != null) {
      h();
    }
  }
  
  public ViewIri c()
  {
    return ViewIri.BookmarksMap;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramBundle != null) {
      b = paramBundle.getParcelableArrayList("business_list");
    }
    paramLayoutInflater = paramLayoutInflater.inflate(2130903426, paramViewGroup, false);
    c(paramLayoutInflater);
    a.a(paramBundle, new b(getActivity()));
    a.setInfoWindowListener(c);
    h();
    return paramLayoutInflater;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("business_list", b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.BookmarksMapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */