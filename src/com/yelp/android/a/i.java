package com.yelp.android.a;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

class i
{
  public static Drawable a(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof n)) {
      localObject = new n(paramDrawable);
    }
    return (Drawable)localObject;
  }
  
  public static void a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable instanceof m)) {
      ((m)paramDrawable).setTint(paramInt);
    }
  }
  
  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    if ((paramDrawable instanceof m)) {
      ((m)paramDrawable).setTintList(paramColorStateList);
    }
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if ((paramDrawable instanceof m)) {
      ((m)paramDrawable).setTintMode(paramMode);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */