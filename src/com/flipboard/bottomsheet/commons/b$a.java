package com.flipboard.bottomsheet.commons;

import android.annotation.TargetApi;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

@TargetApi(21)
class b$a
  extends ViewOutlineProvider
{
  int a;
  int b;
  
  b$a(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public void getOutline(View paramView, Outline paramOutline)
  {
    paramOutline.setRect(0, 0, a, b);
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */