package com.yelp.android.ui.activities.search;

import android.support.v7.app.ActionBarActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

final class av
  implements View.OnClickListener
{
  av(ActionBarActivity paramActionBarActivity) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.SearchFilter);
    ((ax)a).h();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */