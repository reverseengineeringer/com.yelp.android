package com.yelp.android.ui.activities.addphoto;

import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import java.util.Map;

class j
  extends d
{
  j(i parami, EventIri paramEventIri, Map paramMap)
  {
    super(paramEventIri, paramMap);
  }
  
  public void a(View paramView)
  {
    i.a(a, true);
    a.f_();
    a.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */