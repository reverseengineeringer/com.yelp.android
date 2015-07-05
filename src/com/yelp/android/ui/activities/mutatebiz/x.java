package com.yelp.android.ui.activities.mutatebiz;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class x
  implements View.OnClickListener
{
  x(EditOpenHours paramEditOpenHours) {}
  
  public void onClick(View paramView)
  {
    String str1 = a.getIntent().getStringExtra("DESCRIPTION");
    String str2 = a.getIntent().getStringExtra("LISTED_HOURS");
    paramView = EditOpenHoursDescription.a(paramView.getContext(), str1, str2);
    a.startActivityForResult(paramView, 101);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */