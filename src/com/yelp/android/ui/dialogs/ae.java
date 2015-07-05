package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.View.OnClickListener;

class ae
  implements View.OnClickListener
{
  ae(FiltersDialog paramFiltersDialog) {}
  
  public void onClick(View paramView)
  {
    try
    {
      paramView = (aj)FiltersDialog.c(a);
      paramView.a(FiltersDialog.d(a));
      a.dismiss();
      return;
    }
    catch (ClassCastException paramView)
    {
      throw new ClassCastException("Activity should implement the FiltersDialogListener interface");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */