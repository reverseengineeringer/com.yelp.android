package com.yelp.android.z;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import com.bumptech.glide.load.engine.t;

public abstract class a<T extends Drawable>
  implements t<T>
{
  protected final T a;
  private boolean b;
  
  public a(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("Drawable must not be null!");
    }
    a = paramT;
  }
  
  public final T a()
  {
    if (!b)
    {
      b = true;
      return a;
    }
    return a.getConstantState().newDrawable();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.z.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */