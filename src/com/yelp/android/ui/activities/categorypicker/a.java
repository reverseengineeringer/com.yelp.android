package com.yelp.android.ui.activities.categorypicker;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import com.yelp.android.appdata.webrequests.v;
import com.yelp.android.serializable.YelpBusiness;

class a
  implements TextWatcher
{
  a(AddNewCategoryFragment paramAddNewCategoryFragment) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((AddNewCategoryFragment.a(a) != null) && (AddNewCategoryFragment.a(a).isFetching())) {
      AddNewCategoryFragment.a(a).cancel(true);
    }
    AddNewCategoryFragment localAddNewCategoryFragment;
    String str;
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      localAddNewCategoryFragment = a;
      str = paramCharSequence.toString();
      if (AddNewCategoryFragment.b(a) == null) {
        break label115;
      }
    }
    label115:
    for (paramCharSequence = AddNewCategoryFragment.b(a).getCountry();; paramCharSequence = null)
    {
      AddNewCategoryFragment.a(localAddNewCategoryFragment, new v(str, paramCharSequence, AddNewCategoryFragment.c(a)));
      AddNewCategoryFragment.a(a).execute(new Void[0]);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */