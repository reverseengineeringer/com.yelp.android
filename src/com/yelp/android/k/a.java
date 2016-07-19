package com.yelp.android.k;

import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;

public class a
{
  public static PorterDuff.Mode a(int paramInt, PorterDuff.Mode paramMode)
  {
    switch (paramInt)
    {
    }
    do
    {
      return paramMode;
      return PorterDuff.Mode.SRC_OVER;
      return PorterDuff.Mode.SRC_IN;
      return PorterDuff.Mode.SRC_ATOP;
      return PorterDuff.Mode.MULTIPLY;
      return PorterDuff.Mode.SCREEN;
    } while (Build.VERSION.SDK_INT < 11);
    return PorterDuff.Mode.valueOf("ADD");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */