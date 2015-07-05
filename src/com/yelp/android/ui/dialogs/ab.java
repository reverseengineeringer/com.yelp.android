package com.yelp.android.ui.dialogs;

import android.app.TimePickerDialog;
import android.app.TimePickerDialog.OnTimeSetListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import java.util.Calendar;

class ab
  implements View.OnClickListener
{
  ab(y paramy, ViewGroup paramViewGroup, TimePickerDialog.OnTimeSetListener paramOnTimeSetListener) {}
  
  public void onClick(View paramView)
  {
    y.a(c, y.d(c).get(11));
    y.b(c, y.d(c).get(12));
    new TimePickerDialog(a.getContext(), b, y.b(c), y.c(c), false).show();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */