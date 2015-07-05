package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import org.json.JSONObject;

public class BusinessObjectFlagRequest
  extends g<Void, Void, String>
{
  public BusinessObjectFlagRequest(BusinessObjectFlagRequest.FlaggableObject paramFlaggableObject, String paramString1, String paramString2, m<String> paramm)
  {
    super(ApiRequest.RequestType.POST, "/business/" + BusinessObjectFlagRequest.FlaggableObject.access$000(paramFlaggableObject) + "/flag", paramm);
    addPostParam(BusinessObjectFlagRequest.FlaggableObject.access$000(paramFlaggableObject) + "_id", paramString1);
    addPostParam("message", paramString2);
  }
  
  public String a(JSONObject paramJSONObject)
  {
    return paramJSONObject.getString("success_title");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessObjectFlagRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */