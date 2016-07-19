package com.yelp.android.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.yelp.android.ui.util.SlightlyLessBrokenLinearLayout;

public class KeyboardAwareLinearLayout
  extends SlightlyLessBrokenLinearLayout
{
  private int a = -1;
  private a b;
  
  public KeyboardAwareLinearLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public KeyboardAwareLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt2);
    if ((a - paramInt1 > 400) && (b != null)) {
      b.a();
    }
    for (;;)
    {
      a = paramInt1;
      return;
      if ((paramInt1 - a > 400) && (b != null)) {
        b.b();
      }
    }
  }
  
  public void setKeyboardListener(a parama)
  {
    b = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.view.KeyboardAwareLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */