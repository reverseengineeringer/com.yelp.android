package com.yelp.android.appdata.webrequests;

import android.location.Location;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationLocation;
import com.yelp.android.appdata.RemoteConfigPreferences.NotificationSchedule;
import com.yelp.android.appdata.ag;
import com.yelp.android.appdata.ah;
import com.yelp.android.appdata.ai;
import com.yelp.android.appdata.ak;
import com.yelp.android.appdata.al;
import com.yelp.android.appdata.am;
import com.yelp.android.appdata.an;
import com.yelp.android.av.g;
import org.json.JSONObject;

public class fl
  extends g<Void, Void, RemoteConfigPreferences>
{
  private final RemoteConfigPreferences.NotificationLocation a;
  private final RemoteConfigPreferences.NotificationSchedule b;
  private final an c;
  private final ak d;
  private final am e;
  private final al f;
  private final Boolean g;
  private final ag h;
  private final ah i;
  private final ai j;
  private final Boolean k;
  
  protected fl(RemoteConfigPreferences.NotificationLocation paramNotificationLocation, RemoteConfigPreferences.NotificationSchedule paramNotificationSchedule, an paraman, am paramam, al paramal, Boolean paramBoolean1, ak paramak, ag paramag, ah paramah, ai paramai, Location paramLocation, Boolean paramBoolean2, String paramString, m<RemoteConfigPreferences> paramm)
  {
    super(ApiRequest.RequestType.POST, "account/config/save", paramm);
    a = paramNotificationLocation;
    b = paramNotificationSchedule;
    k = paramBoolean2;
    c = paraman;
    e = paramam;
    f = paramal;
    g = paramBoolean1;
    h = paramag;
    i = paramah;
    d = paramak;
    j = paramai;
    if (paramNotificationLocation != null) {
      addPostParam("alert_from_location", id);
    }
    if (paramNotificationSchedule != null) {
      addPostParam("alerts", id);
    }
    if (paraman != null) {
      addPostParam("tip_alerts", a);
    }
    if (paramam != null) {
      addPostParam("photo_alerts", a);
    }
    if (paramal != null) {
      addPostParam("message_alerts", a);
    }
    if (paramBoolean1 != null) {
      addPostParam("preview_message_text", paramBoolean1.booleanValue());
    }
    if (paramak != null) {
      addPostParam("compliment_alerts", a);
    }
    paramNotificationLocation = paramLocation;
    if (paramLocation == null) {
      paramNotificationLocation = AppData.b().n().c();
    }
    if (paramBoolean2 != null) {
      addPostParam("share_awards", paramBoolean2.booleanValue());
    }
    if (paramString != null) {
      addPostParam("c2dm_registration_id", paramString);
    }
    if (paramag != null) {
      addPostParam("check_in_comment_alerts", a);
    }
    if (paramah != null) {
      addPostParam("check_in_comment_other_threads_alerts", a);
    }
    if (paramai != null) {
      addPostParam("check_in_feedback_alerts", a);
    }
    if (paramNotificationLocation != null)
    {
      addPostParam("longitude", paramNotificationLocation.getLongitude());
      addPostParam("latitude", paramNotificationLocation.getLatitude());
      addPostParam("accuracy", paramNotificationLocation.getAccuracy());
    }
  }
  
  public fl(m<RemoteConfigPreferences> paramm, RemoteConfigPreferences.NotificationLocation paramNotificationLocation, RemoteConfigPreferences.NotificationSchedule paramNotificationSchedule, an paraman, am paramam, al paramal, Boolean paramBoolean1, ak paramak, ag paramag, ah paramah, ai paramai, Location paramLocation, Boolean paramBoolean2, String paramString)
  {
    this(paramNotificationLocation, paramNotificationSchedule, paraman, paramam, paramal, paramBoolean1, paramak, paramag, paramah, paramai, paramLocation, paramBoolean2, paramString, paramm);
  }
  
  public fl(m<RemoteConfigPreferences> paramm, RemoteConfigPreferences paramRemoteConfigPreferences, Location paramLocation, String paramString)
  {
    this(paramm, paramRemoteConfigPreferences.b(), paramRemoteConfigPreferences.a(), paramRemoteConfigPreferences.c(), paramRemoteConfigPreferences.f(), paramRemoteConfigPreferences.d(), paramRemoteConfigPreferences.e(), paramRemoteConfigPreferences.g(), paramRemoteConfigPreferences.l(), paramRemoteConfigPreferences.k(), paramRemoteConfigPreferences.m(), paramLocation, paramRemoteConfigPreferences.j(), paramString);
  }
  
  public RemoteConfigPreferences a(JSONObject paramJSONObject)
  {
    paramJSONObject = new RemoteConfigPreferences();
    paramJSONObject.a(a);
    paramJSONObject.a(b);
    paramJSONObject.a(k);
    paramJSONObject.a(c);
    paramJSONObject.a(e);
    paramJSONObject.a(f);
    paramJSONObject.b(g);
    paramJSONObject.a(d);
    paramJSONObject.a(h);
    paramJSONObject.a(i);
    paramJSONObject.a(j);
    return paramJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */