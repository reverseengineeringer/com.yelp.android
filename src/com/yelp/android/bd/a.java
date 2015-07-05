package com.yelp.android.bd;

import android.graphics.drawable.Drawable;

public class a
{
  public static void a(Drawable paramDrawable, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int i = (int)(paramFloat1 + paramFloat3 - paramDrawable.getIntrinsicWidth() / 2.0F);
    int j = (int)(paramFloat2 - paramDrawable.getIntrinsicHeight() / 2.0F);
    paramDrawable.setBounds(i, j, paramDrawable.getIntrinsicWidth() + i, paramDrawable.getIntrinsicHeight() + j);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */