package com.flipboard.bottomsheet.commons;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Outline;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;

class b
{
  static int a(Context paramContext, float paramFloat)
  {
    return Math.round(TypedValue.applyDimension(1, paramFloat, paramContext.getResources().getDisplayMetrics()));
  }
  
  @TargetApi(21)
  static class a
    extends ViewOutlineProvider
  {
    int a;
    int b;
    
    a(int paramInt1, int paramInt2)
    {
      a = paramInt1;
      b = paramInt2;
    }
    
    public void getOutline(View paramView, Outline paramOutline)
    {
      paramOutline.setRect(0, 0, a, b);
    }
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */