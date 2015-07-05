package com.yelp.android.ui.activities.reservations;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;

class d
  implements AdapterView.OnItemSelectedListener
{
  d(FindReservation paramFindReservation) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    FindReservation.b(a).setText((String)paramAdapterView.getSelectedItem());
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */