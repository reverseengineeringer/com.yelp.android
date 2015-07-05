package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.cr;

class et
  implements View.OnClickListener
{
  et(CheckInDialog paramCheckInDialog) {}
  
  public void onClick(View paramView)
  {
    CheckInDialog.g(a).setVisibility(8);
    CheckInDialog.c(a).setVisibility(0);
    CheckInDialog.c(a).requestFocus();
    cr.a(CheckInDialog.c(a));
    AppData.a(EventIri.CheckInExpandComment, "business_id", CheckInDialog.h(a).getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */