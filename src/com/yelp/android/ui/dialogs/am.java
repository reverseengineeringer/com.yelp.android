package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.yelp.android.ui.util.cr;

class am
  implements View.OnClickListener
{
  am(FlagMediaDialog paramFlagMediaDialog) {}
  
  public void onClick(View paramView)
  {
    paramView = FlagMediaDialog.a(a).getText().toString();
    if (paramView.trim().length() == 0)
    {
      cr.a(2131166335, 0);
      return;
    }
    a.a.a(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */