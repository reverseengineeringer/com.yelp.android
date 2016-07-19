package com.yelp.android.ui.activities.account;

import android.os.Parcelable;
import android.util.Pair;
import com.yelp.android.ui.dialogs.ListDialogFragment.a;
import java.util.List;

class CreditCardSelector$3
  implements ListDialogFragment.a
{
  CreditCardSelector$3(CreditCardSelector paramCreditCardSelector, List paramList) {}
  
  public void a(String paramString, Parcelable paramParcelable)
  {
    paramString = new Pair(paramString, paramParcelable);
    CreditCardSelector.a(b, a.indexOf(paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.account.CreditCardSelector.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */