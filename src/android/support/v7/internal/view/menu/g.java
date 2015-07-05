package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

public class g
  implements x, AdapterView.OnItemClickListener
{
  Context a;
  LayoutInflater b;
  i c;
  ExpandedMenuView d;
  int e;
  int f;
  h g;
  private int h;
  private y i;
  
  public g(int paramInt1, int paramInt2)
  {
    f = paramInt1;
    e = paramInt2;
  }
  
  public g(Context paramContext, int paramInt)
  {
    this(paramInt, 0);
    a = paramContext;
    b = LayoutInflater.from(a);
  }
  
  public z a(ViewGroup paramViewGroup)
  {
    if (d == null)
    {
      d = ((ExpandedMenuView)b.inflate(com.yelp.android.g.i.abc_expanded_menu_layout, paramViewGroup, false));
      if (g == null) {
        g = new h(this);
      }
      d.setAdapter(g);
      d.setOnItemClickListener(this);
    }
    return d;
  }
  
  public ListAdapter a()
  {
    if (g == null) {
      g = new h(this);
    }
    return g;
  }
  
  public void a(Context paramContext, i parami)
  {
    if (e != 0)
    {
      a = new ContextThemeWrapper(paramContext, e);
      b = LayoutInflater.from(a);
    }
    for (;;)
    {
      c = parami;
      if (g != null) {
        g.notifyDataSetChanged();
      }
      return;
      if (a != null)
      {
        a = paramContext;
        if (b == null) {
          b = LayoutInflater.from(a);
        }
      }
    }
  }
  
  public void a(i parami, boolean paramBoolean)
  {
    if (i != null) {
      i.a(parami, paramBoolean);
    }
  }
  
  public void a(y paramy)
  {
    i = paramy;
  }
  
  public boolean a(ad paramad)
  {
    if (!paramad.hasVisibleItems()) {
      return false;
    }
    new l(paramad).a(null);
    if (i != null) {
      i.a(paramad);
    }
    return true;
  }
  
  public boolean a(i parami, m paramm)
  {
    return false;
  }
  
  public void b(boolean paramBoolean)
  {
    if (g != null) {
      g.notifyDataSetChanged();
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean b(i parami, m paramm)
  {
    return false;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    c.a(g.a(paramInt), this, 0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */