package com.yelp.android.ui.widgets;

import android.content.Context;
import android.support.v4.app.FragmentTabHost;
import android.util.AttributeSet;

public class YelpTabHost
  extends FragmentTabHost
{
  public YelpTabHost(Context paramContext)
  {
    super(paramContext);
  }
  
  public YelpTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void onTouchModeChanged(boolean paramBoolean) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.YelpTabHost
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */