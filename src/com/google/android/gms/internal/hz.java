package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

abstract class hz
{
  private final WeakReference<View> a;
  
  public hz(View paramView)
  {
    a = new WeakReference(paramView);
  }
  
  public final void a()
  {
    ViewTreeObserver localViewTreeObserver = c();
    if (localViewTreeObserver != null) {
      a(localViewTreeObserver);
    }
  }
  
  protected abstract void a(ViewTreeObserver paramViewTreeObserver);
  
  public final void b()
  {
    ViewTreeObserver localViewTreeObserver = c();
    if (localViewTreeObserver != null) {
      b(localViewTreeObserver);
    }
  }
  
  protected abstract void b(ViewTreeObserver paramViewTreeObserver);
  
  protected ViewTreeObserver c()
  {
    Object localObject = (View)a.get();
    if (localObject == null) {
      localObject = null;
    }
    ViewTreeObserver localViewTreeObserver;
    do
    {
      return (ViewTreeObserver)localObject;
      localViewTreeObserver = ((View)localObject).getViewTreeObserver();
      if (localViewTreeObserver == null) {
        break;
      }
      localObject = localViewTreeObserver;
    } while (localViewTreeObserver.isAlive());
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */