package android.support.v7.internal.widget;

import android.support.v7.app.b;
import android.support.v7.widget.LinearLayoutCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

class ar
  extends BaseAdapter
{
  private ar(ap paramap) {}
  
  public int getCount()
  {
    return ap.a(a).getChildCount();
  }
  
  public Object getItem(int paramInt)
  {
    return ((at)ap.a(a).getChildAt(paramInt)).b();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      return ap.a(a, (b)getItem(paramInt), true);
    }
    ((at)paramView).a((b)getItem(paramInt));
    return paramView;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */