package com.yelp.android.ag;

import android.content.Context;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class l
{
  private final View a;
  private final List<h> b = new ArrayList();
  private m c;
  
  public l(View paramView)
  {
    a = paramView;
  }
  
  private void a()
  {
    if (b.isEmpty()) {}
    for (;;)
    {
      return;
      int i = 1;
      Object localObject = a.getLayoutParams();
      if (b()) {
        a(a.getWidth(), a.getHeight());
      }
      while (i != 0)
      {
        localObject = a.getViewTreeObserver();
        if (((ViewTreeObserver)localObject).isAlive()) {
          ((ViewTreeObserver)localObject).removeOnPreDrawListener(c);
        }
        c = null;
        return;
        if (d()) {
          a(width, height);
        } else {
          i = 0;
        }
      }
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).a(paramInt1, paramInt2);
    }
    b.clear();
  }
  
  private boolean b()
  {
    return (a.getWidth() > 0) && (a.getHeight() > 0);
  }
  
  private boolean c()
  {
    ViewGroup.LayoutParams localLayoutParams = a.getLayoutParams();
    return (localLayoutParams != null) && ((width == -2) || (height == -2));
  }
  
  private boolean d()
  {
    ViewGroup.LayoutParams localLayoutParams = a.getLayoutParams();
    return (localLayoutParams != null) && (width > 0) && (height > 0);
  }
  
  public void a(h paramh)
  {
    Object localObject = a.getLayoutParams();
    if (b()) {
      paramh.a(a.getWidth(), a.getHeight());
    }
    do
    {
      return;
      if (d())
      {
        paramh.a(width, height);
        return;
      }
      if (c())
      {
        localObject = ((WindowManager)a.getContext().getSystemService("window")).getDefaultDisplay();
        int i = ((Display)localObject).getWidth();
        int j = ((Display)localObject).getHeight();
        if (Log.isLoggable("ViewTarget", 5)) {
          Log.w("ViewTarget", "Trying to load image into ImageView using WRAP_CONTENT, defaulting to screen dimensions: [" + i + "x" + j + "]. Give the view an actual width and height " + " for better performance.");
        }
        paramh.a(i, j);
        return;
      }
      if (!b.contains(paramh)) {
        b.add(paramh);
      }
    } while (c != null);
    paramh = a.getViewTreeObserver();
    c = new m(this);
    paramh.addOnPreDrawListener(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */