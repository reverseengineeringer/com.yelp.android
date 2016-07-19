package com.yelp.android.ui.activities.categorypicker;

import android.app.FragmentManager;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import java.util.ArrayList;

class CategoryPickerAbstractFragment$1
  implements c.a<Category>
{
  CategoryPickerAbstractFragment$1(CategoryPickerAbstractFragment paramCategoryPickerAbstractFragment) {}
  
  public void a(Category paramCategory)
  {
    CategoryPickerAbstractFragment.a(a).A_();
    CategoryPickerAbstractFragment.b(a).c(paramCategory);
    CategoryPickerAbstractFragment.c(a).remove(paramCategory);
    CategoryPickerAbstractFragment.d(a);
    if (CategoryPickerAbstractFragment.c(a).isEmpty())
    {
      CategoryPickerAbstractFragment.e(a).setVisibility(8);
      a.i.a(-1, true);
      a.getActivity().getFragmentManager().popBackStack();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.CategoryPickerAbstractFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */