package com.yelp.android.ui.activities.search;

import android.os.Parcelable;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.android.ui.dialogs.ListDialogFragment.a;

class SearchBusinessesByMap$11
  implements ListDialogFragment.a
{
  SearchBusinessesByMap$11(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void a(String paramString, Parcelable paramParcelable)
  {
    if ((a.a != null) && (a.a.k() != null))
    {
      d.a(a, paramString, a.a);
      SearchBusinessesByMap.a(a, a.a.h().a(paramString));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */