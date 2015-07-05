package com.yelp.android.ui.activities.businesspage;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ci
  implements View.OnClickListener
{
  ci(MoviesFragment paramMoviesFragment) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.MoreMovieShowtimesClicked, "id", MoviesFragment.a(a));
    paramView = a.getArguments().getString("theater_url");
    a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramView)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */