package com.yelp.android.cm;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.StateListDrawable;
import android.util.StateSet;

public class c
  extends StateListDrawable
{
  private d a;
  private int b;
  
  public c(Context paramContext, int paramInt)
  {
    b = paramInt;
    a = new d(paramContext, 2130837673, paramInt);
    addState(StateSet.WILD_CARD, paramContext.getResources().getDrawable(2130838463));
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (b > 0)
    {
      a.a(a, 0.0F, 0.0F, getIntrinsicWidth());
      a.draw(paramCanvas);
    }
  }
  
  public int getOpacity()
  {
    return -3;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cm.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */