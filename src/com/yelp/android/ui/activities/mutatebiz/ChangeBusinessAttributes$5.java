package com.yelp.android.ui.activities.mutatebiz;

import android.location.Address;
import android.os.Parcelable;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusinessAddresses;

class ChangeBusinessAttributes$5
  implements View.OnClickListener
{
  ChangeBusinessAttributes$5(ChangeBusinessAttributes paramChangeBusinessAttributes) {}
  
  public void onClick(View paramView)
  {
    YelpBusinessAddresses localYelpBusinessAddresses = null;
    Parcelable[] arrayOfParcelable = a.g.getParcelableArrayData();
    if (arrayOfParcelable != null)
    {
      paramView = (Address)arrayOfParcelable[0];
      localYelpBusinessAddresses = (YelpBusinessAddresses)arrayOfParcelable[1];
    }
    for (;;)
    {
      a.startActivityForResult(EditExistingAddress.a(a, a.c, paramView, localYelpBusinessAddresses, a.q, a.p, a.x), 1018);
      return;
      paramView = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ChangeBusinessAttributes.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */