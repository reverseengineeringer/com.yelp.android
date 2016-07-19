package android.support.design.internal;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Bundle;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.h;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.yelp.android.a.a.g;
import java.util.ArrayList;
import java.util.Iterator;

class b$a
  extends BaseAdapter
{
  private final ArrayList<b.b> b = new ArrayList();
  private h c;
  private ColorDrawable d;
  private boolean e;
  
  b$a(b paramb)
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
    int i3 = b.g(a).i().size();
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
        localh1 = (h)b.g(a).i().get(i1);
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
              b.add(b.b.a(b.h(a), 0));
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
              b.add(b.b.a(b.h(a), b.h(a)));
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
        paramView = b.a(a).inflate(a.g.design_navigation_item, paramViewGroup, false);
      }
      break;
    }
    for (;;)
    {
      Object localObject = (NavigationMenuItemView)paramView;
      ((NavigationMenuItemView)localObject).setIconTintList(b.b(a));
      if (b.c(a)) {
        ((NavigationMenuItemView)localObject).setTextAppearance(((NavigationMenuItemView)localObject).getContext(), b.d(a));
      }
      if (b.e(a) != null) {
        ((NavigationMenuItemView)localObject).setTextColor(b.e(a));
      }
      if (b.f(a) != null) {}
      for (paramViewGroup = b.f(a).getConstantState().newDrawable();; paramViewGroup = null)
      {
        ((NavigationMenuItemView)localObject).setBackgroundDrawable(paramViewGroup);
        ((NavigationMenuItemView)localObject).a(localb.d(), 0);
        return paramView;
      }
      if (paramView == null) {
        paramView = b.a(a).inflate(a.g.design_navigation_item_subheader, paramViewGroup, false);
      }
      for (;;)
      {
        ((TextView)paramView).setText(localb.d().getTitle());
        return paramView;
        localObject = paramView;
        if (paramView == null) {
          localObject = b.a(a).inflate(a.g.design_navigation_item_separator, paramViewGroup, false);
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

/* Location:
 * Qualified Name:     android.support.design.internal.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */