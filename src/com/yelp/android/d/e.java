package com.yelp.android.d;

import android.graphics.drawable.Drawable;

class e
{
  public static void a(Drawable paramDrawable)
  {
    paramDrawable.jumpToCurrentState();
  }
  
  public static Drawable b(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof k)) {
      localObject = new k(paramDrawable);
    }
    return (Drawable)localObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */