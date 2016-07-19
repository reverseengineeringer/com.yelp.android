package com.yelp.android.ui.util;

import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.yelp.android.appdata.n;

public abstract class ad
  extends GestureDetector.SimpleOnGestureListener
  implements View.OnTouchListener
{
  private float a;
  private GestureDetector b;
  protected boolean j;
  protected double k = NaN.0D;
  protected double l = NaN.0D;
  protected double m = -1.0D;
  protected int n = 0;
  protected View o;
  protected View p;
  
  protected ad(View paramView1, View paramView2)
  {
    o = paramView1;
    p = paramView2;
    b = new GestureDetector(p.getContext(), this);
  }
  
  public abstract void b();
  
  public abstract void b(float paramFloat);
  
  public abstract void c();
  
  public abstract void c(float paramFloat);
  
  protected void g() {}
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    a = paramMotionEvent.getY();
    j = false;
    return super.onDown(paramMotionEvent);
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 < 0.0F)
    {
      c();
      return true;
    }
    if (paramFloat2 > 0.0F)
    {
      b();
      return true;
    }
    j = true;
    return super.onFling(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (b.onTouchEvent(paramMotionEvent)) {
      return false;
    }
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return false;
      l = NaN.0D;
      k = NaN.0D;
      continue;
      if (!j)
      {
        float f2 = paramMotionEvent.getY();
        float f3 = f2 - a;
        int i;
        label159:
        label181:
        float f1;
        if (((k > 0.0D) && (k - f3 > 0.0D)) || ((k < 0.0D) && (k - f3 < 0.0D) && (Double.isNaN(l))))
        {
          l = f2;
          m = f3;
          if (f3 < 0.0F)
          {
            i = 1;
            n = i;
          }
        }
        else
        {
          if (k - f3 >= 0.0D) {
            break label279;
          }
          i = 1;
          f1 = Math.abs(f3);
          if ((Double.isNaN(l)) || (i != n) || (Math.abs(f2 - l) <= n.a(3))) {
            break label285;
          }
          a = ((float)l);
          l = NaN.0D;
          f1 = 0.0F;
          g();
        }
        for (;;)
        {
          k = f3;
          if (f2 >= a) {
            break label324;
          }
          b(f1);
          break;
          i = 2;
          break label159;
          label279:
          i = 2;
          break label181;
          label285:
          if ((i != n) && (Math.abs(l - f2) > n.a(3))) {
            l = NaN.0D;
          }
        }
        label324:
        if (f2 > a) {
          c(f1);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */