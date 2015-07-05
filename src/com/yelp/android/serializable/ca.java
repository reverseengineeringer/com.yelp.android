package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ca
  extends JsonParser.DualCreator<PrivacyPolicy>
{
  private String a(String paramString)
  {
    paramString = new StringBuilder(paramString.trim().replaceAll("\\s+", " "));
    paramString.setCharAt(0, Character.toUpperCase(paramString.charAt(0)));
    return paramString.toString();
  }
  
  public PrivacyPolicy a(Parcel paramParcel)
  {
    PrivacyPolicy localPrivacyPolicy = new PrivacyPolicy();
    localPrivacyPolicy.readFromParcel(paramParcel);
    return localPrivacyPolicy;
  }
  
  public PrivacyPolicy a(JSONObject paramJSONObject)
  {
    PrivacyPolicy localPrivacyPolicy = new PrivacyPolicy();
    localPrivacyPolicy.readFromJson(paramJSONObject);
    localPrivacyPolicy.setShareProfileStory(a(localPrivacyPolicy.getShareProfileStory()));
    localPrivacyPolicy.setShareDemographicsStory(a(localPrivacyPolicy.getShareDemographicsStory()));
    localPrivacyPolicy.setShareBasicInfoStory(a(localPrivacyPolicy.getShareBasicInfoStory()));
    return localPrivacyPolicy;
  }
  
  public PrivacyPolicy[] a(int paramInt)
  {
    return new PrivacyPolicy[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */