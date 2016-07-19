package com.yelp.android.ui.activities.bookmarks;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.search.a;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;

public class BookmarksSuggestFragment
  extends YelpListFragment
{
  private a a;
  private AdapterView.OnItemClickListener b;
  
  public static BookmarksSuggestFragment c()
  {
    return new BookmarksSuggestFragment();
  }
  
  public void a(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    b = paramOnItemClickListener;
  }
  
  public void a(a parama)
  {
    a = parama;
    a(a);
    b(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903255, paramViewGroup, false);
    paramLayoutInflater.findViewById(2131690307).setOnClickListener(new BookmarksSuggestFragment.1(this));
    return paramLayoutInflater;
  }
  
  public void onResume()
  {
    super.onResume();
    if (b != null) {
      m().setOnItemClickListener(b);
    }
  }
  
  public ViewIri v_()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.BookmarksSuggestFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */