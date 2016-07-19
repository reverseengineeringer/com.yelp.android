package com.yelp.android.d;

import android.graphics.drawable.Drawable;

class g
{
  public static void a(Drawable paramDrawable, boolean paramBoolean)
  {
    paramDrawable.setAutoMirrored(paramBoolean);
  }
  
  public static boolean a(Drawable paramDrawable)
  {
    return paramDrawable.isAutoMirrored();
  }
  
  public static Drawable b(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof l)) {
      localObject = new l(paramDrawable);
    }
    return (Drawable)localObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.d.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */