package com.yelp.android.ui.activities.reservations;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.Button;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.ui.util.au;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

final class b
  extends au<Reservation>
{
  private final DateFormat a = Reservation.getDatestampForDisplay(SimpleDateFormat.getTimeInstance(3));
  
  public b(Context paramContext) {}
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = new Button(paramViewGroup.getContext());
      paramView.setLayoutParams(new AbsListView.LayoutParams(-2, -2));
    }
    for (;;)
    {
      paramViewGroup = (Button)paramView;
      Reservation localReservation = (Reservation)getItem(paramInt);
      paramViewGroup.setText(a.format(localReservation.getDatestamp()));
      paramViewGroup.setFocusable(false);
      paramViewGroup.setClickable(false);
      return paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */