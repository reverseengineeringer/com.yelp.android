package com.yelp.android.ui.activities.friends;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Filter;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cj;

class q
  implements TextWatcher
{
  q(FriendsListFragment paramFriendsListFragment) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    FriendsListFragment.a(a).getFilter().filter(paramCharSequence);
    try
    {
      a.m().b(false);
      return;
    }
    catch (IllegalStateException paramCharSequence) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */