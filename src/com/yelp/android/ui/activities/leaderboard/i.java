package com.yelp.android.ui.activities.leaderboard;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.RoyaltySet;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

class i
  extends j<ArrayList<RoyaltySet>>
{
  i(RoyaltyFragment paramRoyaltyFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<RoyaltySet> paramArrayList)
  {
    a.j();
    a.a(true);
    if ((paramArrayList == null) || (paramArrayList.isEmpty()))
    {
      a.a(ErrorType.NO_ROYALTY);
      return;
    }
    RoyaltyFragment.a(a, paramArrayList);
    RoyaltyFragment.a(a, RoyaltyFragment.b(a, paramArrayList));
    a.a(RoyaltyFragment.a(a));
  }
  
  public boolean a()
  {
    ((YelpActivity)a.getActivity()).onProvidersRequired(RoyaltyFragment.b(a), true, 0);
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */