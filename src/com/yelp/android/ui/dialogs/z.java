package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ToggleButton;
import com.yelp.android.serializable.AttributeFilter;
import java.util.HashSet;

class z
  implements View.OnClickListener
{
  z(y paramy, AttributeFilter paramAttributeFilter, ac paramac) {}
  
  public void onClick(View paramView)
  {
    paramView = a.getAlias();
    ToggleButton localToggleButton = ac.c(b);
    if (!y.a(c).contains(paramView)) {}
    for (boolean bool = true;; bool = false)
    {
      localToggleButton.setChecked(bool);
      if (!y.a(c).contains(paramView)) {
        break;
      }
      y.a(c).remove(paramView);
      return;
    }
    y.a(c).add(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */