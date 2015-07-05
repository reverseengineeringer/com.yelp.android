package com.yelp.android.ui.dialogs;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class an
  implements AdapterView.OnItemClickListener
{
  an(FlagsDialog paramFlagsDialog) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (ap)FlagsDialog.a(a).getItem(paramInt);
    FlagsDialog.a(a, paramAdapterView.b());
    FlagsDialog.b(a).a(paramAdapterView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */