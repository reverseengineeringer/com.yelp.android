package com.yelp.android.ui.activities.mutatebiz;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.dialogs.FlagsDialog;

class AddBusiness$1
  implements View.OnClickListener
{
  AddBusiness$1(AddBusiness paramAddBusiness) {}
  
  public void onClick(View paramView)
  {
    if (AddBusiness.a(a) == null)
    {
      AddBusiness.a(a, FlagsDialog.a(AddBusiness.b(a)));
      AddBusiness.a(a).a(AddBusiness.c(a));
    }
    AddBusiness.a(a).show(a.getSupportFragmentManager(), "flags_dialog");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.AddBusiness.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */