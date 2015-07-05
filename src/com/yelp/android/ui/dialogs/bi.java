package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.yelp.android.appdata.AppData;

class bi
  implements View.OnClickListener
{
  bi(SingleChoiceListDialogFragment paramSingleChoiceListDialogFragment) {}
  
  public void onClick(View paramView)
  {
    if ((a.a != null) && (SingleChoiceListDialogFragment.a(a) != -1))
    {
      a.a.a(SingleChoiceListDialogFragment.b(a)[SingleChoiceListDialogFragment.a(a)], SingleChoiceListDialogFragment.c(a)[SingleChoiceListDialogFragment.a(a)]);
      a.dismiss();
      return;
    }
    Toast.makeText(AppData.b(), SingleChoiceListDialogFragment.d(a), 1).show();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */