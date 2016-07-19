package com.yelp.android.ui.dialogs;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class FlagsDialog$1
  implements AdapterView.OnItemClickListener
{
  FlagsDialog$1(FlagsDialog paramFlagsDialog) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (FlagsDialog.a.a)FlagsDialog.a(a).getItem(paramInt);
    FlagsDialog.a(a, paramAdapterView.b());
    FlagsDialog.b(a).a(paramAdapterView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.FlagsDialog.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */