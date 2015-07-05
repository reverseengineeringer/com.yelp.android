package com.yelp.android.ui.activities;

import android.content.res.Resources;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.EditText;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.util.z;
import java.util.LinkedList;

class es
  implements View.OnClickListener
{
  es(CheckInDialog paramCheckInDialog) {}
  
  public void onClick(View paramView)
  {
    CheckInDialog.d(a).clear();
    CheckInDialog.d(a).addAll(z.a(CheckInDialog.e(a), CheckInDialog.f(a), CheckInDialog.a(a)));
    if ((CheckInDialog.a(a).isChecked()) && (CheckInDialog.c(a).getText().length() > a.getResources().getInteger(2131558415))) {
      AlertDialogFragment.a(a.getString(2131165553), a.getString(2131165554)).show(a.getChildFragmentManager(), null);
    }
    while (CheckInDialog.a(a, AppData.b().m().h(), CheckInDialog.d(a))) {
      return;
    }
    a.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */