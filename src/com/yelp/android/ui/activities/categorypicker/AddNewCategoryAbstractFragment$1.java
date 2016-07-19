package com.yelp.android.ui.activities.categorypicker;

import android.widget.EditText;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import java.util.List;

class AddNewCategoryAbstractFragment$1
  implements ApiRequest.b<List<ApiResult>>
{
  AddNewCategoryAbstractFragment$1(AddNewCategoryAbstractFragment paramAddNewCategoryAbstractFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<ApiResult> paramList)
  {
    if (paramList.isEmpty()) {
      AddNewCategoryAbstractFragment.b(a).a(AddNewCategoryAbstractFragment.a(a).getText().toString());
    }
    a.a(paramList);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(paramYelpException.getMessage(a.getActivity()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.AddNewCategoryAbstractFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */