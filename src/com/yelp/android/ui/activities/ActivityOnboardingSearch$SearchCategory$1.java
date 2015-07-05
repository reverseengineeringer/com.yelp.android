package com.yelp.android.ui.activities;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.m;
import com.yelp.android.serializable.Category;

 enum ActivityOnboardingSearch$SearchCategory$1
{
  ActivityOnboardingSearch$SearchCategory$1(int paramInt1, EventIri paramEventIri)
  {
    super(paramString, paramInt, paramInt1, paramEventIri, null);
  }
  
  public Category getCategory()
  {
    return AppData.b().j().a("restaurants");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityOnboardingSearch.SearchCategory.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */