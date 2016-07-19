package com.yelp.android.am;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

class i$a
  extends Drawable.ConstantState
{
  private final Drawable.ConstantState a;
  private final int b;
  
  i$a(Drawable.ConstantState paramConstantState, int paramInt)
  {
    a = paramConstantState;
    b = paramInt;
  }
  
  i$a(a parama)
  {
    this(a, b);
  }
  
  public int getChangingConfigurations()
  {
    return 0;
  }
  
  public Drawable newDrawable()
  {
    return newDrawable(null);
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    return new i(this, null, paramResources);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.am.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */