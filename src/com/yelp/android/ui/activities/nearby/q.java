package com.yelp.android.ui.activities.nearby;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;

class q
  implements f, i<T>
{
  private float b;
  private boolean c = false;
  private int d = 0;
  private boolean e;
  private VelocityTracker f;
  
  private q(ComboMapListActivity paramComboMapListActivity) {}
  
  public void a()
  {
    ComboMapListActivity.a(a).d();
    ComboMapListActivity.e(a).setVisibility(0);
    ComboMapListActivity.a(a, true);
    ComboListFragment localComboListFragment = a.l();
    a.d();
    if (localComboListFragment != null) {
      localComboListFragment.h();
    }
  }
  
  public void a(ComboListFragment<T> paramComboListFragment)
  {
    paramComboListFragment.d(0);
    if (ComboMapListActivity.c(a))
    {
      ComboMapListActivity.d(a).b(5000.0F);
      return;
    }
    ComboMapListActivity.a(a).d();
    ComboMapListActivity.d(a).a(5000.0F);
  }
  
  public void a(ComboListFragment<T> paramComboListFragment, Object paramObject)
  {
    a.a(paramComboListFragment, paramObject);
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    }
    e = true;
    a.b = true;
    return false;
  }
  
  public void b()
  {
    ComboMapListActivity.a(a).c();
    ComboMapListActivity.e(a).setVisibility(8);
    ComboMapListActivity.a(a, false);
    ComboListFragment localComboListFragment = a.l();
    if (localComboListFragment != null) {
      localComboListFragment.i();
    }
  }
  
  @SuppressLint({"NewApi"})
  public boolean b(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    case 0: 
    default: 
      return false;
    case 1: 
    case 3: 
      return d();
    }
    if (!c)
    {
      b = paramMotionEvent.getRawY();
      d = ComboMapListActivity.d(a).getTranslation();
      c = true;
      e = true;
      f = VelocityTracker.obtain();
      f.clear();
    }
    int i = ViewConfiguration.get(a).getScaledTouchSlop();
    if ((e) && (Math.abs(paramMotionEvent.getRawY() - b) < i)) {
      return true;
    }
    a.b = false;
    e = false;
    i = (int)(paramMotionEvent.getRawY() - b + d);
    if (i <= 0)
    {
      b();
      ComboMapListActivity.d(a).setTranslation(0);
      c = false;
      return false;
    }
    if (i > 0) {
      ComboMapListActivity.a(a).d();
    }
    int j = ComboMapListActivity.d(a).getBottomThreshold();
    if (i >= j)
    {
      ComboMapListActivity.d(a).setTranslation(j);
      return true;
    }
    ComboMapListActivity.d(a).setTranslation(i);
    MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
    localMotionEvent.setLocation(paramMotionEvent.getRawX(), paramMotionEvent.getRawY());
    f.addMovement(localMotionEvent);
    localMotionEvent.recycle();
    return true;
  }
  
  public boolean c()
  {
    return c;
  }
  
  public boolean d()
  {
    if ((!c) || (e))
    {
      c = false;
      if (f != null)
      {
        f.recycle();
        f = null;
      }
      return false;
    }
    c = false;
    f.computeCurrentVelocity(1000);
    float f1 = f.getYVelocity();
    if (f1 < 0.0F) {
      ComboMapListActivity.d(a).b(f1);
    }
    for (;;)
    {
      f.recycle();
      f = null;
      return true;
      ComboMapListActivity.d(a).a(f1);
      ComboListFragment localComboListFragment = a.l();
      if (localComboListFragment != null) {
        localComboListFragment.h();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */