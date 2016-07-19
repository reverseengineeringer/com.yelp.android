package android.support.v7.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

class k$a
  extends BaseAdapter
{
  private f b;
  private int c = -1;
  
  public k$a(k paramk, f paramf)
  {
    b = paramf;
    a();
  }
  
  public h a(int paramInt)
  {
    if (k.a(a)) {}
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
    h localh = k.c(a).r();
    if (localh != null)
    {
      ArrayList localArrayList = k.c(a).l();
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
    if (k.a(a)) {}
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
      paramView = k.b(a).inflate(k.a, paramViewGroup, false);
    }
    for (;;)
    {
      paramViewGroup = (m.a)paramView;
      if (a.b) {
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

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */