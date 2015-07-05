package com.yelp.android.ui.activities.categorypicker;

import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.BusinessCategorySuggest;
import java.util.ArrayList;
import java.util.List;

class b
  implements m<List<BusinessCategorySuggest>>
{
  b(AddNewCategoryFragment paramAddNewCategoryFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<BusinessCategorySuggest> paramList)
  {
    if (AddNewCategoryFragment.d(a).getVisibility() == 0) {
      AddNewCategoryFragment.d(a).setVisibility(8);
    }
    AddNewCategoryFragment.e(a).a((ArrayList)paramList);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    AddNewCategoryFragment.d(a).setVisibility(0);
    AddNewCategoryFragment.d(a).setText(paramYelpException.getMessage(a.getActivity()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */