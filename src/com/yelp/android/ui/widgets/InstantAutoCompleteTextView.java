package com.yelp.android.ui.widgets;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.widget.AppCompatAutoCompleteTextView;
import android.util.AttributeSet;

public class InstantAutoCompleteTextView
  extends AppCompatAutoCompleteTextView
{
  private boolean a;
  private boolean b;
  
  public InstantAutoCompleteTextView(Context paramContext)
  {
    super(paramContext);
    b();
  }
  
  public InstantAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  public InstantAutoCompleteTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }
  
  private void b()
  {
    a = true;
  }
  
  public boolean a()
  {
    return a;
  }
  
  public boolean enoughToFilter()
  {
    return true;
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if ((a()) && ((getWindowToken() != null) || (b)) && (paramBoolean))
    {
      if (b) {
        b = false;
      }
      performFiltering(getText(), 0);
      showDropDown();
    }
  }
  
  public void setIsDropDownEnabled(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.InstantAutoCompleteTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */