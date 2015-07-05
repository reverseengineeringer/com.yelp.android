package com.yelp.android.appdata;

import com.yelp.android.serializable.az;
import org.json.JSONObject;

final class af
  extends az<RemoteConfigPreferences>
{
  public RemoteConfigPreferences a(JSONObject paramJSONObject)
  {
    boolean bool2 = true;
    RemoteConfigPreferences localRemoteConfigPreferences = new RemoteConfigPreferences();
    RemoteConfigPreferences.a(localRemoteConfigPreferences, paramJSONObject.optString("locale"));
    int i = paramJSONObject.optInt("alerts", 3);
    Object localObject = RemoteConfigPreferences.NotificationSchedule.values();
    if ((i >= 0) && (i < localObject.length)) {
      RemoteConfigPreferences.a(localRemoteConfigPreferences, localObject[i]);
    }
    localObject = RemoteConfigPreferences.NotificationLocation.values();
    i = paramJSONObject.optInt("alert_from_location", -1);
    if ((i >= 0) && (i < localObject.length))
    {
      RemoteConfigPreferences.a(localRemoteConfigPreferences, localObject[i]);
      if (paramJSONObject.optInt("twitter_status") <= 0) {
        break label373;
      }
      bool1 = true;
      label103:
      RemoteConfigPreferences.a(localRemoteConfigPreferences, bool1);
      if (paramJSONObject.optInt("facebook_status") <= 0) {
        break label378;
      }
    }
    label373:
    label378:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      RemoteConfigPreferences.b(localRemoteConfigPreferences, bool1);
      if (!paramJSONObject.isNull("share_awards")) {
        RemoteConfigPreferences.a(localRemoteConfigPreferences, Boolean.valueOf(paramJSONObject.optBoolean("share_awards", false)));
      }
      if (!paramJSONObject.isNull("tip_alerts")) {
        RemoteConfigPreferences.a(localRemoteConfigPreferences, new an(paramJSONObject.getInt("tip_alerts")));
      }
      if (!paramJSONObject.isNull("photo_alerts")) {
        RemoteConfigPreferences.a(localRemoteConfigPreferences, new am(paramJSONObject.getInt("photo_alerts")));
      }
      if (!paramJSONObject.isNull("compliment_alerts")) {
        RemoteConfigPreferences.a(localRemoteConfigPreferences, new ak(paramJSONObject.getInt("compliment_alerts")));
      }
      if (!paramJSONObject.isNull("check_in_comment_other_threads_alerts")) {
        RemoteConfigPreferences.a(localRemoteConfigPreferences, new ah(paramJSONObject.getInt("check_in_comment_other_threads_alerts")));
      }
      if (!paramJSONObject.isNull("message_alerts")) {
        RemoteConfigPreferences.a(localRemoteConfigPreferences, new al(paramJSONObject.getInt("message_alerts")));
      }
      RemoteConfigPreferences.b(localRemoteConfigPreferences, Boolean.valueOf(paramJSONObject.optBoolean("preview_message_text", false)));
      if (!paramJSONObject.isNull("check_in_comment_alerts")) {
        RemoteConfigPreferences.a(localRemoteConfigPreferences, new ag(paramJSONObject.getInt("check_in_comment_alerts")));
      }
      RemoteConfigPreferences.a(localRemoteConfigPreferences, new ai(paramJSONObject.optInt("check_in_feedback_alerts", 0)));
      return localRemoteConfigPreferences;
      RemoteConfigPreferences.a(localRemoteConfigPreferences, RemoteConfigPreferences.NotificationLocation.NONE);
      break;
      bool1 = false;
      break label103;
    }
  }
  
  public RemoteConfigPreferences[] a(int paramInt)
  {
    return new RemoteConfigPreferences[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */