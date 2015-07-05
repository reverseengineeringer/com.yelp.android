package com.yelp.android.ui.util;

import android.view.View;
import android.view.ViewTreeObserver;

public class cs
{
  public static <T extends View> void a(T paramT, cu<T> paramcu)
  {
    paramT.getViewTreeObserver().addOnPreDrawListener(new ct(paramT, paramcu));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */