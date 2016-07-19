package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class jd$b
  extends Drawable.ConstantState
{
  int a;
  int b;
  
  jd$b(b paramb)
  {
    if (paramb != null)
    {
      a = a;
      b = b;
    }
  }
  
  public int getChangingConfigurations()
  {
    return a;
  }
  
  public Drawable newDrawable()
  {
    return new jd(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jd.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */