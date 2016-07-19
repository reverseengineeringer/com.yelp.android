package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ai;
import android.support.v4.view.t;
import android.support.v4.widget.v;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.ListView;

public class PullDownListView
  extends ListView
{
  private float a;
  private int b;
  private View c;
  private int d;
  private boolean e;
  private boolean f;
  private boolean g;
  private v h;
  private int i;
  private float j;
  private a k;
  
  public PullDownListView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public PullDownListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public PullDownListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(float paramFloat)
  {
    if (k != null) {
      k.a(paramFloat / j);
    }
  }
  
  private void a(int paramInt)
  {
    if (c != null)
    {
      c.setPadding(c.getPaddingLeft(), paramInt, c.getPaddingRight(), c.getPaddingBottom());
      a(paramInt - d);
    }
  }
  
  private void a(Context paramContext)
  {
    e = false;
    g = false;
    c = null;
    b = -1;
    h = v.a(paramContext, new DecelerateInterpolator());
    i = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    j = getResourcesgetDisplayMetricsdensity;
  }
  
  private boolean b(float paramFloat)
  {
    if (k != null) {
      return k.b(paramFloat / j);
    }
    return false;
  }
  
  private void c()
  {
    if (getOverScrollMode() != 2) {
      setOverScrollMode(2);
    }
  }
  
  private void d()
  {
    if (getOverScrollMode() != 0) {
      setOverScrollMode(0);
    }
  }
  
  public boolean a()
  {
    return e;
  }
  
  public void b()
  {
    if (c != null)
    {
      c.setPadding(c.getPaddingLeft(), d, c.getPaddingRight(), c.getPaddingBottom());
      g = false;
    }
  }
  
  public void computeScroll()
  {
    if ((g) && (h.g()))
    {
      a(h.c());
      ai.d(this);
      return;
    }
    g = false;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!e) || (c == null)) {
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
    if (t.a(paramMotionEvent) == 0)
    {
      a = paramMotionEvent.getRawY();
      b = -1;
      f = false;
    }
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!e) || (c == null)) {
      return super.onTouchEvent(paramMotionEvent);
    }
    switch (t.a(paramMotionEvent))
    {
    }
    for (;;)
    {
      d();
      return super.onTouchEvent(paramMotionEvent);
      int n = (int)(paramMotionEvent.getRawY() - a);
      int m = n;
      if (!f)
      {
        m = n;
        if (n > i)
        {
          f = true;
          a = paramMotionEvent.getRawY();
          m = 0;
        }
      }
      if ((f) && (m > 0) && (getFirstVisiblePosition() == 0)) {
        if (getChildAt(0).getTop() < 0)
        {
          b = -1;
        }
        else
        {
          if (b == -1) {
            b = m;
          }
          while (b <= m)
          {
            c();
            a(m - b + d);
            return true;
          }
          b = -1;
          continue;
          b = -1;
          m = c.getPaddingTop();
          n = m - d;
          if ((n > 0) && (!b(n)))
          {
            int i1 = Math.round(n / 1.2F);
            h.a(0, m, 0, -n, i1);
            g = true;
            ai.d(this);
          }
        }
      }
    }
  }
  
  public void setOnPullDownListener(a parama)
  {
    k = parama;
  }
  
  public void setPullDownEnabled(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void setPullTarget(View paramView)
  {
    c = paramView;
    if (paramView != null) {
      d = paramView.getPaddingTop();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(float paramFloat);
    
    public abstract boolean b(float paramFloat);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.PullDownListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */