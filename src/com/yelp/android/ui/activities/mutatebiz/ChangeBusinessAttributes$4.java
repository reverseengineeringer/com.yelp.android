package com.yelp.android.ui.activities.mutatebiz;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.categorypicker.ActivityCategoryPicker;
import com.yelp.android.ui.activities.categorypicker.e;

class ChangeBusinessAttributes$4
  implements View.OnClickListener
{
  ChangeBusinessAttributes$4(ChangeBusinessAttributes paramChangeBusinessAttributes) {}
  
  public void onClick(View paramView)
  {
    paramView = a.h.getParcelableArrayListData();
    if (e.a(a.getApplicationContext())) {}
    for (paramView = ActivityCategoryPicker.a(a, paramView, a.n.aw());; paramView = EditBusinessCategories.a(a, a.n, paramView))
    {
      a.startActivityForResult(paramView, 1019);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ChangeBusinessAttributes.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */