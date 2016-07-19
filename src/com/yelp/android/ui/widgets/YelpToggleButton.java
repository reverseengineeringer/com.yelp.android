package com.yelp.android.ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ToggleButton;
import com.yelp.android.appdata.n;
import com.yelp.android.co.a.k;

public class YelpToggleButton
  extends ToggleButton
{
  private static final int a = n.a(28);
  
  public YelpToggleButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    setGravity(17);
    setPadding(a, 0, 0, 0);
    setTextAppearance(getContext(), a.k.DeprecatedLargeLightText);
  }
  
  private void b()
  {
    setGravity(17);
    setPadding(0, 0, a, 0);
    setTextAppearance(getContext(), a.k.LargeBoldWhiteText);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    super.setChecked(paramBoolean);
    if (paramBoolean)
    {
      b();
      return;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.YelpToggleButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */