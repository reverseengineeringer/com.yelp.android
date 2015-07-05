package com.yelp.android.a;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

class l
{
  public static Drawable a(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if ((paramDrawable instanceof GradientDrawable)) {
      localObject = new q(paramDrawable);
    }
    return (Drawable)localObject;
  }
  
  public static void a(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    paramDrawable.setHotspot(paramFloat1, paramFloat2);
  }
  
  public static void a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable instanceof q))
    {
      i.a(paramDrawable, paramInt);
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
    if ((paramDrawable instanceof q))
    {
      i.a(paramDrawable, paramColorStateList);
      return;
    }
    paramDrawable.setTintList(paramColorStateList);
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if ((paramDrawable instanceof q))
    {
      i.a(paramDrawable, paramMode);
      return;
    }
    paramDrawable.setTintMode(paramMode);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */