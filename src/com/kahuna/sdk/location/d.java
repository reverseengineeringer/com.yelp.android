package com.kahuna.sdk.location;

import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.Geofence.Builder;
import com.kahuna.sdk.aj;
import org.json.JSONException;
import org.json.JSONObject;

public class d
{
  private final String a;
  private final double b;
  private final double c;
  private final float d;
  private long e;
  private int f;
  
  public d(String paramString, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, int paramInt)
  {
    if (aj.a(paramString)) {
      throw new IllegalArgumentException("Cannot create Geofence with null or empty regionId");
    }
    if ((paramDouble1 < -90.0D) || (paramDouble1 > 90.0D)) {
      throw new IllegalArgumentException("Cannot create Geofence with latitude outside of -90 to 90");
    }
    if ((paramDouble2 < -180.0D) || (paramDouble2 > 180.0D)) {
      throw new IllegalArgumentException("Cannot create Geofence with longitude outside of -180 to 180");
    }
    if (paramFloat < 1.0F) {
      throw new IllegalArgumentException("Cannot create Geofence with radius less than 1");
    }
    a = ("KahunaEngineRegion_" + paramString);
    b = paramDouble1;
    c = paramDouble2;
    d = paramFloat;
    if (paramLong < 1L) {}
    for (e = 2592000000L;; e = paramLong)
    {
      f = paramInt;
      return;
    }
  }
  
  public static d a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    try
    {
      paramJSONObject = new d(paramJSONObject.getString("id").replace("KahunaEngineRegion_", ""), paramJSONObject.getDouble("lat"), paramJSONObject.getDouble("long"), (float)paramJSONObject.getDouble("radius"), paramJSONObject.getLong("expiration"), paramJSONObject.getInt("transition"));
      return paramJSONObject;
    }
    catch (Exception paramJSONObject) {}
    return null;
  }
  
  protected String a()
  {
    return a;
  }
  
  protected double b()
  {
    return b;
  }
  
  protected double c()
  {
    return c;
  }
  
  protected float d()
  {
    return d;
  }
  
  protected long e()
  {
    return e;
  }
  
  protected Geofence f()
  {
    return new Geofence.Builder().setRequestId(a()).setTransitionTypes(f).setCircularRegion(b(), c(), d()).setExpirationDuration(e).build();
  }
  
  public JSONObject g()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", a());
      localJSONObject.put("lat", b());
      localJSONObject.put("long", c());
      localJSONObject.put("radius", d());
      localJSONObject.put("expiration", e);
      localJSONObject.put("transition", f);
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */