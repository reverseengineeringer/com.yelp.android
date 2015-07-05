package com.yelp.android.ui.activities;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.TextView;

class bo
  implements AdapterView.OnItemSelectedListener
{
  private int b = 1;
  private int c = -1;
  
  bo(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (c > 0) {
      b += 1;
    }
    c = paramInt;
    if (paramInt == 0)
    {
      ActivityCreateAccount.y(a).setTextAppearance(a, 2131689729);
      ActivityCreateAccount.y(a).setText("");
      ((TextView)a.findViewById(2131494049)).setText(2131166279);
    }
    for (;;)
    {
      if ((b <= 0) && (!ActivityCreateAccount.z(a)) && (ActivityCreateAccount.A(a))) {
        ActivityCreateAccount.B(a).performClick();
      }
      b -= 1;
      return;
      ((TextView)a.findViewById(2131494049)).setText("");
      ActivityCreateAccount.y(a).setTextAppearance(a, 2131689621);
      if (paramInt == 1) {
        ActivityCreateAccount.y(a).setText(2131165881);
      } else if (paramInt == 2) {
        ActivityCreateAccount.y(a).setText(2131165880);
      }
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */