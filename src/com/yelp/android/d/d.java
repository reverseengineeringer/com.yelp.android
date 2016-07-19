package com.yelp.android.d;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

class d
{
  public static Drawable a(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof j)) {
      localObject = new j(paramDrawable);
    }
    return (Drawable)localObject;
  }
  
  public static void a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable instanceof i)) {
      ((i)paramDrawable).setTint(paramInt);
    }
  }
  
  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    if ((paramDrawable instanceof i)) {
      ((i)paramDrawable).setTintList(paramColorStateList);
    }
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if ((paramDrawable instanceof i)) {
      ((i)paramDrawable).setTintMode(paramMode);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */