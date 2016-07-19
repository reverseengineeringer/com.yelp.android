package android.support.v7.internal.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

class e$a
  extends BaseAdapter
{
  private int b = -1;
  
  public e$a(e parame)
  {
    a();
  }
  
  public h a(int paramInt)
  {
    ArrayList localArrayList = a.c.l();
    int i = e.a(a) + paramInt;
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
    h localh = a.c.r();
    if (localh != null)
    {
      ArrayList localArrayList = a.c.l();
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
    int i = a.c.l().size() - e.a(a);
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
      paramView = a.b.inflate(a.f, paramViewGroup, false);
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

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */