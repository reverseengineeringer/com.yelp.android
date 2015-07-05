package com.yelp.android.ag;

import android.util.Log;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.ref.WeakReference;

class m
  implements ViewTreeObserver.OnPreDrawListener
{
  private final WeakReference<l> a;
  
  public m(l paraml)
  {
    a = new WeakReference(paraml);
  }
  
  public boolean onPreDraw()
  {
    if (Log.isLoggable("ViewTarget", 2)) {
      Log.v("ViewTarget", "OnGlobalLayoutListener called listener=" + this);
    }
    l locall = (l)a.get();
    if (locall != null) {
      l.a(locall);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */