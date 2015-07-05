package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.widgets.TwoTierButton;
import java.util.HashSet;

class ai
  implements View.OnClickListener
{
  ai(FiltersDialog paramFiltersDialog, TwoTierButton paramTwoTierButton, int paramInt) {}
  
  public void onClick(View paramView)
  {
    paramView = c;
    TwoTierButton localTwoTierButton = a;
    if (!a.isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      FiltersDialog.a(paramView, localTwoTierButton, bool);
      if (!FiltersDialog.e(c).contains(Integer.valueOf(b))) {
        break;
      }
      FiltersDialog.e(c).remove(Integer.valueOf(b));
      return;
    }
    FiltersDialog.e(c).add(Integer.valueOf(b));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */