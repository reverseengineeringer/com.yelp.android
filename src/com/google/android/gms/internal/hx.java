package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.google.android.gms.ads.internal.s;
import java.lang.ref.WeakReference;

@fv
class hx
  extends hz
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  private final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> a;
  
  public hx(View paramView, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    super(paramView);
    a = new WeakReference(paramOnGlobalLayoutListener);
  }
  
  protected void a(ViewTreeObserver paramViewTreeObserver)
  {
    paramViewTreeObserver.addOnGlobalLayoutListener(this);
  }
  
  protected void b(ViewTreeObserver paramViewTreeObserver)
  {
    s.g().a(paramViewTreeObserver, this);
  }
  
  public void onGlobalLayout()
  {
    ViewTreeObserver.OnGlobalLayoutListener localOnGlobalLayoutListener = (ViewTreeObserver.OnGlobalLayoutListener)a.get();
    if (localOnGlobalLayoutListener != null)
    {
      localOnGlobalLayoutListener.onGlobalLayout();
      return;
    }
    b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */