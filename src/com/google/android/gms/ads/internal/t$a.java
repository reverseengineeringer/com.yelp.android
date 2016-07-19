package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ViewSwitcher;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hg;
import com.google.android.gms.internal.ho;
import com.google.android.gms.internal.ib;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class t$a
  extends ViewSwitcher
{
  private final hg a;
  private final ho b;
  
  public t$a(Context paramContext, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener paramOnScrollChangedListener)
  {
    super(paramContext);
    a = new hg(paramContext);
    if ((paramContext instanceof Activity))
    {
      b = new ho((Activity)paramContext, paramOnGlobalLayoutListener, paramOnScrollChangedListener);
      b.a();
      return;
    }
    b = null;
  }
  
  public hg a()
  {
    return a;
  }
  
  public void b()
  {
    gz.e("Disable position monitoring on adFrame.");
    if (b != null) {
      b.b();
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (b != null) {
      b.c();
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (b != null) {
      b.d();
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    a.a(paramMotionEvent);
    return false;
  }
  
  public void removeAllViews()
  {
    Object localObject = new ArrayList();
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      if ((localView != null) && ((localView instanceof ib))) {
        ((List)localObject).add((ib)localView);
      }
      i += 1;
    }
    super.removeAllViews();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((ib)((Iterator)localObject).next()).destroy();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.t.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */