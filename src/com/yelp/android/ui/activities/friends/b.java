package com.yelp.android.ui.activities.friends;

import android.os.AsyncTask;
import com.yelp.android.util.ContactsFetcher;

class b
  extends AsyncTask<Void, Void, Iterable<String>>
{
  b(FindFriendsFBContactsFragment paramFindFriendsFBContactsFragment) {}
  
  protected Iterable<String> a(Void... paramVarArgs)
  {
    return ContactsFetcher.b().a(a.getActivity());
  }
  
  protected void a(Iterable<String> paramIterable)
  {
    FindFriendsFBContactsFragment.a(a, paramIterable);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */