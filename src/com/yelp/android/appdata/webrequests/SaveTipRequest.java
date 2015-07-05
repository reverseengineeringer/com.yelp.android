package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.io.File;
import org.apache.http.HttpEntity;
import org.json.JSONObject;

public class SaveTipRequest
  extends PhotoUploadRequestBase<Tip>
{
  public static Parcelable.Creator<SaveTipRequest> CREATOR = new fr();
  private final String mBusinessId;
  protected HttpEntity mEntity;
  private final String mTipText;
  
  public SaveTipRequest(String paramString1, String paramString2, File paramFile)
  {
    super("quicktips/save", null, paramFile);
    super.addPostParam("text", paramString2);
    super.addPostParam("business_id", paramString1);
    setImageParamName("image");
    mTipText = paramString2;
    mBusinessId = paramString1;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Tip process(JSONObject paramJSONObject)
  {
    Tip localTip = (Tip)Tip.CREATOR.parse(paramJSONObject.getJSONObject("quicktip"));
    localTip.setBusinessName(((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"))).getDisplayName());
    return localTip;
  }
  
  public void writeMoreToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mBusinessId);
    paramParcel.writeString(mTipText);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.SaveTipRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */