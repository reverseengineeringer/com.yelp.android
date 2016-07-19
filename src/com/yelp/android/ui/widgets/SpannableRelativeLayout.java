package com.yelp.android.ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.RelativeLayout;

public class SpannableRelativeLayout
  extends RelativeLayout
  implements Checkable, SpannableWidget
{
  final SpannableWidget.SpannableWidgetUtil mUtil;
  
  public SpannableRelativeLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SpannableRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    mUtil = new SpannableWidget.SpannableWidgetUtil(paramContext, paramAttributeSet, 0);
  }
  
  public SpannableRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    mUtil = new SpannableWidget.SpannableWidgetUtil(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean isChecked()
  {
    return mUtil.a();
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    Object localObject;
    if (mUtil == null) {
      localObject = super.onCreateDrawableState(paramInt);
    }
    int[] arrayOfInt2;
    int[] arrayOfInt1;
    do
    {
      return (int[])localObject;
      arrayOfInt2 = mUtil.a(this);
      arrayOfInt1 = super.onCreateDrawableState(arrayOfInt2.length + paramInt);
      localObject = arrayOfInt1;
    } while (arrayOfInt2.length <= 0);
    mergeDrawableStates(arrayOfInt1, arrayOfInt2);
    return arrayOfInt1;
  }
  
  public boolean performClick()
  {
    mUtil.b(this);
    return super.performClick();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    mUtil.a(this, paramBoolean);
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
    mUtil.setLeft(paramBoolean);
  }
  
  public void setMiddle(boolean paramBoolean)
  {
    mUtil.setMiddle(paramBoolean);
  }
  
  public void setOnCheckedChangeListener(c paramc)
  {
    mUtil.a(paramc);
    refreshDrawableState();
  }
  
  public void setRight(boolean paramBoolean)
  {
    mUtil.setRight(paramBoolean);
  }
  
  public void toggle()
  {
    mUtil.c(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.SpannableRelativeLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */