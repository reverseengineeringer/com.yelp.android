package com.yelp.android.a;

import android.graphics.drawable.Drawable;

class j
{
  public static void a(Drawable paramDrawable)
  {
    paramDrawable.jumpToCurrentState();
  }
  
  public static Drawable b(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof o)) {
      localObject = new o(paramDrawable);
    }
    return (Drawable)localObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */