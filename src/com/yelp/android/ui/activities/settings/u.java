package com.yelp.android.ui.activities.settings;

import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import java.util.List;

class u
  implements m<List<T>>
{
  u(LocationPreference paramLocationPreference) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<T> paramList)
  {
    paramApiRequest = (String[])paramList.toArray(new String[paramList.size()]);
    paramApiRequest = new ArrayAdapter(a.getContext(), 2130903427, paramApiRequest);
    a.b.setAdapter(paramApiRequest);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */