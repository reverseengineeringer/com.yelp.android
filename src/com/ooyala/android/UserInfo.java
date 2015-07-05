package com.ooyala.android;

import org.json.JSONException;
import org.json.JSONObject;

class UserInfo
{
  public String accountId;
  public String continent;
  public String country;
  public String device;
  public String domain;
  public String ipAddress;
  public String language;
  public String timezone;
  
  public UserInfo(JSONObject paramJSONObject)
  {
    try
    {
      if (!paramJSONObject.isNull("account_id")) {
        accountId = paramJSONObject.getString("account_id");
      }
      if (!paramJSONObject.isNull("continent")) {
        continent = paramJSONObject.getString("continent");
      }
      if (!paramJSONObject.isNull("country")) {
        country = paramJSONObject.getString("country");
      }
      if (!paramJSONObject.isNull("device")) {
        device = paramJSONObject.getString("device");
      }
      if (!paramJSONObject.isNull("domain")) {
        domain = paramJSONObject.getString("domain");
      }
      if (!paramJSONObject.isNull("language")) {
        ipAddress = paramJSONObject.getString("ip_address");
      }
      if (!paramJSONObject.isNull("language")) {
        language = paramJSONObject.getString("language");
      }
      if (!paramJSONObject.isNull("timezone")) {
        timezone = paramJSONObject.getString("timezone");
      }
      return;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public String getAccountId()
  {
    return accountId;
  }
  
  public String getContient()
  {
    return continent;
  }
  
  public String getCountry()
  {
    return country;
  }
  
  public String getDevice()
  {
    return device;
  }
  
  public String getDomain()
  {
    return domain;
  }
  
  public String getIpAddress()
  {
    return ipAddress;
  }
  
  public String getLanguage()
  {
    return language;
  }
  
  public String getTimezone()
  {
    return timezone;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.UserInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */