package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class ao
  implements AdapterView.OnItemSelectedListener
{
  ao(ListPopupWindow paramListPopupWindow) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt != -1)
    {
      paramAdapterView = ListPopupWindow.a(a);
      if (paramAdapterView != null) {
        ap.a(paramAdapterView, false);
      }
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */