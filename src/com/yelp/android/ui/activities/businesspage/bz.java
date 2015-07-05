package com.yelp.android.ui.activities.businesspage;

import com.yelp.android.analytics.iris.EventIri;

abstract class bz
  extends cc
{
  public bz(BusinessPageFragment paramBusinessPageFragment, EventIri paramEventIri)
  {
    super(paramBusinessPageFragment, paramEventIri);
  }
  
  protected void a(EventIri paramEventIri, String paramString)
  {
    BusinessPageFragment.b(b, paramEventIri, paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */