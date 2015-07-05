package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import com.yelp.android.bf.f;
import com.yelp.android.bf.m;
import com.yelp.android.ui.panels.CommonLoadingSpinner;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.y;

public class ScrollToLoadListView
  extends PullDownListView
{
  private PanelLoading a;
  private bq b;
  private bm c;
  private bp d;
  private int e = f.gray_section_background;
  private boolean f = false;
  private boolean g = false;
  private View h;
  private boolean i = false;
  
  public ScrollToLoadListView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ScrollToLoadListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.ScrollToLoadListView);
    if (paramContext != null)
    {
      f = paramContext.getBoolean(0, false);
      paramContext.recycle();
    }
  }
  
  public ScrollToLoadListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a(bo parambo)
  {
    if (f)
    {
      a.setVisibility(8);
      addHeaderView(a, parambo, false);
      return;
    }
    addFooterView(a, parambo, false);
  }
  
  private void j()
  {
    if (b == null)
    {
      b = new bq(this, this);
      super.setOnScrollListener(b);
    }
    if (c == null) {
      c = new bm(this, null);
    }
  }
  
  private void k()
  {
    if ((d == null) && (g()))
    {
      b = null;
      super.setOnScrollListener(c);
    }
  }
  
  private void l()
  {
    if (f)
    {
      removeHeaderView(a);
      return;
    }
    removeFooterView(a);
  }
  
  public void a(Runnable paramRunnable, PanelLoading paramPanelLoading)
  {
    a = paramPanelLoading;
    a.setLayoutParams(new AbsListView.LayoutParams(a.getLayoutParams()));
    a(new bo(paramRunnable));
    super.setOnScrollListener(new bq(this, this));
  }
  
  public void a(Runnable paramRunnable, y paramy)
  {
    l();
    a = new PanelLoading(getContext());
    a.setLayoutParams(new AbsListView.LayoutParams(a.getLayoutParams()));
    a.setBackgroundResource(e);
    a.setSpinner(paramy);
    if (paramRunnable != null) {}
    for (paramRunnable = new bo(paramRunnable);; paramRunnable = null)
    {
      a(paramRunnable);
      j();
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (getCount() < 1) {
      return;
    }
    post(new bk(this, paramBoolean));
  }
  
  public void b(boolean paramBoolean)
  {
    if (getCount() < 1) {
      return;
    }
    post(new bl(this, paramBoolean));
  }
  
  public void c(boolean paramBoolean)
  {
    PanelLoading localPanelLoading;
    if (a != null)
    {
      localPanelLoading = a;
      if (!paramBoolean) {
        break label24;
      }
    }
    label24:
    for (int j = 0;; j = 8)
    {
      localPanelLoading.setVisibility(j);
      return;
    }
  }
  
  public boolean c()
  {
    return g;
  }
  
  public boolean d()
  {
    return f;
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (h == null) {
      return super.dispatchTouchEvent(paramMotionEvent);
    }
    return h.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void e()
  {
    a(null, CommonLoadingSpinner.SMALL);
  }
  
  public void f()
  {
    if (a != null)
    {
      if (getAdapter() == null) {
        setAdapter(new bn(null));
      }
      l();
      a.c();
    }
    a = null;
    k();
  }
  
  public boolean g()
  {
    return a == null;
  }
  
  public PanelLoading getLoadingPanel()
  {
    return a;
  }
  
  public boolean h()
  {
    return i;
  }
  
  public void i()
  {
    i = false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int m = 0;
    if ((b != null) && (b.a())) {}
    for (int j = 1; d != null; j = 0)
    {
      boolean bool = d.a(paramMotionEvent);
      int k = m;
      if (j != 0)
      {
        k = m;
        if (d.b(paramMotionEvent)) {
          k = 1;
        }
      }
      if ((!bool) && (k == 0)) {
        break;
      }
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setBottomReached(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void setOnLoadNeeded(Runnable paramRunnable)
  {
    a(paramRunnable, CommonLoadingSpinner.SMALL);
  }
  
  public void setOnPullDownCallback(bp parambp)
  {
    d = parambp;
    if (d != null)
    {
      j();
      return;
    }
    k();
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    throw new UnsupportedOperationException("setOnScrollListener() not allowed for ScrollToLoadListView");
  }
  
  public void setPanelLoadingBackground(int paramInt)
  {
    if (a != null) {
      a.setBackgroundResource(paramInt);
    }
    e = paramInt;
  }
  
  public void setSendTouchesView(View paramView)
  {
    h = paramView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ScrollToLoadListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */