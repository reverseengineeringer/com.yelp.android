package com.yelp.android.ui.activities.businesspage;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Movie;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;

public class MoviesFragment
  extends YelpListFragment
{
  private cg a;
  private String b;
  
  public static MoviesFragment a(ArrayList<Movie> paramArrayList, String paramString1, String paramString2)
  {
    MoviesFragment localMoviesFragment = new MoviesFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("movies", paramArrayList);
    localBundle.putString("biz_id", paramString1);
    localBundle.putString("theater_url", paramString2);
    localMoviesFragment.setArguments(localBundle);
    return localMoviesFragment;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = (Movie)a.getItem(paramInt);
    AppData.a(EventIri.MovieClicked, "title", paramListView.getTitle());
    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramListView.getTicketingUrl())));
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = getArguments().getParcelableArrayList("movies");
    b = getArguments().getString("biz_id");
    a = new cg(paramBundle);
    paramBundle = (TextView)getActivity().getLayoutInflater().inflate(2130903245, m(), false);
    paramBundle.setOnClickListener(new ci(this));
    m().addFooterView(paramBundle);
    m().setAdapter(a);
    m().f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.MoviesFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */