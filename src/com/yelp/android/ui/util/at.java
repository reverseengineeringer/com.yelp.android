package com.yelp.android.ui.util;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

public class at
{
  public static <T extends View> void a(T paramT, final a<T> parama)
  {
    paramT.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
    {
      public boolean onPreDraw()
      {
        try
        {
          int i = a.getWidth();
          int j = a.getHeight();
          parama.a(a, i, j);
          return true;
        }
        finally
        {
          a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
      }
    });
  }
  
  public static abstract interface a<T extends View>
  {
    public abstract void a(T paramT, int paramInt1, int paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */