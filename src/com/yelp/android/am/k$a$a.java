package com.yelp.android.am;

import android.util.Log;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.ref.WeakReference;

class k$a$a
  implements ViewTreeObserver.OnPreDrawListener
{
  private final WeakReference<k.a> a;
  
  public k$a$a(k.a parama)
  {
    a = new WeakReference(parama);
  }
  
  public boolean onPreDraw()
  {
    if (Log.isLoggable("ViewTarget", 2)) {
      Log.v("ViewTarget", "OnGlobalLayoutListener called listener=" + this);
    }
    k.a locala = (k.a)a.get();
    if (locala != null) {
      k.a.a(locala);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.am.k.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */