package com.yelp.android.ui.activities.mutatebiz;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.Features;
import com.yelp.android.ui.activities.categorypicker.ActivityCategoryPicker;

class h
  implements View.OnClickListener
{
  h(ChangeBusinessAttributes paramChangeBusinessAttributes) {}
  
  public void onClick(View paramView)
  {
    paramView = a.h.getParcelableArrayListData();
    if (Features.category_picker.isEnabled()) {}
    for (paramView = ActivityCategoryPicker.a(a, paramView, a.n);; paramView = EditBusinessCategories.a(a, a.n, paramView))
    {
      a.startActivityForResult(paramView, 1015);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */