package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v7.widget.ListPopupWindow;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.d;
import com.yelp.android.j.a.h;
import java.util.ArrayList;

public class k
  implements l, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  static final int a = a.h.abc_popup_menu_item_layout;
  boolean b;
  private final Context c;
  private final LayoutInflater d;
  private final f e;
  private final a f;
  private final boolean g;
  private final int h;
  private final int i;
  private final int j;
  private View k;
  private ListPopupWindow l;
  private ViewTreeObserver m;
  private l.a n;
  private ViewGroup o;
  private boolean p;
  private int q;
  private int r = 0;
  
  public k(Context paramContext, f paramf, View paramView)
  {
    this(paramContext, paramf, paramView, false, a.a.popupMenuStyle);
  }
  
  public k(Context paramContext, f paramf, View paramView, boolean paramBoolean, int paramInt)
  {
    this(paramContext, paramf, paramView, paramBoolean, paramInt, 0);
  }
  
  public k(Context paramContext, f paramf, View paramView, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    c = paramContext;
    d = LayoutInflater.from(paramContext);
    e = paramf;
    f = new a(e);
    g = paramBoolean;
    i = paramInt1;
    j = paramInt2;
    Resources localResources = paramContext.getResources();
    h = Math.max(getDisplayMetricswidthPixels / 2, localResources.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
    k = paramView;
    paramf.a(this, paramContext);
  }
  
  private int i()
  {
    a locala = f;
    int i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i6 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i7 = locala.getCount();
    int i2 = 0;
    int i3 = 0;
    View localView = null;
    int i1 = 0;
    int i4 = i1;
    if (i2 < i7)
    {
      i4 = locala.getItemViewType(i2);
      if (i4 == i3) {
        break label157;
      }
      i3 = i4;
      localView = null;
      label69:
      if (o == null) {
        o = new FrameLayout(c);
      }
      localView = locala.getView(i2, localView, o);
      localView.measure(i5, i6);
      i4 = localView.getMeasuredWidth();
      if (i4 >= h) {
        i4 = h;
      }
    }
    else
    {
      return i4;
    }
    if (i4 > i1) {
      i1 = i4;
    }
    for (;;)
    {
      i2 += 1;
      break;
      label157:
      break label69;
    }
  }
  
  public void a(int paramInt)
  {
    r = paramInt;
  }
  
  public void a(Context paramContext, f paramf) {}
  
  public void a(Parcelable paramParcelable) {}
  
  public void a(f paramf, boolean paramBoolean)
  {
    if (paramf != e) {}
    do
    {
      return;
      g();
    } while (n == null);
    n.a(paramf, paramBoolean);
  }
  
  public void a(l.a parama)
  {
    n = parama;
  }
  
  public void a(View paramView)
  {
    k = paramView;
  }
  
  public void a(boolean paramBoolean)
  {
    p = false;
    if (f != null) {
      f.notifyDataSetChanged();
    }
  }
  
  public boolean a()
  {
    return false;
  }
  
  public boolean a(f paramf, h paramh)
  {
    return false;
  }
  
  public boolean a(p paramp)
  {
    k localk;
    int i1;
    if (paramp.hasVisibleItems())
    {
      localk = new k(c, paramp, k);
      localk.a(n);
      int i2 = paramp.size();
      i1 = 0;
      if (i1 >= i2) {
        break label120;
      }
      MenuItem localMenuItem = paramp.getItem(i1);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null)) {}
    }
    label120:
    for (boolean bool = true;; bool = false)
    {
      localk.b(bool);
      if (localk.f())
      {
        if (n != null) {
          n.a(paramp);
        }
        return true;
        i1 += 1;
        break;
      }
      return false;
    }
  }
  
  public int b()
  {
    return 0;
  }
  
  public void b(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean b(f paramf, h paramh)
  {
    return false;
  }
  
  public Parcelable c()
  {
    return null;
  }
  
  public void d()
  {
    if (!f()) {
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }
  }
  
  public ListPopupWindow e()
  {
    return l;
  }
  
  public boolean f()
  {
    int i1 = 0;
    l = new ListPopupWindow(c, null, i, j);
    l.a(this);
    l.a(this);
    l.a(f);
    l.a(true);
    View localView = k;
    if (localView != null)
    {
      if (m == null) {
        i1 = 1;
      }
      m = localView.getViewTreeObserver();
      if (i1 != 0) {
        m.addOnGlobalLayoutListener(this);
      }
      l.a(localView);
      l.d(r);
      if (!p)
      {
        q = i();
        p = true;
      }
      l.f(q);
      l.g(2);
      l.c();
      l.m().setOnKeyListener(this);
      return true;
    }
    return false;
  }
  
  public void g()
  {
    if (h()) {
      l.i();
    }
  }
  
  public boolean h()
  {
    return (l != null) && (l.k());
  }
  
  public void onDismiss()
  {
    l = null;
    e.close();
    if (m != null)
    {
      if (!m.isAlive()) {
        m = k.getViewTreeObserver();
      }
      m.removeGlobalOnLayoutListener(this);
      m = null;
    }
  }
  
  public void onGlobalLayout()
  {
    if (h())
    {
      View localView = k;
      if ((localView != null) && (localView.isShown())) {
        break label28;
      }
      g();
    }
    label28:
    while (!h()) {
      return;
    }
    l.c();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = f;
    a.a(paramAdapterView).a(paramAdapterView.a(paramInt), 0);
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      g();
      return true;
    }
    return false;
  }
  
  private class a
    extends BaseAdapter
  {
    private f b;
    private int c = -1;
    
    public a(f paramf)
    {
      b = paramf;
      a();
    }
    
    public h a(int paramInt)
    {
      if (k.a(k.this)) {}
      for (ArrayList localArrayList = b.l();; localArrayList = b.i())
      {
        int i = paramInt;
        if (c >= 0)
        {
          i = paramInt;
          if (paramInt >= c) {
            i = paramInt + 1;
          }
        }
        return (h)localArrayList.get(i);
      }
    }
    
    void a()
    {
      h localh = k.c(k.this).r();
      if (localh != null)
      {
        ArrayList localArrayList = k.c(k.this).l();
        int j = localArrayList.size();
        int i = 0;
        while (i < j)
        {
          if ((h)localArrayList.get(i) == localh)
          {
            c = i;
            return;
          }
          i += 1;
        }
      }
      c = -1;
    }
    
    public int getCount()
    {
      if (k.a(k.this)) {}
      for (ArrayList localArrayList = b.l(); c < 0; localArrayList = b.i()) {
        return localArrayList.size();
      }
      return localArrayList.size() - 1;
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null) {
        paramView = k.b(k.this).inflate(k.a, paramViewGroup, false);
      }
      for (;;)
      {
        paramViewGroup = (m.a)paramView;
        if (b) {
          ((ListMenuItemView)paramView).setForceShowIcon(true);
        }
        paramViewGroup.a(a(paramInt), 0);
        return paramView;
      }
    }
    
    public void notifyDataSetChanged()
    {
      a();
      super.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */