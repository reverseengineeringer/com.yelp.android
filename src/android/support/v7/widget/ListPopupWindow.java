package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.widget.ar;
import android.support.v7.internal.widget.AppCompatPopupWindow;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import com.yelp.android.d.f;
import com.yelp.android.g.b;
import com.yelp.android.g.l;
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
  private ap f;
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
  private final ax v = new ax(this, null);
  private final aw w = new aw(this, null);
  private final av x = new av(this, null);
  private final at y = new at(this, null);
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
    this(paramContext, null, b.listPopupWindowStyle);
  }
  
  public ListPopupWindow(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.listPopupWindowStyle);
  }
  
  public ListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public ListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    c = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, l.ListPopupWindow, paramInt1, paramInt2);
    i = localTypedArray.getDimensionPixelOffset(l.ListPopupWindow_android_dropDownHorizontalOffset, 0);
    j = localTypedArray.getDimensionPixelOffset(l.ListPopupWindow_android_dropDownVerticalOffset, 0);
    if (j != 0) {
      k = true;
    }
    localTypedArray.recycle();
    d = new AppCompatPopupWindow(paramContext, paramAttributeSet, paramInt1);
    d.setInputMethodMode(1);
    D = f.a(c.getResources().getConfiguration().locale);
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
  
  private void h()
  {
    if (o != null)
    {
      ViewParent localViewParent = o.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(o);
      }
    }
  }
  
  private int i()
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
      z = new an(this);
      if (!C)
      {
        bool = true;
        f = new ap((Context)localObject2, bool);
        if (s != null) {
          f.setSelector(s);
        }
        f.setAdapter(e);
        f.setOnItemClickListener(t);
        f.setFocusable(true);
        f.setFocusableInTouchMode(true);
        f.setOnItemSelectedListener(new ao(this));
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
          int i4 = d.getMaxAvailableHeight(d(), j);
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
  
  public void a()
  {
    d.dismiss();
    h();
    d.setContentView(null);
    f = null;
    A.removeCallbacks(v);
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
      q = new au(this, null);
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
    j = paramInt;
    k = true;
  }
  
  public boolean b()
  {
    return d.isShowing();
  }
  
  public void c()
  {
    boolean bool1 = true;
    boolean bool2 = false;
    int i3 = -1;
    int i2 = i();
    boolean bool3 = f();
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
        d.update(d(), i, j, i1, i2);
        return;
        if (h == -2)
        {
          i1 = d().getWidth();
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
      ar.a(d, d(), i, j, l);
      f.setSelection(-1);
      if ((!C) || (f.isInTouchMode())) {
        e();
      }
      if (C) {
        break;
      }
      A.post(y);
      return;
      if (h == -2)
      {
        d.setWidth(d().getWidth());
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
    l = paramInt;
  }
  
  public View d()
  {
    return r;
  }
  
  public void d(int paramInt)
  {
    h = paramInt;
  }
  
  public void e()
  {
    ap localap = f;
    if (localap != null)
    {
      ap.a(localap, true);
      localap.requestLayout();
    }
  }
  
  public void e(int paramInt)
  {
    Drawable localDrawable = d.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(B);
      h = (B.left + B.right + paramInt);
      return;
    }
    d(paramInt);
  }
  
  public void f(int paramInt)
  {
    d.setInputMethodMode(paramInt);
  }
  
  public boolean f()
  {
    return d.getInputMethodMode() == 2;
  }
  
  public ListView g()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ListPopupWindow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */