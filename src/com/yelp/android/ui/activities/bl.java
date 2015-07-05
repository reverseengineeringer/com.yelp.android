package com.yelp.android.ui.activities;

import android.app.DatePickerDialog.OnDateSetListener;
import android.widget.DatePicker;
import java.util.Calendar;

class bl
  implements DatePickerDialog.OnDateSetListener
{
  bl(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    paramDatePicker = Calendar.getInstance();
    paramDatePicker.clear();
    paramDatePicker.set(paramInt1, paramInt2, paramInt3);
    ActivityCreateAccount.a(a, paramDatePicker);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */