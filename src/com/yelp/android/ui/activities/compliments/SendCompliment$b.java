package com.yelp.android.ui.activities.compliments;

import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import java.util.Iterator;
import java.util.Set;

public final class SendCompliment$b
  implements RadioGroup.OnCheckedChangeListener
{
  private final Set<RadioGroup> a;
  
  public SendCompliment$b(Set<RadioGroup> paramSet)
  {
    a = paramSet;
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if ((paramInt != -1) && (((RadioButton)paramRadioGroup.findViewById(paramInt)).isChecked()))
    {
      paramRadioGroup = a.iterator();
      while (paramRadioGroup.hasNext()) {
        ((RadioGroup)paramRadioGroup.next()).clearCheck();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.SendCompliment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */