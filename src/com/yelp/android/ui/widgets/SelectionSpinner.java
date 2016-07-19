package com.yelp.android.ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Spinner;

public class SelectionSpinner
  extends Spinner
{
  public SelectionSpinner(Context paramContext)
  {
    super(paramContext);
  }
  
  public SelectionSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SelectionSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a()
  {
    super.setSelection(0);
  }
  
  public void setSelection(int paramInt)
  {
    int i = getSelectedItemPosition();
    super.setSelection(paramInt);
    if (paramInt == i) {}
    for (i = 1;; i = 0)
    {
      if (i != 0) {
        getOnItemSelectedListener().onItemSelected(this, getSelectedView(), paramInt, getSelectedItemId());
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.SelectionSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */