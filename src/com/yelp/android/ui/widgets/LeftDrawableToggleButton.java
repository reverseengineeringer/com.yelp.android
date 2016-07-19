package com.yelp.android.ui.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Checkable;

public class LeftDrawableToggleButton
  extends LeftDrawableButton
  implements Checkable
{
  private static final int[] d = { 16842912 };
  boolean a;
  boolean b;
  private c c;
  
  public LeftDrawableToggleButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (getBackground() != null)
    {
      int[] arrayOfInt = getDrawableState();
      getBackground().setState(arrayOfInt);
      invalidate();
    }
  }
  
  public boolean isChecked()
  {
    return a;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (isChecked()) {
      mergeDrawableStates(arrayOfInt, d);
    }
    return arrayOfInt;
  }
  
  public boolean performClick()
  {
    toggle();
    return super.performClick();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (a != paramBoolean)
    {
      a = paramBoolean;
      refreshDrawableState();
      if (!b) {}
    }
    else
    {
      return;
    }
    b = true;
    if (c != null) {
      c.onCheckedChanged(this);
    }
    b = false;
  }
  
  public void setOnCheckedChangeListener(c paramc)
  {
    c = paramc;
  }
  
  public void toggle()
  {
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.LeftDrawableToggleButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */