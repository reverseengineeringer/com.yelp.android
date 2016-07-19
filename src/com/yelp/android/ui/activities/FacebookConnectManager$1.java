package com.yelp.android.ui.activities;

import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest.c;
import com.facebook.GraphResponse;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.FacebookUser;
import com.yelp.android.serializable.a;
import com.yelp.android.util.YelpLog;
import org.json.JSONException;
import org.json.JSONObject;

class FacebookConnectManager$1
  implements GraphRequest.c
{
  FacebookConnectManager$1(FacebookConnectManager paramFacebookConnectManager, boolean paramBoolean) {}
  
  public void a(JSONObject paramJSONObject, GraphResponse paramGraphResponse)
  {
    paramGraphResponse = paramGraphResponse.a();
    if ((paramGraphResponse != null) || (paramJSONObject == null))
    {
      if (paramGraphResponse != null) {
        YelpLog.remoteError(this, "Facebook Fetch User Error: " + paramGraphResponse.toString());
      }
      FacebookConnectManager.a(b, new YelpException(YelpException.YPErrorServerResponse));
      return;
    }
    try
    {
      paramJSONObject = (FacebookUser)FacebookUser.CREATOR.parse(paramJSONObject);
      if (paramJSONObject == null)
      {
        FacebookConnectManager.a(b, new YelpException(YelpException.YPErrorServerResponse));
        return;
      }
    }
    catch (JSONException paramJSONObject)
    {
      YelpLog.remoteError(this, "FacebookUser CREATOR Error: " + paramJSONObject.toString());
      FacebookConnectManager.a(b, new YelpException(YelpException.YPErrorServerResponse));
      return;
    }
    FacebookConnectManager.a(b, paramJSONObject);
    FacebookConnectManager.a(b).c(b);
    if (a)
    {
      b.a(FacebookConnectManager.b(b));
      return;
    }
    ((b)FacebookConnectManager.c(b)).hideLoadingDialog();
    FacebookConnectManager.a(b, false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.FacebookConnectManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */