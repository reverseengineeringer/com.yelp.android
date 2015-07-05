package com.yelp.android.ui.activities.deals;

import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class x
  implements CompoundButton.OnCheckedChangeListener
{
  x(AddGiftRecipient paramAddGiftRecipient, View paramView) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    paramCompoundButton = a;
    if (paramBoolean)
    {
      i = 0;
      paramCompoundButton.setVisibility(i);
      a.setEnabled(paramBoolean);
      paramCompoundButton = AddGiftRecipient.c(b);
      if (!paramBoolean) {
        break label77;
      }
      i = AddGiftRecipient.a(b).getId();
      label47:
      paramCompoundButton.setNextFocusDownId(i);
      if (!paramBoolean) {
        break label91;
      }
    }
    label77:
    label91:
    for (int i = 268435461;; i = 268435462)
    {
      AddGiftRecipient.c(b).setImeOptions(i);
      return;
      i = 8;
      break;
      i = AddGiftRecipient.b(b).getId();
      break label47;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */