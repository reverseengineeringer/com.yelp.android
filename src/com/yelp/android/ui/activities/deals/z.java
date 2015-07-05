package com.yelp.android.ui.activities.deals;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class z
  implements View.OnClickListener
{
  z(AddGiftRecipient paramAddGiftRecipient) {}
  
  public void onClick(View paramView)
  {
    paramView = a.getIntent();
    paramView.putExtra(AddGiftRecipient.b(), false);
    a.setResult(-1, paramView);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */