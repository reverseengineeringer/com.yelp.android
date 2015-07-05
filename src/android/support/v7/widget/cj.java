package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class cj
  implements AdapterView.OnItemClickListener
{
  cj(SearchView paramSearchView) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SearchView.a(a, paramInt, 0, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */