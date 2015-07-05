package com.yelp.android.ui.activities;

import com.facebook.FacebookRequestError;
import com.facebook.Request.Callback;
import com.facebook.Response;
import com.facebook.model.GraphObject;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.FacebookUser;
import com.yelp.android.serializable.ah;
import com.yelp.android.util.YelpLog;
import org.json.JSONException;

class fc
  implements Request.Callback
{
  fc(FacebookConnectManager paramFacebookConnectManager, boolean paramBoolean) {}
  
  public void onCompleted(Response paramResponse)
  {
    GraphObject localGraphObject = paramResponse.getGraphObject();
    paramResponse = paramResponse.getError();
    if ((paramResponse != null) || (localGraphObject == null))
    {
      YelpLog.e(this, "Facebook Fetch User Error: " + paramResponse.toString());
      FacebookConnectManager.a(b, new YelpException(YelpException.YPErrorServerResponse));
      return;
    }
    try
    {
      paramResponse = (FacebookUser)FacebookUser.CREATOR.parse(localGraphObject.getInnerJSONObject());
      if (paramResponse == null)
      {
        FacebookConnectManager.a(b, new YelpException(YelpException.YPErrorServerResponse));
        return;
      }
    }
    catch (JSONException paramResponse)
    {
      YelpLog.e(this, "FacebookUser CREATOR Error: " + paramResponse.toString());
      FacebookConnectManager.a(b, new YelpException(YelpException.YPErrorServerResponse));
      return;
    }
    FacebookConnectManager.a(b, paramResponse);
    FacebookConnectManager.a(b).c(b);
    if (a)
    {
      b.a(FacebookConnectManager.b(b));
      return;
    }
    ((ez)FacebookConnectManager.c(b)).hideLoadingDialog();
    FacebookConnectManager.a(b, false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */