package com.yelp.android.ui.activities.categorypicker;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import com.yelp.android.appdata.webrequests.ApiRequest;
import java.util.ArrayList;

class AddNewCategoryAbstractFragment$2
  implements TextWatcher
{
  AddNewCategoryAbstractFragment$2(AddNewCategoryAbstractFragment paramAddNewCategoryAbstractFragment) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((AddNewCategoryAbstractFragment.c(a) != null) && (AddNewCategoryAbstractFragment.c(a).u()))
    {
      AddNewCategoryAbstractFragment.c(a).a(true);
      AddNewCategoryAbstractFragment.d(a).setVisibility(8);
    }
    if (TextUtils.isEmpty(paramCharSequence)) {
      a.a(new ArrayList());
    }
    while (paramCharSequence.length() < 3) {
      return;
    }
    AddNewCategoryAbstractFragment.a(a, a.a(paramCharSequence, AddNewCategoryAbstractFragment.e(a), AddNewCategoryAbstractFragment.f(a)));
    AddNewCategoryAbstractFragment.c(a).f(new Void[0]);
    AddNewCategoryAbstractFragment.d(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.AddNewCategoryAbstractFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */