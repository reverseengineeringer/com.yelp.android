package com.yelp.android.ui.util;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Checkable;

class ck
  implements View.OnClickListener
{
  ck(cj paramcj) {}
  
  public void onClick(View paramView)
  {
    Object localObject = paramView.getTag();
    if (((localObject instanceof Integer)) && ((paramView instanceof Checkable)) && (a.a != null)) {
      a.a.a((Checkable)paramView, ((Integer)localObject).intValue(), ((Checkable)paramView).isChecked());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */