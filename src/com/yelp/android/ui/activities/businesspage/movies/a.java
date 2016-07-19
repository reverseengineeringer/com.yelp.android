package com.yelp.android.ui.activities.businesspage.movies;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.bx.b;
import com.yelp.android.serializable.Movie;
import com.yelp.android.serializable.MoviesViewModel;
import java.util.ArrayList;
import java.util.List;

public abstract interface a
{
  public static abstract interface a
    extends com.yelp.android.bx.a
  {
    public abstract void a(Movie paramMovie);
    
    public abstract void d();
  }
  
  public static class b
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
  
  public static abstract interface c
    extends b
  {
    public abstract void a(String paramString);
    
    public abstract void a(List<Movie> paramList);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.movies.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */