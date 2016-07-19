package com.adjust.sdk;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.util.Locale;
import org.json.JSONObject;

public class AdjustAttribution
  implements Serializable
{
  private static final ObjectStreamField[] serialPersistentFields = { new ObjectStreamField("trackerToken", String.class), new ObjectStreamField("trackerName", String.class), new ObjectStreamField("network", String.class), new ObjectStreamField("campaign", String.class), new ObjectStreamField("adgroup", String.class), new ObjectStreamField("creative", String.class), new ObjectStreamField("clickLabel", String.class) };
  private static final long serialVersionUID = 1L;
  public String adgroup;
  public String campaign;
  public String clickLabel;
  public String creative;
  public String network;
  public String trackerName;
  public String trackerToken;
  
  public static AdjustAttribution fromJson(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    AdjustAttribution localAdjustAttribution = new AdjustAttribution();
    trackerToken = paramJSONObject.optString("tracker_token", null);
    trackerName = paramJSONObject.optString("tracker_name", null);
    network = paramJSONObject.optString("network", null);
    campaign = paramJSONObject.optString("campaign", null);
    adgroup = paramJSONObject.optString("adgroup", null);
    creative = paramJSONObject.optString("creative", null);
    clickLabel = paramJSONObject.optString("click_label", null);
    return localAdjustAttribution;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws ClassNotFoundException, IOException
  {
    paramObjectInputStream.defaultReadObject();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (AdjustAttribution)paramObject;
      if (!Util.equalString(trackerToken, trackerToken)) {
        return false;
      }
      if (!Util.equalString(trackerName, trackerName)) {
        return false;
      }
      if (!Util.equalString(network, network)) {
        return false;
      }
      if (!Util.equalString(campaign, campaign)) {
        return false;
      }
      if (!Util.equalString(adgroup, adgroup)) {
        return false;
      }
      if (!Util.equalString(creative, creative)) {
        return false;
      }
    } while (Util.equalString(clickLabel, clickLabel));
    return false;
  }
  
  public int hashCode()
  {
    return ((((((Util.hashString(trackerToken) + 629) * 37 + Util.hashString(trackerName)) * 37 + Util.hashString(network)) * 37 + Util.hashString(campaign)) * 37 + Util.hashString(adgroup)) * 37 + Util.hashString(creative)) * 37 + Util.hashString(clickLabel);
  }
  
  public String toString()
  {
    return String.format(Locale.US, "tt:%s tn:%s net:%s cam:%s adg:%s cre:%s cl:%s", new Object[] { trackerToken, trackerName, network, campaign, adgroup, creative, clickLabel });
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.AdjustAttribution
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */