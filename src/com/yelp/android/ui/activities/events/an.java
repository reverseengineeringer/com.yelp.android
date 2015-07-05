package com.yelp.android.ui.activities.events;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.widgets.YelpToggleButton;

class an
  implements View.OnClickListener
{
  an(al paramal) {}
  
  public void onClick(View paramView)
  {
    if (((YelpToggleButton)paramView).isChecked())
    {
      al.c(a).c().a(al.b(a).getId());
      return;
    }
    al.c(a).c().b(al.b(a).getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */