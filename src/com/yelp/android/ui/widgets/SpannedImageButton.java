package com.yelp.android.ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.ImageButton;
import com.yelp.android.bf.c;

public class SpannedImageButton
  extends ImageButton
  implements Checkable, SpannableWidget
{
  private final SpannableWidget.SpannableWidgetUtil a;
  
  public SpannedImageButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SpannedImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, c.spannedButtonCommentLike);
  }
  
  public SpannedImageButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = new SpannableWidget.SpannableWidgetUtil(paramContext, paramAttributeSet, paramInt);
    refreshDrawableState();
  }
  
  public boolean isChecked()
  {
    return a.a();
  }
  
  public int[] onCreateDrawableState(int paramInt)
  {
    if (a == null) {
      return super.onCreateDrawableState(paramInt);
    }
    int[] arrayOfInt1 = a.a(this);
    int[] arrayOfInt2 = super.onCreateDrawableState(arrayOfInt1.length + paramInt);
    mergeDrawableStates(arrayOfInt2, arrayOfInt1);
    return arrayOfInt2;
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
  
  public void setOnCheckedChangeListener(j paramj)
  {
    a.setOnCheckedChangeListener(paramj);
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
 * Qualified Name:     com.yelp.android.ui.widgets.SpannedImageButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */