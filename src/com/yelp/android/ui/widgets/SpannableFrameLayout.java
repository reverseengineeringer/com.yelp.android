package com.yelp.android.ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.FrameLayout;

public class SpannableFrameLayout
  extends FrameLayout
  implements Checkable, SpannableWidget
{
  final SpannableWidget.SpannableWidgetUtil a;
  
  public SpannableFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SpannableFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = new SpannableWidget.SpannableWidgetUtil(paramContext, paramAttributeSet, 0);
  }
  
  public SpannableFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = new SpannableWidget.SpannableWidgetUtil(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean isChecked()
  {
    return a.a();
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    Object localObject;
    if (a == null) {
      localObject = super.onCreateDrawableState(paramInt);
    }
    int[] arrayOfInt2;
    int[] arrayOfInt1;
    do
    {
      return (int[])localObject;
      arrayOfInt2 = a.a(this);
      arrayOfInt1 = super.onCreateDrawableState(arrayOfInt2.length + paramInt);
      localObject = arrayOfInt1;
    } while (arrayOfInt2.length <= 0);
    mergeDrawableStates(arrayOfInt1, arrayOfInt2);
    return arrayOfInt1;
  }
  
  public boolean performClick()
  {
    a.b(this);
    return super.performClick();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    a.a(this, paramBoolean);
  }
  
  public void setClickable(boolean paramBoolean)
  {
    if (paramBoolean != isClickable()) {
      refreshDrawableState();
    }
    super.setClickable(paramBoolean);
  }
  
  public void setLeft(boolean paramBoolean)
  {
    a.setLeft(paramBoolean);
  }
  
  public void setMiddle(boolean paramBoolean)
  {
    a.setMiddle(paramBoolean);
  }
  
  public void setOnCheckedChangeListener(c paramc)
  {
    a.a(paramc);
    refreshDrawableState();
  }
  
  public void setRight(boolean paramBoolean)
  {
    a.setRight(paramBoolean);
  }
  
  public void toggle()
  {
    a.c(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.SpannableFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */