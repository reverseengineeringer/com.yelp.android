package com.yelp.android.ui.dialogs;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class ag
  implements AdapterView.OnItemSelectedListener
{
  ag(FiltersDialog paramFiltersDialog) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    FiltersDialog.a(a, (String)paramAdapterView.getItemAtPosition(paramInt));
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */