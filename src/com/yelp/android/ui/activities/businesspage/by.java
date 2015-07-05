package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.ui.activities.deals.ActivityDealRedemption;
import com.yelp.android.ui.util.s;

class by
  implements DialogInterface.OnClickListener
{
  by(bx parambx, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = ActivityDealRedemption.a(a, BusinessPageFragment.v(b.a).a(), BusinessPageFragment.v(b.a).a(paramInt));
    b.startActivityForResult(paramDialogInterface, 1013);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */