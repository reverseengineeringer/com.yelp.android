package com.yelp.android.ui.activities.businesspage.movies;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.m;
import com.yelp.android.serializable.Movie;
import com.yelp.android.serializable.MoviesViewModel;
import com.yelp.android.ui.activities.businesspage.i;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.t;
import com.yelp.android.util.StringUtils;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class ActivityMovies
  extends YelpListActivity
  implements a.c
{
  private String a;
  private a.a b;
  private i c;
  
  private void b()
  {
    c = new i(t.a(this), Collections.emptyList());
    TextView localTextView = (TextView)getLayoutInflater().inflate(2130903295, r(), false);
    localTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ActivityMovies.a(ActivityMovies.this).d();
      }
    });
    r().addFooterView(localTextView, "FOOTER", true);
    r().setAdapter(c);
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    b.a((Movie)c.getItem(paramInt));
  }
  
  public void a(String paramString)
  {
    if (StringUtils.d(paramString)) {
      return;
    }
    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }
  
  public void a(List<Movie> paramList)
  {
    c.a(paramList, true);
    r().f();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.MoviesList;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return Collections.singletonMap("id", a);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null) {}
    for (paramBundle = a.b.a(getIntent());; paramBundle = MoviesViewModel.b(paramBundle))
    {
      a = paramBundle.b();
      b = getAppData().B().a(this, paramBundle, AppData.b().k());
      setPresenter(b);
      b();
      b.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.movies.ActivityMovies
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */