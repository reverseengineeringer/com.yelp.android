package android.support.v7.internal.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import com.yelp.android.j.a.h;
import java.util.ArrayList;

public class e
  implements l, AdapterView.OnItemClickListener
{
  Context a;
  LayoutInflater b;
  f c;
  ExpandedMenuView d;
  int e;
  int f;
  a g;
  private int h;
  private l.a i;
  private int j;
  
  public e(int paramInt1, int paramInt2)
  {
    f = paramInt1;
    e = paramInt2;
  }
  
  public e(Context paramContext, int paramInt)
  {
    this(paramInt, 0);
    a = paramContext;
    b = LayoutInflater.from(a);
  }
  
  public m a(ViewGroup paramViewGroup)
  {
    if (d == null)
    {
      d = ((ExpandedMenuView)b.inflate(a.h.abc_expanded_menu_layout, paramViewGroup, false));
      if (g == null) {
        g = new a();
      }
      d.setAdapter(g);
      d.setOnItemClickListener(this);
    }
    return d;
  }
  
  public void a(Context paramContext, f paramf)
  {
    if (e != 0)
    {
      a = new ContextThemeWrapper(paramContext, e);
      b = LayoutInflater.from(a);
    }
    for (;;)
    {
      c = paramf;
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
  
  public void a(Bundle paramBundle)
  {
    SparseArray localSparseArray = new SparseArray();
    if (d != null) {
      d.saveHierarchyState(localSparseArray);
    }
    paramBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
  }
  
  public void a(Parcelable paramParcelable)
  {
    b((Bundle)paramParcelable);
  }
  
  public void a(f paramf, boolean paramBoolean)
  {
    if (i != null) {
      i.a(paramf, paramBoolean);
    }
  }
  
  public void a(l.a parama)
  {
    i = parama;
  }
  
  public void a(boolean paramBoolean)
  {
    if (g != null) {
      g.notifyDataSetChanged();
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
    if (!paramp.hasVisibleItems()) {
      return false;
    }
    new g(paramp).a(null);
    if (i != null) {
      i.a(paramp);
    }
    return true;
  }
  
  public int b()
  {
    return j;
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle = paramBundle.getSparseParcelableArray("android:menu:list");
    if (paramBundle != null) {
      d.restoreHierarchyState(paramBundle);
    }
  }
  
  public boolean b(f paramf, h paramh)
  {
    return false;
  }
  
  public Parcelable c()
  {
    if (d == null) {
      return null;
    }
    Bundle localBundle = new Bundle();
    a(localBundle);
    return localBundle;
  }
  
  public ListAdapter d()
  {
    if (g == null) {
      g = new a();
    }
    return g;
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    c.a(g.a(paramInt), this, 0);
  }
  
  private class a
    extends BaseAdapter
  {
    private int b = -1;
    
    public a()
    {
      a();
    }
    
    public h a(int paramInt)
    {
      ArrayList localArrayList = c.l();
      int i = e.a(e.this) + paramInt;
      paramInt = i;
      if (b >= 0)
      {
        paramInt = i;
        if (i >= b) {
          paramInt = i + 1;
        }
      }
      return (h)localArrayList.get(paramInt);
    }
    
    void a()
    {
      h localh = c.r();
      if (localh != null)
      {
        ArrayList localArrayList = c.l();
        int j = localArrayList.size();
        int i = 0;
        while (i < j)
        {
          if ((h)localArrayList.get(i) == localh)
          {
            b = i;
            return;
          }
          i += 1;
        }
      }
      b = -1;
    }
    
    public int getCount()
    {
      int i = c.l().size() - e.a(e.this);
      if (b < 0) {
        return i;
      }
      return i - 1;
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null) {
        paramView = b.inflate(f, paramViewGroup, false);
      }
      for (;;)
      {
        ((m.a)paramView).a(a(paramInt), 0);
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
 * Qualified Name:     android.support.v7.internal.view.menu.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */