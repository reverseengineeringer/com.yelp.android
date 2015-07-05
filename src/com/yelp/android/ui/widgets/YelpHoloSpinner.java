package com.yelp.android.ui.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.Spinner;

public class YelpHoloSpinner
  extends Spinner
{
  public YelpHoloSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  @SuppressLint({"MissingSuperCall"})
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.YelpHoloSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */