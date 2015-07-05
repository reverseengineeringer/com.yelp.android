package com.yelp.android.ui.activities.mutatebiz;

import android.location.Address;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusinessAddresses;

class i
  implements View.OnClickListener
{
  i(ChangeBusinessAttributes paramChangeBusinessAttributes) {}
  
  public void onClick(View paramView)
  {
    YelpBusinessAddresses localYelpBusinessAddresses = null;
    boolean bool = false;
    Object localObject = a.g.getParcelableArrayData();
    if (localObject != null)
    {
      paramView = (Address)localObject[0];
      localYelpBusinessAddresses = (YelpBusinessAddresses)localObject[2];
    }
    for (;;)
    {
      localObject = a;
      ChangeBusinessAttributes localChangeBusinessAttributes = a;
      String str = a.c;
      if (a.n != null) {
        bool = true;
      }
      ((ChangeBusinessAttributes)localObject).startActivityForResult(EditExistingAddress.a(localChangeBusinessAttributes, str, paramView, localYelpBusinessAddresses, bool), 1014);
      return;
      paramView = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */