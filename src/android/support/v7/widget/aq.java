package android.support.v7.widget;

import android.os.SystemClock;
import android.support.v4.view.ba;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;

public abstract class aq
  implements View.OnTouchListener
{
  private final float a;
  private final int b;
  private final int c;
  private final View d;
  private Runnable e;
  private Runnable f;
  private boolean g;
  private boolean h;
  private int i;
  private final int[] j = new int[2];
  
  public aq(View paramView)
  {
    d = paramView;
    a = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    b = ViewConfiguration.getTapTimeout();
    c = ((b + ViewConfiguration.getLongPressTimeout()) / 2);
  }
  
  private boolean a(MotionEvent paramMotionEvent)
  {
    View localView = d;
    if (!localView.isEnabled()) {}
    int k;
    do
    {
      return false;
      switch (ba.a(paramMotionEvent))
      {
      default: 
        return false;
      case 0: 
        i = paramMotionEvent.getPointerId(0);
        h = false;
        if (e == null) {
          e = new ar(this, null);
        }
        localView.postDelayed(e, b);
        if (f == null) {
          f = new as(this, null);
        }
        localView.postDelayed(f, c);
        return false;
      case 2: 
        k = paramMotionEvent.findPointerIndex(i);
      }
    } while ((k < 0) || (a(localView, paramMotionEvent.getX(k), paramMotionEvent.getY(k), a)));
    d();
    localView.getParent().requestDisallowInterceptTouchEvent(true);
    return true;
    d();
    return false;
  }
  
  private static boolean a(View paramView, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat1 >= -paramFloat3) && (paramFloat2 >= -paramFloat3) && (paramFloat1 < paramView.getRight() - paramView.getLeft() + paramFloat3) && (paramFloat2 < paramView.getBottom() - paramView.getTop() + paramFloat3);
  }
  
  private boolean a(View paramView, MotionEvent paramMotionEvent)
  {
    int[] arrayOfInt = j;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(-arrayOfInt[0], -arrayOfInt[1]);
    return true;
  }
  
  private boolean b(MotionEvent paramMotionEvent)
  {
    boolean bool1 = true;
    View localView = d;
    Object localObject = a();
    if ((localObject == null) || (!((ListPopupWindow)localObject).b())) {}
    do
    {
      return false;
      localObject = ListPopupWindow.a((ListPopupWindow)localObject);
    } while ((localObject == null) || (!((ap)localObject).isShown()));
    MotionEvent localMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
    b(localView, localMotionEvent);
    a((View)localObject, localMotionEvent);
    boolean bool2 = ((ap)localObject).a(localMotionEvent, i);
    localMotionEvent.recycle();
    int k = ba.a(paramMotionEvent);
    if ((k != 1) && (k != 3))
    {
      k = 1;
      if ((!bool2) || (k == 0)) {
        break label124;
      }
    }
    for (;;)
    {
      return bool1;
      k = 0;
      break;
      label124:
      bool1 = false;
    }
  }
  
  private boolean b(View paramView, MotionEvent paramMotionEvent)
  {
    int[] arrayOfInt = j;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(arrayOfInt[0], arrayOfInt[1]);
    return true;
  }
  
  private void d()
  {
    if (f != null) {
      d.removeCallbacks(f);
    }
    if (e != null) {
      d.removeCallbacks(e);
    }
  }
  
  private void e()
  {
    d();
    if (!d.isEnabled()) {}
    while (!b()) {
      return;
    }
    d.getParent().requestDisallowInterceptTouchEvent(true);
    long l = SystemClock.uptimeMillis();
    MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
    d.onTouchEvent(localMotionEvent);
    localMotionEvent.recycle();
    g = true;
    h = true;
  }
  
  public abstract ListPopupWindow a();
  
  protected boolean b()
  {
    ListPopupWindow localListPopupWindow = a();
    if ((localListPopupWindow != null) && (!localListPopupWindow.b())) {
      localListPopupWindow.c();
    }
    return true;
  }
  
  protected boolean c()
  {
    ListPopupWindow localListPopupWindow = a();
    if ((localListPopupWindow != null) && (localListPopupWindow.b())) {
      localListPopupWindow.a();
    }
    return true;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    boolean bool3 = g;
    if (bool3)
    {
      if (h) {
        bool1 = b(paramMotionEvent);
      }
      for (;;)
      {
        g = bool1;
        if (!bool1)
        {
          bool1 = bool2;
          if (!bool3) {}
        }
        else
        {
          bool1 = true;
        }
        return bool1;
        if ((b(paramMotionEvent)) || (!c())) {
          bool1 = true;
        } else {
          bool1 = false;
        }
      }
    }
    if ((a(paramMotionEvent)) && (b())) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      if (bool1)
      {
        long l = SystemClock.uptimeMillis();
        paramView = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        d.onTouchEvent(paramView);
        paramView.recycle();
      }
      break;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */