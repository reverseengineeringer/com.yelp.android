package com.yelp.android.ui.activities.mutatebiz;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.ui.widgets.SpannableWidget;

class EditBusiness$2
  implements CompoundButton.OnCheckedChangeListener
{
  EditBusiness$2(EditBusiness paramEditBusiness) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    int j = 8;
    paramCompoundButton = a.findViewById(2131689841);
    if (paramBoolean)
    {
      i = 8;
      paramCompoundButton.setVisibility(i);
      paramCompoundButton = a.findViewById(2131689838);
      if (!paramBoolean) {
        break label79;
      }
    }
    label79:
    for (int i = j;; i = 0)
    {
      paramCompoundButton.setVisibility(i);
      ((SpannableWidget)a.findViewById(2131689835)).setRight(paramBoolean);
      a.updateOptionsMenu();
      return;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditBusiness.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */