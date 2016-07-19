package com.yelp.android.ui.activities;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.TextView;

class ActivityCreateAccount$18
  implements AdapterView.OnItemSelectedListener
{
  private int b = 1;
  private int c = -1;
  
  ActivityCreateAccount$18(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (c > 0) {
      b += 1;
    }
    c = paramInt;
    if (paramInt == 0)
    {
      ActivityCreateAccount.z(a).setTextAppearance(a, 2131296506);
      ActivityCreateAccount.z(a).setText("");
      ((TextView)a.findViewById(2131690919)).setText(2131166314);
    }
    for (;;)
    {
      if ((b <= 0) && (ActivityCreateAccount.m(a))) {
        ActivityCreateAccount.A(a);
      }
      b -= 1;
      return;
      ((TextView)a.findViewById(2131690919)).setText("");
      ActivityCreateAccount.z(a).setTextAppearance(a, 2131296462);
      if (paramInt == 1) {
        ActivityCreateAccount.z(a).setText(2131165957);
      } else if (paramInt == 2) {
        ActivityCreateAccount.z(a).setText(2131165956);
      }
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */