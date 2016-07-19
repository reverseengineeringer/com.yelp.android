package com.yelp.android.ui.widgets;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.PopupWindow;

final class QuantityDropDownView$c
  implements AdapterView.OnItemClickListener, AdapterView.OnItemSelectedListener
{
  private QuantityDropDownView a;
  
  public QuantityDropDownView$c(QuantityDropDownView paramQuantityDropDownView)
  {
    a = paramQuantityDropDownView;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a.setQuantity((int)paramLong);
    a.a.dismiss();
    a.requestFocus();
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a.setQuantity((int)paramLong);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView)
  {
    a.a.dismiss();
    a.requestFocus();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.QuantityDropDownView.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */