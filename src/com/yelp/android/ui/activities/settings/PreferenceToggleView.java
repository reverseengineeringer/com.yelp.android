package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.yelp.android.b;
import com.yelp.android.ui.widgets.YelpToggleButton;

public class PreferenceToggleView
  extends PreferenceView
{
  public PreferenceToggleView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PreferenceToggleView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772121);
  }
  
  public PreferenceToggleView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.PreferenceView, paramInt, paramInt);
    setChecked(paramContext.getBoolean(12, true));
    paramContext.recycle();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    super.setChecked(paramBoolean);
    YelpToggleButton localYelpToggleButton = (YelpToggleButton)findViewById(2131492995);
    if (localYelpToggleButton != null) {
      localYelpToggleButton.setChecked(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.PreferenceToggleView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */