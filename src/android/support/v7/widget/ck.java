package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class ck
  implements AdapterView.OnItemSelectedListener
{
  ck(SearchView paramSearchView) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SearchView.a(a, paramInt);
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */