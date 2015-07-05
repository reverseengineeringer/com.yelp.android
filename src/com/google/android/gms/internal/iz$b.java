package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class iz$b
  extends Drawable.ConstantState
{
  int Ml;
  int Mm;
  
  iz$b(b paramb)
  {
    if (paramb != null)
    {
      Ml = Ml;
      Mm = Mm;
    }
  }
  
  public int getChangingConfigurations()
  {
    return Ml;
  }
  
  public Drawable newDrawable()
  {
    return new iz(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iz.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */