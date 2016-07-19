package com.yelp.android.ae;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import com.bumptech.glide.load.engine.i;

public abstract class a<T extends Drawable>
  implements i<T>
{
  protected final T a;
  
  public a(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("Drawable must not be null!");
    }
    a = paramT;
  }
  
  public final T a()
  {
    return a.getConstantState().newDrawable();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ae.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */