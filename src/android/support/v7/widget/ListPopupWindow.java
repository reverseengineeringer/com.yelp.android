package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.view.az;
import android.support.v4.view.t;
import android.support.v4.widget.n;
import android.support.v4.widget.p;
import android.support.v7.internal.widget.AppCompatPopupWindow;
import android.support.v7.internal.widget.ListViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import com.yelp.android.f.f;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.k;
import java.lang.reflect.Method;

public class ListPopupWindow
{
  private static Method a;
  private Handler A = new Handler();
  private Rect B = new Rect();
  private boolean C;
  private int D;
  int b = Integer.MAX_VALUE;
  private Context c;
  private PopupWindow d;
  private ListAdapter e;
  private a f;
  private int g = -2;
  private int h = -2;
  private int i;
  private int j;
  private boolean k;
  private int l = 0;
  private boolean m = false;
  private boolean n = false;
  private View o;
  private int p = 0;
  private DataSetObserver q;
  private View r;
  private Drawable s;
  private AdapterView.OnItemClickListener t;
  private AdapterView.OnItemSelectedListener u;
  private final g v = new g(null);
  private final f w = new f(null);
  private final e x = new e(null);
  private final c y = new c(null);
  private Runnable z;
  
  static
  {
    try
    {
      a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", new Class[] { Boolean.TYPE });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
    }
  }
  
  public ListPopupWindow(Context paramContext)
  {
    this(paramContext, null, a.a.listPopupWindowStyle);
  }
  
  public ListPopupWindow(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.listPopupWindowStyle);
  }
  
  public ListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public ListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    c = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.ListPopupWindow, paramInt1, paramInt2);
    i = localTypedArray.getDimensionPixelOffset(a.k.ListPopupWindow_android_dropDownHorizontalOffset, 0);
    j = localTypedArray.getDimensionPixelOffset(a.k.ListPopupWindow_android_dropDownVerticalOffset, 0);
    if (j != 0) {
      k = true;
    }
    localTypedArray.recycle();
    d = new AppCompatPopupWindow(paramContext, paramAttributeSet, paramInt1);
    d.setInputMethodMode(1);
    D = f.a(c.getResources().getConfiguration().locale);
  }
  
  private void a()
  {
    if (o != null)
    {
      ViewParent localViewParent = o.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(o);
      }
    }
  }
  
  private int b()
  {
    Object localObject2;
    boolean bool;
    Object localObject1;
    View localView;
    LinearLayout.LayoutParams localLayoutParams;
    label253:
    int i1;
    int i2;
    if (f == null)
    {
      localObject2 = c;
      z = new Runnable()
      {
        public void run()
        {
          View localView = e();
          if ((localView != null) && (localView.getWindowToken() != null)) {
            c();
          }
        }
      };
      if (!C)
      {
        bool = true;
        f = new a((Context)localObject2, bool);
        if (s != null) {
          f.setSelector(s);
        }
        f.setAdapter(e);
        f.setOnItemClickListener(t);
        f.setFocusable(true);
        f.setFocusableInTouchMode(true);
        f.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
        {
          public void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            if (paramAnonymousInt != -1)
            {
              paramAnonymousAdapterView = ListPopupWindow.a(ListPopupWindow.this);
              if (paramAnonymousAdapterView != null) {
                ListPopupWindow.a.a(paramAnonymousAdapterView, false);
              }
            }
          }
          
          public void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
        });
        f.setOnScrollListener(x);
        if (u != null) {
          f.setOnItemSelectedListener(u);
        }
        localObject1 = f;
        localView = o;
        if (localView == null) {
          break label690;
        }
        localObject2 = new LinearLayout((Context)localObject2);
        ((LinearLayout)localObject2).setOrientation(1);
        localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        switch (p)
        {
        default: 
          Log.e("ListPopupWindow", "Invalid hint position " + p);
          localView.measure(View.MeasureSpec.makeMeasureSpec(h, Integer.MIN_VALUE), 0);
          localObject1 = (LinearLayout.LayoutParams)localView.getLayoutParams();
          i1 = localView.getMeasuredHeight();
          i2 = topMargin;
          i1 = bottomMargin + (i1 + i2);
          localObject1 = localObject2;
        }
      }
    }
    for (;;)
    {
      d.setContentView((View)localObject1);
      for (;;)
      {
        label314:
        localObject1 = d.getBackground();
        if (localObject1 != null)
        {
          ((Drawable)localObject1).getPadding(B);
          i2 = B.top + B.bottom;
          if (k) {
            break label682;
          }
          j = (-B.top);
        }
        label682:
        for (;;)
        {
          if (d.getInputMethodMode() == 2) {}
          int i4 = d.getMaxAvailableHeight(e(), j);
          if ((m) || (g == -1))
          {
            return i4 + i2;
            bool = false;
            break;
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            ((LinearLayout)localObject2).addView(localView);
            break label253;
            ((LinearLayout)localObject2).addView(localView);
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            break label253;
            localObject1 = (ViewGroup)d.getContentView();
            localObject1 = o;
            if (localObject1 == null) {
              break label685;
            }
            localObject2 = (LinearLayout.LayoutParams)((View)localObject1).getLayoutParams();
            i1 = ((View)localObject1).getMeasuredHeight();
            i2 = topMargin;
            i1 = bottomMargin + (i1 + i2);
            break label314;
            B.setEmpty();
            i2 = 0;
            continue;
          }
          int i3;
          switch (h)
          {
          default: 
            i3 = View.MeasureSpec.makeMeasureSpec(h, 1073741824);
          }
          for (;;)
          {
            i4 = f.a(i3, 0, -1, i4 - i1, -1);
            i3 = i1;
            if (i4 > 0) {
              i3 = i1 + i2;
            }
            return i4 + i3;
            i3 = View.MeasureSpec.makeMeasureSpec(c.getResources().getDisplayMetrics().widthPixels - (B.left + B.right), Integer.MIN_VALUE);
            continue;
            i3 = View.MeasureSpec.makeMeasureSpec(c.getResources().getDisplayMetrics().widthPixels - (B.left + B.right), 1073741824);
          }
        }
        label685:
        i1 = 0;
      }
      label690:
      i1 = 0;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (a != null) {}
    try
    {
      a.invoke(d, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception localException)
    {
      Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
    }
  }
  
  public void a(int paramInt)
  {
    p = paramInt;
  }
  
  public void a(Drawable paramDrawable)
  {
    d.setBackgroundDrawable(paramDrawable);
  }
  
  public void a(View paramView)
  {
    r = paramView;
  }
  
  public void a(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    t = paramOnItemClickListener;
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    if (q == null) {
      q = new d(null);
    }
    for (;;)
    {
      e = paramListAdapter;
      if (e != null) {
        paramListAdapter.registerDataSetObserver(q);
      }
      if (f != null) {
        f.setAdapter(e);
      }
      return;
      if (e != null) {
        e.unregisterDataSetObserver(q);
      }
    }
  }
  
  public void a(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    d.setOnDismissListener(paramOnDismissListener);
  }
  
  public void a(boolean paramBoolean)
  {
    C = paramBoolean;
    d.setFocusable(paramBoolean);
  }
  
  public void b(int paramInt)
  {
    i = paramInt;
  }
  
  public void c()
  {
    boolean bool1 = true;
    boolean bool2 = false;
    int i3 = -1;
    int i2 = b();
    boolean bool3 = l();
    int i1;
    label52:
    PopupWindow localPopupWindow;
    if (d.isShowing())
    {
      if (h == -1)
      {
        i1 = -1;
        if (g != -1) {
          break label207;
        }
        if (!bool3) {
          break label166;
        }
        if (!bool3) {
          break label176;
        }
        localPopupWindow = d;
        if (h != -1) {
          break label171;
        }
        label71:
        localPopupWindow.setWindowLayoutMode(i3, 0);
      }
      for (;;)
      {
        localPopupWindow = d;
        bool1 = bool2;
        if (!n)
        {
          bool1 = bool2;
          if (!m) {
            bool1 = true;
          }
        }
        localPopupWindow.setOutsideTouchable(bool1);
        d.update(e(), i, j, i1, i2);
        return;
        if (h == -2)
        {
          i1 = e().getWidth();
          break;
        }
        i1 = h;
        break;
        label166:
        i2 = -1;
        break label52;
        label171:
        i3 = 0;
        break label71;
        label176:
        localPopupWindow = d;
        if (h == -1) {}
        for (i3 = -1;; i3 = 0)
        {
          localPopupWindow.setWindowLayoutMode(i3, -1);
          break;
        }
        label207:
        if (g != -2) {
          i2 = g;
        }
      }
    }
    if (h == -1)
    {
      i1 = -1;
      label234:
      if (g != -1) {
        break label412;
      }
      i2 = -1;
      label244:
      d.setWindowLayoutMode(i1, i2);
      b(true);
      localPopupWindow = d;
      if ((n) || (m)) {
        break label450;
      }
    }
    for (;;)
    {
      localPopupWindow.setOutsideTouchable(bool1);
      d.setTouchInterceptor(w);
      p.a(d, e(), i, j, l);
      f.setSelection(-1);
      if ((!C) || (f.isInTouchMode())) {
        j();
      }
      if (C) {
        break;
      }
      A.post(y);
      return;
      if (h == -2)
      {
        d.setWidth(e().getWidth());
        i1 = 0;
        break label234;
      }
      d.setWidth(h);
      i1 = 0;
      break label234;
      label412:
      if (g == -2)
      {
        d.setHeight(i2);
        i2 = 0;
        break label244;
      }
      d.setHeight(g);
      i2 = 0;
      break label244;
      label450:
      bool1 = false;
    }
  }
  
  public void c(int paramInt)
  {
    j = paramInt;
    k = true;
  }
  
  public Drawable d()
  {
    return d.getBackground();
  }
  
  public void d(int paramInt)
  {
    l = paramInt;
  }
  
  public View e()
  {
    return r;
  }
  
  public void e(int paramInt)
  {
    h = paramInt;
  }
  
  public int f()
  {
    return i;
  }
  
  public void f(int paramInt)
  {
    Drawable localDrawable = d.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(B);
      h = (B.left + B.right + paramInt);
      return;
    }
    e(paramInt);
  }
  
  public int g()
  {
    if (!k) {
      return 0;
    }
    return j;
  }
  
  public void g(int paramInt)
  {
    d.setInputMethodMode(paramInt);
  }
  
  public int h()
  {
    return h;
  }
  
  public void h(int paramInt)
  {
    a locala = f;
    if ((k()) && (locala != null))
    {
      a.a(locala, false);
      locala.setSelection(paramInt);
      if ((Build.VERSION.SDK_INT >= 11) && (locala.getChoiceMode() != 0)) {
        locala.setItemChecked(paramInt, true);
      }
    }
  }
  
  public void i()
  {
    d.dismiss();
    a();
    d.setContentView(null);
    f = null;
    A.removeCallbacks(v);
  }
  
  public void j()
  {
    a locala = f;
    if (locala != null)
    {
      a.a(locala, true);
      locala.requestLayout();
    }
  }
  
  public boolean k()
  {
    return d.isShowing();
  }
  
  public boolean l()
  {
    return d.getInputMethodMode() == 2;
  }
  
  public ListView m()
  {
    return f;
  }
  
  private static class a
    extends ListViewCompat
  {
    private boolean f;
    private boolean g;
    private boolean h;
    private az i;
    private n j;
    
    public a(Context paramContext, boolean paramBoolean)
    {
      super(null, a.a.dropDownListViewStyle);
      g = paramBoolean;
      setCacheColorHint(0);
    }
    
    private void a(View paramView, int paramInt)
    {
      performItemClick(paramView, paramInt, getItemIdAtPosition(paramInt));
    }
    
    private void a(View paramView, int paramInt, float paramFloat1, float paramFloat2)
    {
      h = true;
      setPressed(true);
      layoutChildren();
      setSelection(paramInt);
      a(paramInt, paramView, paramFloat1, paramFloat2);
      setSelectorEnabled(false);
      refreshDrawableState();
    }
    
    private void d()
    {
      h = false;
      setPressed(false);
      drawableStateChanged();
      if (i != null)
      {
        i.b();
        i = null;
      }
    }
    
    public boolean a(MotionEvent paramMotionEvent, int paramInt)
    {
      int k = t.a(paramMotionEvent);
      switch (k)
      {
      default: 
        paramInt = 0;
      case 3: 
        for (bool = true;; bool = false)
        {
          label37:
          if ((!bool) || (paramInt != 0)) {
            d();
          }
          if (!bool) {
            break;
          }
          if (j == null) {
            j = new n(this);
          }
          j.a(true);
          j.onTouch(this, paramMotionEvent);
          label93:
          return bool;
          paramInt = 0;
        }
      }
      for (boolean bool = false;; bool = true)
      {
        int m = paramMotionEvent.findPointerIndex(paramInt);
        if (m < 0)
        {
          paramInt = 0;
          bool = false;
          break label37;
        }
        paramInt = (int)paramMotionEvent.getX(m);
        m = (int)paramMotionEvent.getY(m);
        int n = pointToPosition(paramInt, m);
        if (n == -1)
        {
          paramInt = 1;
          break label37;
        }
        View localView = getChildAt(n - getFirstVisiblePosition());
        a(localView, n, paramInt, m);
        if (k != 1) {
          break;
        }
        a(localView, n);
        break;
        if (j == null) {
          break label93;
        }
        j.a(false);
        return bool;
      }
    }
    
    protected boolean c()
    {
      return (h) || (super.c());
    }
    
    public boolean hasFocus()
    {
      return (g) || (super.hasFocus());
    }
    
    public boolean hasWindowFocus()
    {
      return (g) || (super.hasWindowFocus());
    }
    
    public boolean isFocused()
    {
      return (g) || (super.isFocused());
    }
    
    public boolean isInTouchMode()
    {
      return ((g) && (f)) || (super.isInTouchMode());
    }
  }
  
  public static abstract class b
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
    
    public b(View paramView)
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
        switch (t.a(paramMotionEvent))
        {
        default: 
          return false;
        case 0: 
          i = paramMotionEvent.getPointerId(0);
          h = false;
          if (e == null) {
            e = new a(null);
          }
          localView.postDelayed(e, b);
          if (f == null) {
            f = new b(null);
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
      if ((localObject == null) || (!((ListPopupWindow)localObject).k())) {}
      do
      {
        return false;
        localObject = ListPopupWindow.a((ListPopupWindow)localObject);
      } while ((localObject == null) || (!((ListPopupWindow.a)localObject).isShown()));
      MotionEvent localMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
      b(localView, localMotionEvent);
      a((View)localObject, localMotionEvent);
      boolean bool2 = ((ListPopupWindow.a)localObject).a(localMotionEvent, i);
      localMotionEvent.recycle();
      int k = t.a(paramMotionEvent);
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
      View localView = d;
      if ((!localView.isEnabled()) || (localView.isLongClickable())) {}
      while (!b()) {
        return;
      }
      localView.getParent().requestDisallowInterceptTouchEvent(true);
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      localView.onTouchEvent(localMotionEvent);
      localMotionEvent.recycle();
      g = true;
      h = true;
    }
    
    public abstract ListPopupWindow a();
    
    protected boolean b()
    {
      ListPopupWindow localListPopupWindow = a();
      if ((localListPopupWindow != null) && (!localListPopupWindow.k())) {
        localListPopupWindow.c();
      }
      return true;
    }
    
    protected boolean c()
    {
      ListPopupWindow localListPopupWindow = a();
      if ((localListPopupWindow != null) && (localListPopupWindow.k())) {
        localListPopupWindow.i();
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
    
    private class a
      implements Runnable
    {
      private a() {}
      
      public void run()
      {
        ListPopupWindow.b.a(ListPopupWindow.b.this).getParent().requestDisallowInterceptTouchEvent(true);
      }
    }
    
    private class b
      implements Runnable
    {
      private b() {}
      
      public void run()
      {
        ListPopupWindow.b.b(ListPopupWindow.b.this);
      }
    }
  }
  
  private class c
    implements Runnable
  {
    private c() {}
    
    public void run()
    {
      j();
    }
  }
  
  private class d
    extends DataSetObserver
  {
    private d() {}
    
    public void onChanged()
    {
      if (k()) {
        c();
      }
    }
    
    public void onInvalidated()
    {
      i();
    }
  }
  
  private class e
    implements AbsListView.OnScrollListener
  {
    private e() {}
    
    public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
      if ((paramInt == 1) && (!l()) && (ListPopupWindow.b(ListPopupWindow.this).getContentView() != null))
      {
        ListPopupWindow.d(ListPopupWindow.this).removeCallbacks(ListPopupWindow.c(ListPopupWindow.this));
        ListPopupWindow.c(ListPopupWindow.this).run();
      }
    }
  }
  
  private class f
    implements View.OnTouchListener
  {
    private f() {}
    
    public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
    {
      int i = paramMotionEvent.getAction();
      int j = (int)paramMotionEvent.getX();
      int k = (int)paramMotionEvent.getY();
      if ((i == 0) && (ListPopupWindow.b(ListPopupWindow.this) != null) && (ListPopupWindow.b(ListPopupWindow.this).isShowing()) && (j >= 0) && (j < ListPopupWindow.b(ListPopupWindow.this).getWidth()) && (k >= 0) && (k < ListPopupWindow.b(ListPopupWindow.this).getHeight())) {
        ListPopupWindow.d(ListPopupWindow.this).postDelayed(ListPopupWindow.c(ListPopupWindow.this), 250L);
      }
      for (;;)
      {
        return false;
        if (i == 1) {
          ListPopupWindow.d(ListPopupWindow.this).removeCallbacks(ListPopupWindow.c(ListPopupWindow.this));
        }
      }
    }
  }
  
  private class g
    implements Runnable
  {
    private g() {}
    
    public void run()
    {
      if ((ListPopupWindow.a(ListPopupWindow.this) != null) && (ListPopupWindow.a(ListPopupWindow.this).getCount() > ListPopupWindow.a(ListPopupWindow.this).getChildCount()) && (ListPopupWindow.a(ListPopupWindow.this).getChildCount() <= b))
      {
        ListPopupWindow.b(ListPopupWindow.this).setInputMethodMode(2);
        c();
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ListPopupWindow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */