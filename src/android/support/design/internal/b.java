package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.l;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.view.menu.p;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.a.a.d;
import com.yelp.android.a.a.g;
import java.util.ArrayList;
import java.util.Iterator;

public class b
  implements l, AdapterView.OnItemClickListener
{
  private NavigationMenuView a;
  private LinearLayout b;
  private l.a c;
  private f d;
  private int e;
  private a f;
  private LayoutInflater g;
  private int h;
  private boolean i;
  private ColorStateList j;
  private ColorStateList k;
  private Drawable l;
  private int m;
  private int n;
  
  public m a(ViewGroup paramViewGroup)
  {
    if (a == null)
    {
      a = ((NavigationMenuView)g.inflate(a.g.design_navigation_menu, paramViewGroup, false));
      if (f == null) {
        f = new a();
      }
      b = ((LinearLayout)g.inflate(a.g.design_navigation_item_header, a, false));
      a.addHeaderView(b, null, false);
      a.setAdapter(f);
      a.setOnItemClickListener(this);
    }
    return a;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(Context paramContext, f paramf)
  {
    g = LayoutInflater.from(paramContext);
    d = paramf;
    paramContext = paramContext.getResources();
    m = paramContext.getDimensionPixelOffset(a.d.design_navigation_padding_top_default);
    n = paramContext.getDimensionPixelOffset(a.d.design_navigation_separator_vertical_padding);
  }
  
  public void a(ColorStateList paramColorStateList)
  {
    k = paramColorStateList;
    a(false);
  }
  
  public void a(Drawable paramDrawable)
  {
    l = paramDrawable;
  }
  
  public void a(Parcelable paramParcelable)
  {
    paramParcelable = (Bundle)paramParcelable;
    SparseArray localSparseArray = paramParcelable.getSparseParcelableArray("android:menu:list");
    if (localSparseArray != null) {
      a.restoreHierarchyState(localSparseArray);
    }
    paramParcelable = paramParcelable.getBundle("android:menu:adapter");
    if (paramParcelable != null) {
      f.a(paramParcelable);
    }
  }
  
  public void a(f paramf, boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramf, paramBoolean);
    }
  }
  
  public void a(h paramh)
  {
    f.a(paramh);
  }
  
  public void a(View paramView)
  {
    b.addView(paramView);
    a.setPadding(0, 0, 0, a.getPaddingBottom());
  }
  
  public void a(boolean paramBoolean)
  {
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
    return false;
  }
  
  public int b()
  {
    return e;
  }
  
  public View b(int paramInt)
  {
    View localView = g.inflate(paramInt, b, false);
    a(localView);
    return localView;
  }
  
  public void b(ColorStateList paramColorStateList)
  {
    j = paramColorStateList;
    a(false);
  }
  
  public void b(boolean paramBoolean)
  {
    if (f != null) {
      f.a(paramBoolean);
    }
  }
  
  public boolean b(f paramf, h paramh)
  {
    return false;
  }
  
  public Parcelable c()
  {
    Bundle localBundle = new Bundle();
    if (a != null)
    {
      SparseArray localSparseArray = new SparseArray();
      a.saveHierarchyState(localSparseArray);
      localBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
    }
    if (f != null) {
      localBundle.putBundle("android:menu:adapter", f.a());
    }
    return localBundle;
  }
  
  public void c(int paramInt)
  {
    h = paramInt;
    i = true;
    a(false);
  }
  
  public ColorStateList d()
  {
    return k;
  }
  
  public ColorStateList e()
  {
    return j;
  }
  
  public Drawable f()
  {
    return l;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramInt -= a.getHeaderViewsCount();
    if (paramInt >= 0)
    {
      b(true);
      paramAdapterView = f.a(paramInt).d();
      if ((paramAdapterView != null) && (paramAdapterView.isCheckable())) {
        f.a(paramAdapterView);
      }
      d.a(paramAdapterView, this, 0);
      b(false);
      a(false);
    }
  }
  
  private class a
    extends BaseAdapter
  {
    private final ArrayList<b.b> b = new ArrayList();
    private h c;
    private ColorDrawable d;
    private boolean e;
    
    a()
    {
      b();
    }
    
    private void a(int paramInt1, int paramInt2)
    {
      while (paramInt1 < paramInt2)
      {
        h localh = ((b.b)b.get(paramInt1)).d();
        if (localh.getIcon() == null)
        {
          if (d == null) {
            d = new ColorDrawable(17170445);
          }
          localh.setIcon(d);
        }
        paramInt1 += 1;
      }
    }
    
    private void b()
    {
      if (e) {
        return;
      }
      e = true;
      b.clear();
      int k = -1;
      int i3 = b.g(b.this).i().size();
      int i1 = 0;
      int j = 0;
      int i = 0;
      h localh1;
      int m;
      int n;
      for (;;)
      {
        if (i1 < i3)
        {
          localh1 = (h)b.g(b.this).i().get(i1);
          if (localh1.isChecked()) {
            a(localh1);
          }
          if (localh1.isCheckable()) {
            localh1.a(false);
          }
          if (localh1.hasSubMenu())
          {
            SubMenu localSubMenu = localh1.getSubMenu();
            if (localSubMenu.hasVisibleItems())
            {
              if (i1 != 0) {
                b.add(b.b.a(b.h(b.this), 0));
              }
              b.add(b.b.a(localh1));
              int i4 = b.size();
              int i5 = localSubMenu.size();
              int i2 = 0;
              for (m = 0; i2 < i5; m = n)
              {
                h localh2 = (h)localSubMenu.getItem(i2);
                n = m;
                if (localh2.isVisible())
                {
                  n = m;
                  if (m == 0)
                  {
                    n = m;
                    if (localh2.getIcon() != null) {
                      n = 1;
                    }
                  }
                  if (localh2.isCheckable()) {
                    localh2.a(false);
                  }
                  if (localh1.isChecked()) {
                    a(localh1);
                  }
                  b.add(b.b.a(localh2));
                }
                i2 += 1;
              }
              if (m != 0) {
                a(i4, b.size());
              }
            }
            m = j;
            j = k;
            k = i;
            i = m;
            i1 += 1;
            m = j;
            j = i;
            i = k;
            k = m;
          }
          else
          {
            n = localh1.getGroupId();
            if (n != k)
            {
              j = b.size();
              if (localh1.getIcon() != null)
              {
                i = 1;
                label374:
                m = i;
                k = j;
                if (i1 == 0) {
                  break label512;
                }
                b.add(b.b.a(b.h(b.this), b.h(b.this)));
                j += 1;
              }
            }
          }
        }
      }
      for (;;)
      {
        if ((i != 0) && (localh1.getIcon() == null)) {
          localh1.setIcon(17170445);
        }
        b.add(b.b.a(localh1));
        m = n;
        k = j;
        j = m;
        break;
        i = 0;
        break label374;
        m = j;
        k = i;
        if (j == 0)
        {
          m = j;
          k = i;
          if (localh1.getIcon() != null)
          {
            a(i, b.size());
            k = 1;
            j = i;
            i = k;
            continue;
            e = false;
            return;
          }
        }
        label512:
        i = m;
        j = k;
      }
    }
    
    public Bundle a()
    {
      Bundle localBundle = new Bundle();
      if (c != null) {
        localBundle.putInt("android:menu:checked", c.getItemId());
      }
      return localBundle;
    }
    
    public b.b a(int paramInt)
    {
      return (b.b)b.get(paramInt);
    }
    
    public void a(Bundle paramBundle)
    {
      int i = paramBundle.getInt("android:menu:checked", 0);
      if (i != 0)
      {
        e = true;
        paramBundle = b.iterator();
        while (paramBundle.hasNext())
        {
          h localh = ((b.b)paramBundle.next()).d();
          if ((localh != null) && (localh.getItemId() == i)) {
            a(localh);
          }
        }
        e = false;
        b();
      }
    }
    
    public void a(h paramh)
    {
      if ((c == paramh) || (!paramh.isCheckable())) {
        return;
      }
      if (c != null) {
        c.setChecked(false);
      }
      c = paramh;
      paramh.setChecked(true);
    }
    
    public void a(boolean paramBoolean)
    {
      e = paramBoolean;
    }
    
    public boolean areAllItemsEnabled()
    {
      return false;
    }
    
    public int getCount()
    {
      return b.size();
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public int getItemViewType(int paramInt)
    {
      b.b localb = a(paramInt);
      if (localb.a()) {
        return 2;
      }
      if (localb.d().hasSubMenu()) {
        return 1;
      }
      return 0;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      b.b localb = a(paramInt);
      switch (getItemViewType(paramInt))
      {
      default: 
        return paramView;
      case 0: 
        if (paramView == null) {
          paramView = b.a(b.this).inflate(a.g.design_navigation_item, paramViewGroup, false);
        }
        break;
      }
      for (;;)
      {
        Object localObject = (NavigationMenuItemView)paramView;
        ((NavigationMenuItemView)localObject).setIconTintList(b.b(b.this));
        if (b.c(b.this)) {
          ((NavigationMenuItemView)localObject).setTextAppearance(((NavigationMenuItemView)localObject).getContext(), b.d(b.this));
        }
        if (b.e(b.this) != null) {
          ((NavigationMenuItemView)localObject).setTextColor(b.e(b.this));
        }
        if (b.f(b.this) != null) {}
        for (paramViewGroup = b.f(b.this).getConstantState().newDrawable();; paramViewGroup = null)
        {
          ((NavigationMenuItemView)localObject).setBackgroundDrawable(paramViewGroup);
          ((NavigationMenuItemView)localObject).a(localb.d(), 0);
          return paramView;
        }
        if (paramView == null) {
          paramView = b.a(b.this).inflate(a.g.design_navigation_item_subheader, paramViewGroup, false);
        }
        for (;;)
        {
          ((TextView)paramView).setText(localb.d().getTitle());
          return paramView;
          localObject = paramView;
          if (paramView == null) {
            localObject = b.a(b.this).inflate(a.g.design_navigation_item_separator, paramViewGroup, false);
          }
          ((View)localObject).setPadding(0, localb.b(), 0, localb.c());
          paramView = (View)localObject;
          break;
        }
      }
    }
    
    public int getViewTypeCount()
    {
      return 3;
    }
    
    public boolean isEnabled(int paramInt)
    {
      return a(paramInt).e();
    }
    
    public void notifyDataSetChanged()
    {
      b();
      super.notifyDataSetChanged();
    }
  }
  
  private static class b
  {
    private final h a;
    private final int b;
    private final int c;
    
    private b(h paramh, int paramInt1, int paramInt2)
    {
      a = paramh;
      b = paramInt1;
      c = paramInt2;
    }
    
    public static b a(int paramInt1, int paramInt2)
    {
      return new b(null, paramInt1, paramInt2);
    }
    
    public static b a(h paramh)
    {
      return new b(paramh, 0, 0);
    }
    
    public boolean a()
    {
      return a == null;
    }
    
    public int b()
    {
      return b;
    }
    
    public int c()
    {
      return c;
    }
    
    public h d()
    {
      return a;
    }
    
    public boolean e()
    {
      return (a != null) && (!a.hasSubMenu()) && (a.isEnabled());
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */