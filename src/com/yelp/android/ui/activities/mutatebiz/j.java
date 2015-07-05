package com.yelp.android.ui.activities.mutatebiz;

import android.location.Address;
import android.os.Parcelable;
import android.view.View;
import android.view.View.OnClickListener;

class j
  implements View.OnClickListener
{
  j(ChangeBusinessAttributes paramChangeBusinessAttributes) {}
  
  public void onClick(View paramView)
  {
    Parcelable[] arrayOfParcelable = a.g.getParcelableArrayData();
    paramView = null;
    if (arrayOfParcelable != null) {
      paramView = ((Address)arrayOfParcelable[0]).getCountryCode();
    }
    a.startActivityForResult(EditName.a(a, a.n, a.c, a.d, a.e, a.f, paramView), 1017);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */