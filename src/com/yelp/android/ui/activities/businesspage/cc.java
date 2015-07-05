package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;

abstract class cc
  implements View.OnClickListener
{
  EventIri d;
  String e;
  
  public cc(BusinessPageFragment paramBusinessPageFragment, EventIri paramEventIri)
  {
    this(paramBusinessPageFragment, paramEventIri, null);
  }
  
  public cc(BusinessPageFragment paramBusinessPageFragment, EventIri paramEventIri, String paramString)
  {
    d = paramEventIri;
    e = paramString;
  }
  
  public abstract void a(View paramView);
  
  protected void a(EventIri paramEventIri, String paramString)
  {
    BusinessPageFragment.a(f, paramEventIri, paramString);
  }
  
  public final void onClick(View paramView)
  {
    a(d, e);
    a(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */