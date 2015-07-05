package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Tip;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.io.File;
import org.json.JSONObject;

public class EditTipRequest
  extends PhotoUploadRequestBase<Tip>
{
  public static Parcelable.Creator<EditTipRequest> CREATOR = new bo();
  private final String mTipId;
  private final String mTipText;
  
  public EditTipRequest(String paramString1, String paramString2, File paramFile)
  {
    super("quicktips/update", null, paramFile);
    super.addPostParam("quicktip_id", paramString1);
    super.addPostParam("text", paramString2);
    setImageParamName("image");
    mTipText = paramString2;
    mTipId = paramString1;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Tip process(JSONObject paramJSONObject)
  {
    return (Tip)Tip.CREATOR.parse(paramJSONObject.getJSONObject("quicktip"));
  }
  
  public void writeMoreToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mTipId);
    paramParcel.writeString(mTipText);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.EditTipRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */