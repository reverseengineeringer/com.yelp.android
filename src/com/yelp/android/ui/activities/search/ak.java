package com.yelp.android.ui.activities.search;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class ak
  implements View.OnClickListener
{
  ak(SearchOverlay paramSearchOverlay) {}
  
  public void onClick(View paramView)
  {
    if (!SearchOverlay.a(a).getText().toString().matches("")) {
      SearchOverlay.a(a).setText("");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */