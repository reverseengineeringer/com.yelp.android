package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.serializable.Movie;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ActivityMovies
  extends YelpActivity
{
  private String a;
  
  public static Intent a(Context paramContext, ArrayList<Movie> paramArrayList, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, ActivityMovies.class);
    paramContext.putParcelableArrayListExtra("movies", paramArrayList);
    paramContext.putExtra("biz_id", paramString1);
    paramContext.putExtra("theater_url", paramString2);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.MoviesList;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new HashMap(1);
    paramb.put("id", a);
    return paramb;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = getIntent().getStringExtra("biz_id");
    if (paramBundle == null)
    {
      paramBundle = getIntent().getParcelableArrayListExtra("movies");
      String str = getIntent().getStringExtra("theater_url");
      paramBundle = MoviesFragment.a(paramBundle, a, str);
      getSupportFragmentManager().beginTransaction().replace(2131493332, paramBundle).commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ActivityMovies
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */