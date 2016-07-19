package com.yelp.android.d;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;

class h
{
  public static Drawable a(Drawable paramDrawable)
  {
    Object localObject;
    if (!(paramDrawable instanceof GradientDrawable))
    {
      localObject = paramDrawable;
      if (!(paramDrawable instanceof DrawableContainer)) {}
    }
    else
    {
      localObject = new m(paramDrawable);
    }
    return (Drawable)localObject;
  }
  
  public static void a(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    paramDrawable.setHotspot(paramFloat1, paramFloat2);
  }
  
  public static void a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable instanceof m))
    {
      d.a(paramDrawable, paramInt);
      return;
    }
    paramDrawable.setTint(paramInt);
  }
  
  public static void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramDrawable.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    if ((paramDrawable instanceof m))
    {
      d.a(paramDrawable, paramColorStateList);
      return;
    }
    paramDrawable.setTintList(paramColorStateList);
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if ((paramDrawable instanceof m))
    {
      d.a(paramDrawable, paramMode);
      return;
    }
    paramDrawable.setTintMode(paramMode);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.d.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */