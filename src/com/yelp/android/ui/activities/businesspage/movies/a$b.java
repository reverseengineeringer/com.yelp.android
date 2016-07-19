package com.yelp.android.ui.activities.businesspage.movies;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Movie;
import com.yelp.android.serializable.MoviesViewModel;
import java.util.ArrayList;

public class a$b
{
  public static Intent a(Context paramContext, ArrayList<Movie> paramArrayList, String paramString1, String paramString2)
  {
    return new Intent(paramContext, ActivityMovies.class).putParcelableArrayListExtra("movies", paramArrayList).putExtra("biz_id", paramString1).putExtra("theater_url", paramString2);
  }
  
  public static MoviesViewModel a(Intent paramIntent)
  {
    return new MoviesViewModel(paramIntent.getParcelableArrayListExtra("movies"), paramIntent.getStringExtra("biz_id"), paramIntent.getStringExtra("theater_url"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.movies.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */