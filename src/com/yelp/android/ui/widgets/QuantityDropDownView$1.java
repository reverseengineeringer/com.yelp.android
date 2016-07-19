package com.yelp.android.ui.widgets;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;

class QuantityDropDownView$1
  implements View.OnClickListener
{
  QuantityDropDownView$1(QuantityDropDownView paramQuantityDropDownView) {}
  
  public void onClick(View paramView)
  {
    if (a.a == null) {
      a.a = QuantityDropDownView.a(a);
    }
    if (a.a.isShowing())
    {
      a.a.dismiss();
      return;
    }
    a.a.showAsDropDown(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.QuantityDropDownView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */