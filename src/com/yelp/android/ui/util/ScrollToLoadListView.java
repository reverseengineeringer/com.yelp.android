package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import com.yelp.android.co.a.e;
import com.yelp.android.co.a.l;
import com.yelp.android.ui.panels.CommonLoadingSpinner;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.c;

public class ScrollToLoadListView
  extends PullDownListView
{
  private PanelLoading a;
  private e b;
  private a c;
  private d d;
  private AbsListView.OnScrollListener e;
  private int f = a.e.gray_section_background;
  private boolean g = false;
  private boolean h = false;
  private View i;
  private boolean j = false;
  
  public ScrollToLoadListView(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public ScrollToLoadListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ScrollToLoadListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.l.ScrollToLoadListView);
    if (paramContext != null)
    {
      g = paramContext.getBoolean(a.l.ScrollToLoadListView_topLoading, false);
      paramContext.recycle();
    }
    c = new a(null);
  }
  
  private void a(c paramc)
  {
    if (g)
    {
      a.setVisibility(8);
      addHeaderView(a, paramc, false);
      return;
    }
    addFooterView(a, paramc, false);
  }
  
  private void j()
  {
    if (b == null)
    {
      b = new e(this);
      super.setOnScrollListener(b);
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
    if (g)
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
    a(new c(paramRunnable));
    super.setOnScrollListener(new e(this));
  }
  
  public void a(Runnable paramRunnable, c paramc)
  {
    l();
    a = new PanelLoading(getContext());
    a.setLayoutParams(new AbsListView.LayoutParams(a.getLayoutParams()));
    a.setBackgroundResource(f);
    a.setSpinner(paramc);
    if (paramRunnable != null) {}
    for (paramRunnable = new c(paramRunnable);; paramRunnable = null)
    {
      a(paramRunnable);
      j();
      return;
    }
  }
  
  public void a(final boolean paramBoolean)
  {
    if (getCount() < 1) {
      return;
    }
    post(new Runnable()
    {
      public void run()
      {
        if (paramBoolean)
        {
          smoothScrollToPosition(getCount() - 1);
          return;
        }
        setSelection(getCount() - 1);
      }
    });
  }
  
  public void b(final boolean paramBoolean)
  {
    if (getCount() < 1) {
      return;
    }
    post(new Runnable()
    {
      public void run()
      {
        if (paramBoolean)
        {
          smoothScrollToPosition(0);
          return;
        }
        setSelection(0);
      }
    });
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
    for (int k = 0;; k = 8)
    {
      localPanelLoading.setVisibility(k);
      return;
    }
  }
  
  public boolean c()
  {
    return h;
  }
  
  public boolean d()
  {
    return g;
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (i == null) {
      return super.dispatchTouchEvent(paramMotionEvent);
    }
    return i.dispatchTouchEvent(paramMotionEvent);
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
        setAdapter(new b(null));
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
    return j;
  }
  
  public void i()
  {
    j = false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int n = 0;
    if ((b != null) && (b.a())) {}
    for (int k = 1; d != null; k = 0)
    {
      boolean bool = d.a(paramMotionEvent);
      int m = n;
      if (k != 0)
      {
        m = n;
        if (d.b(paramMotionEvent)) {
          m = 1;
        }
      }
      if ((!bool) && (m == 0)) {
        break;
      }
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setBottomReached(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setOnLoadNeeded(Runnable paramRunnable)
  {
    a(paramRunnable, CommonLoadingSpinner.SMALL);
  }
  
  public void setOnPullDownCallback(d paramd)
  {
    d = paramd;
    if (d != null)
    {
      j();
      return;
    }
    k();
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    e = paramOnScrollListener;
  }
  
  public void setPanelLoadingBackground(int paramInt)
  {
    if (a != null) {
      a.setBackgroundResource(paramInt);
    }
    f = paramInt;
  }
  
  public void setSendTouchesView(View paramView)
  {
    i = paramView;
  }
  
  private class a
    implements AbsListView.OnScrollListener
  {
    private a() {}
    
    public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
    {
      if (ScrollToLoadListView.a(ScrollToLoadListView.this) != null) {
        ScrollToLoadListView.a(ScrollToLoadListView.this).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      }
    }
    
    public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      ScrollToLoadListView.a(ScrollToLoadListView.this, true);
      if (ScrollToLoadListView.a(ScrollToLoadListView.this) != null) {
        ScrollToLoadListView.a(ScrollToLoadListView.this).onScrollStateChanged(paramAbsListView, paramInt);
      }
    }
  }
  
  private static final class b
    extends BaseAdapter
  {
    public boolean areAllItemsEnabled()
    {
      return true;
    }
    
    public int getCount()
    {
      return 0;
    }
    
    public Object getItem(int paramInt)
    {
      return null;
    }
    
    public long getItemId(int paramInt)
    {
      return 0L;
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      Object localObject = paramView;
      if (paramView == null) {
        localObject = new LinearLayout(paramViewGroup.getContext());
      }
      return (View)localObject;
    }
    
    public int getViewTypeCount()
    {
      return 1;
    }
    
    public boolean hasStableIds()
    {
      return false;
    }
    
    public boolean isEmpty()
    {
      return true;
    }
    
    public boolean isEnabled(int paramInt)
    {
      return true;
    }
  }
  
  private static final class c
  {
    private final Runnable a;
    
    c(Runnable paramRunnable)
    {
      a = paramRunnable;
    }
    
    public void a()
    {
      a.run();
    }
  }
  
  public static abstract interface d
  {
    public abstract boolean a(MotionEvent paramMotionEvent);
    
    public abstract boolean b(MotionEvent paramMotionEvent);
  }
  
  private final class e
    extends ScrollToLoadListView.a
  {
    private boolean c = true;
    private ScrollToLoadListView d;
    
    public e(ScrollToLoadListView paramScrollToLoadListView)
    {
      super(null);
      d = paramScrollToLoadListView;
    }
    
    private void a(AbsListView paramAbsListView, int paramInt)
    {
      paramAbsListView = paramAbsListView.getItemAtPosition(paramInt);
      PanelLoading localPanelLoading = d.getLoadingPanel();
      if (localPanelLoading != null)
      {
        localPanelLoading.setVisibility(0);
        localPanelLoading.b();
      }
      if ((paramAbsListView instanceof ScrollToLoadListView.c)) {
        ((ScrollToLoadListView.c)paramAbsListView).a();
      }
    }
    
    public boolean a()
    {
      return c;
    }
    
    public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
    {
      super.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      if (d.d())
      {
        paramInt1 = paramAbsListView.getFirstVisiblePosition();
        if ((paramInt3 > 1) && (d.getLastVisiblePosition() + 1 == paramInt3)) {
          d.setBottomReached(true);
        }
        if ((d.c()) && (paramInt1 == 0)) {
          a(paramAbsListView, paramInt1);
        }
        return;
      }
      if ((paramInt1 == 0) && (paramAbsListView.getChildAt(0) != null) && (paramAbsListView.getChildAt(0).getTop() == 0)) {}
      for (c = true;; c = false)
      {
        paramInt1 = paramAbsListView.getLastVisiblePosition();
        if (paramInt1 >= paramAbsListView.getCount()) {
          break;
        }
        a(paramAbsListView, paramInt1);
        return;
      }
    }
    
    public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      super.onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ScrollToLoadListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */