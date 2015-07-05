package com.yelp.android.ui.activities.friends;

import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cm;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.activities.FacebookConnectManager;
import com.yelp.android.ui.activities.FacebookConnectManager.FacebookPermission;
import com.yelp.android.util.YelpLog;
import org.json.JSONException;
import org.json.JSONObject;

class j
  implements m<cm>
{
  j(FindFriendsFBContactsFragment paramFindFriendsFBContactsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cm paramcm)
  {
    new k(this, paramcm.b(), paramcm.a()).execute(new Void[0]);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    try
    {
      if ((paramYelpException instanceof ApiException))
      {
        paramApiRequest = (ApiException)paramYelpException;
        if ((paramApiRequest.getResultCode() == 1026) && (paramApiRequest.getServerMessage().getString("missing_permissions").equals(FacebookConnectManager.FacebookPermission.USER_FRIEND.toString())))
        {
          FindFriendsFBContactsFragment.i(a).e();
          return;
        }
        a.a(paramYelpException);
        return;
      }
    }
    catch (JSONException paramApiRequest)
    {
      YelpLog.e(a.getActivity(), "Friend Finder Error Server Message : " + paramApiRequest.toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */