package com.yelp.android.ui.activities.account;

import android.os.Parcelable;
import android.util.Pair;
import com.yelp.android.ui.dialogs.as;
import java.util.List;

class d
  implements as
{
  d(CreditCardSelector paramCreditCardSelector, List paramList) {}
  
  public void a(String paramString, Parcelable paramParcelable)
  {
    paramString = new Pair(paramString, paramParcelable);
    CreditCardSelector.a(b, a.indexOf(paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.account.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */