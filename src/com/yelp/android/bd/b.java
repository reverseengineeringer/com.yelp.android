package com.yelp.android.bd;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.StateSet;

public class b
  extends StateListDrawable
{
  private Drawable a;
  private int b;
  
  public b(Context paramContext, int paramInt)
  {
    b = paramInt;
    Resources localResources = paramContext.getResources();
    a = new c(paramContext, 2130837636, paramInt);
    paramContext = localResources.getDrawable(2130838193);
    addState(new int[] { 16842919 }, paramContext);
    paramContext = localResources.getDrawable(2130838193);
    addState(new int[] { 16842913 }, paramContext);
    addState(StateSet.WILD_CARD, localResources.getDrawable(2130838192));
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((b > 0) && (a != null))
    {
      a.a(a, 0.0F, 0.0F, getIntrinsicWidth());
      a.draw(paramCanvas);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bd.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */