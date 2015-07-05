package android.support.v7.internal.widget;

import android.content.Context;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewDebug.CapturedViewProperty;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Adapter;

public abstract class z<T extends Adapter>
  extends ViewGroup
{
  int A;
  int B = -1;
  long C = Long.MIN_VALUE;
  boolean D = false;
  private int a;
  private View b;
  private boolean c;
  private boolean d;
  private z<T>.af e;
  @ViewDebug.ExportedProperty(category="scrolling")
  int j = 0;
  int k;
  int l;
  long m = Long.MIN_VALUE;
  long n;
  boolean o = false;
  int p;
  boolean q = false;
  ae r;
  ac s;
  ad t;
  boolean u;
  @ViewDebug.ExportedProperty(category="list")
  int v = -1;
  long w = Long.MIN_VALUE;
  @ViewDebug.ExportedProperty(category="list")
  int x = -1;
  long y = Long.MIN_VALUE;
  @ViewDebug.ExportedProperty(category="list")
  int z;
  
  z(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void a()
  {
    if (r == null) {
      return;
    }
    int i = getSelectedItemPosition();
    if (i >= 0)
    {
      View localView = getSelectedView();
      r.a(this, localView, i, getAdapter().getItemId(i));
      return;
    }
    r.a(this);
  }
  
  private void a(boolean paramBoolean)
  {
    if (d()) {
      paramBoolean = false;
    }
    if (paramBoolean)
    {
      if (b != null)
      {
        b.setVisibility(0);
        setVisibility(8);
      }
      for (;;)
      {
        if (u) {
          onLayout(false, getLeft(), getTop(), getRight(), getBottom());
        }
        return;
        setVisibility(0);
      }
    }
    if (b != null) {
      b.setVisibility(8);
    }
    setVisibility(0);
  }
  
  public long a(int paramInt)
  {
    Adapter localAdapter = getAdapter();
    if ((localAdapter == null) || (paramInt < 0)) {
      return Long.MIN_VALUE;
    }
    return localAdapter.getItemId(paramInt);
  }
  
  public boolean a(View paramView, int paramInt, long paramLong)
  {
    boolean bool = false;
    if (s != null)
    {
      playSoundEffect(0);
      if (paramView != null) {
        paramView.sendAccessibilityEvent(1);
      }
      s.a(this, paramView, paramInt, paramLong);
      bool = true;
    }
    return bool;
  }
  
  public void addView(View paramView)
  {
    throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
  }
  
  public void addView(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
  }
  
  int b(int paramInt, boolean paramBoolean)
  {
    return paramInt;
  }
  
  protected boolean canAnimate()
  {
    return (super.canAnimate()) && (z > 0);
  }
  
  boolean d()
  {
    return false;
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    View localView = getSelectedView();
    return (localView != null) && (localView.getVisibility() == 0) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent));
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  void e()
  {
    boolean bool2 = false;
    Adapter localAdapter = getAdapter();
    int i;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i = 1;
      if ((i != 0) && (!d())) {
        break label111;
      }
      i = 1;
      label38:
      if ((i == 0) || (!d)) {
        break label116;
      }
      bool1 = true;
      label51:
      super.setFocusableInTouchMode(bool1);
      if ((i == 0) || (!c)) {
        break label121;
      }
    }
    label111:
    label116:
    label121:
    for (boolean bool1 = true;; bool1 = false)
    {
      super.setFocusable(bool1);
      if (b != null)
      {
        if (localAdapter != null)
        {
          bool1 = bool2;
          if (!localAdapter.isEmpty()) {}
        }
        else
        {
          bool1 = true;
        }
        a(bool1);
      }
      return;
      i = 0;
      break;
      i = 0;
      break label38;
      bool1 = false;
      break label51;
    }
  }
  
  void f()
  {
    if (r != null)
    {
      if ((!q) && (!D)) {
        break label78;
      }
      if (e == null) {
        e = new af(this, null);
      }
      post(e);
    }
    for (;;)
    {
      if ((x != -1) && (isShown()) && (!isInTouchMode())) {
        sendAccessibilityEvent(4);
      }
      return;
      label78:
      a();
    }
  }
  
  void g()
  {
    int i3 = z;
    int i;
    if (i3 > 0) {
      if (o)
      {
        o = false;
        i = i();
        if ((i >= 0) && (b(i, true) == i))
        {
          setNextSelectedPositionInt(i);
          i = 1;
          if (i == 0)
          {
            int i2 = getSelectedItemPosition();
            int i1 = i2;
            if (i2 >= i3) {
              i1 = i3 - 1;
            }
            i2 = i1;
            if (i1 < 0) {
              i2 = 0;
            }
            i1 = b(i2, true);
            if (i1 >= 0) {
              break label153;
            }
            i1 = b(i2, false);
            label97:
            if (i1 >= 0)
            {
              setNextSelectedPositionInt(i1);
              h();
              i = 1;
            }
          }
        }
      }
    }
    for (;;)
    {
      if (i == 0)
      {
        x = -1;
        y = Long.MIN_VALUE;
        v = -1;
        w = Long.MIN_VALUE;
        o = false;
        h();
      }
      return;
      continue;
      label153:
      break label97;
      i = 0;
      break;
      i = 0;
    }
  }
  
  public abstract T getAdapter();
  
  @ViewDebug.CapturedViewProperty
  public int getCount()
  {
    return z;
  }
  
  public View getEmptyView()
  {
    return b;
  }
  
  public int getFirstVisiblePosition()
  {
    return j;
  }
  
  public int getLastVisiblePosition()
  {
    return j + getChildCount() - 1;
  }
  
  public final ac getOnItemClickListener()
  {
    return s;
  }
  
  public final ad getOnItemLongClickListener()
  {
    return t;
  }
  
  public final ae getOnItemSelectedListener()
  {
    return r;
  }
  
  public Object getSelectedItem()
  {
    Adapter localAdapter = getAdapter();
    int i = getSelectedItemPosition();
    if ((localAdapter != null) && (localAdapter.getCount() > 0) && (i >= 0)) {
      return localAdapter.getItem(i);
    }
    return null;
  }
  
  @ViewDebug.CapturedViewProperty
  public long getSelectedItemId()
  {
    return w;
  }
  
  @ViewDebug.CapturedViewProperty
  public int getSelectedItemPosition()
  {
    return v;
  }
  
  public abstract View getSelectedView();
  
  void h()
  {
    if ((x != B) || (y != C))
    {
      f();
      B = x;
      C = y;
    }
  }
  
  int i()
  {
    int i6 = z;
    int i4;
    if (i6 == 0)
    {
      i4 = -1;
      return i4;
    }
    long l1 = m;
    int i = l;
    if (l1 == Long.MIN_VALUE) {
      return -1;
    }
    i = Math.min(i6 - 1, Math.max(0, i));
    long l2 = SystemClock.uptimeMillis();
    int i1 = 0;
    Adapter localAdapter = getAdapter();
    label72:
    int i5;
    int i2;
    if (localAdapter == null)
    {
      return -1;
      if ((i5 != 0) || ((i1 != 0) && (i4 == 0)))
      {
        i2 += 1;
        i1 = 0;
        i = i2;
      }
    }
    for (;;)
    {
      int i3;
      if (SystemClock.uptimeMillis() <= l2 + 100L)
      {
        i4 = i;
        if (localAdapter.getItemId(i) == l1) {
          break;
        }
        if (i2 != i6 - 1) {
          break label155;
        }
        i4 = 1;
        if (i3 != 0) {
          break label161;
        }
      }
      label155:
      label161:
      for (i5 = 1;; i5 = 0)
      {
        if ((i4 == 0) || (i5 == 0)) {
          break label165;
        }
        return -1;
        i4 = 0;
        break;
      }
      label165:
      break label72;
      if ((i4 != 0) || ((i1 == 0) && (i5 == 0)))
      {
        i3 -= 1;
        i1 = 1;
        i = i3;
        continue;
        i3 = i;
        i4 = i;
        i2 = i;
        i = i4;
      }
    }
  }
  
  void j()
  {
    if (getChildCount() > 0)
    {
      o = true;
      n = a;
      if (x >= 0)
      {
        localView = getChildAt(x - j);
        m = w;
        l = v;
        if (localView != null) {
          k = localView.getTop();
        }
        p = 0;
      }
    }
    else
    {
      return;
    }
    View localView = getChildAt(0);
    Adapter localAdapter = getAdapter();
    if ((j >= 0) && (j < localAdapter.getCount())) {}
    for (m = localAdapter.getItemId(j);; m = -1L)
    {
      l = j;
      if (localView != null) {
        k = localView.getTop();
      }
      p = 1;
      return;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(e);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a = getHeight();
  }
  
  public void removeAllViews()
  {
    throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
  }
  
  public void removeView(View paramView)
  {
    throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
  }
  
  public void removeViewAt(int paramInt)
  {
    throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
  }
  
  public abstract void setAdapter(T paramT);
  
  public void setEmptyView(View paramView)
  {
    b = paramView;
    paramView = getAdapter();
    if ((paramView == null) || (paramView.isEmpty())) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  public void setFocusable(boolean paramBoolean)
  {
    boolean bool = true;
    Adapter localAdapter = getAdapter();
    int i;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i = 1;
      c = paramBoolean;
      if (!paramBoolean) {
        d = false;
      }
      if (!paramBoolean) {
        break label69;
      }
      paramBoolean = bool;
      if (i != 0) {
        if (!d()) {
          break label69;
        }
      }
    }
    label69:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      super.setFocusable(paramBoolean);
      return;
      i = 0;
      break;
    }
  }
  
  public void setFocusableInTouchMode(boolean paramBoolean)
  {
    boolean bool = true;
    Adapter localAdapter = getAdapter();
    int i;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i = 1;
      d = paramBoolean;
      if (paramBoolean) {
        c = true;
      }
      if (!paramBoolean) {
        break label69;
      }
      paramBoolean = bool;
      if (i != 0) {
        if (!d()) {
          break label69;
        }
      }
    }
    label69:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      super.setFocusableInTouchMode(paramBoolean);
      return;
      i = 0;
      break;
    }
  }
  
  void setNextSelectedPositionInt(int paramInt)
  {
    v = paramInt;
    w = a(paramInt);
    if ((o) && (p == 0) && (paramInt >= 0))
    {
      l = paramInt;
      m = w;
    }
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
  }
  
  public void setOnItemClickListener(ac paramac)
  {
    s = paramac;
  }
  
  public void setOnItemLongClickListener(ad paramad)
  {
    if (!isLongClickable()) {
      setLongClickable(true);
    }
    t = paramad;
  }
  
  public void setOnItemSelectedListener(ae paramae)
  {
    r = paramae;
  }
  
  void setSelectedPositionInt(int paramInt)
  {
    x = paramInt;
    y = a(paramInt);
  }
  
  public abstract void setSelection(int paramInt);
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */