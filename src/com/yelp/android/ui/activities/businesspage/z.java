package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

class z
  implements View.OnClickListener
{
  z(t paramt, String paramString, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.DIAL");
    paramView.setData(Uri.parse("tel:" + a));
    paramView.addFlags(268435456);
    b.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */