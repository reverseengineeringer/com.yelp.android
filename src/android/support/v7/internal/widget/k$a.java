package android.support.v7.internal.widget;

import android.support.v7.app.ActionBar.b;
import android.support.v7.widget.LinearLayoutCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

class k$a
  extends BaseAdapter
{
  private k$a(k paramk) {}
  
  public int getCount()
  {
    return k.a(a).getChildCount();
  }
  
  public Object getItem(int paramInt)
  {
    return ((k.c)k.a(a).getChildAt(paramInt)).b();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      return k.a(a, (ActionBar.b)getItem(paramInt), true);
    }
    ((k.c)paramView).a((ActionBar.b)getItem(paramInt));
    return paramView;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */