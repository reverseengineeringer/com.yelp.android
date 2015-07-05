package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.View.OnClickListener;

class aw
  implements View.OnClickListener
{
  aw(PrivacyPolicyDialog paramPrivacyPolicyDialog) {}
  
  public void onClick(View paramView)
  {
    paramView = PrivacyPolicyDialog.SelectPrivacyLevelDialog.a(PrivacyPolicyDialog.b(a));
    paramView.a(PrivacyPolicyDialog.c(a));
    paramView.show(a.getFragmentManager(), null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */