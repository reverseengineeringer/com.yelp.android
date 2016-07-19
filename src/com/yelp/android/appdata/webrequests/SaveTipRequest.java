package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.io.File;
import java.io.FileNotFoundException;
import org.json.JSONException;
import org.json.JSONObject;

public class SaveTipRequest
  extends TipUploadRequestBase<Tip>
{
  public static Parcelable.Creator<SaveTipRequest> CREATOR = new Parcelable.Creator()
  {
    public SaveTipRequest a(Parcel paramAnonymousParcel)
    {
      File localFile = TipUploadRequestBase.a(paramAnonymousParcel);
      String str = paramAnonymousParcel.readString();
      paramAnonymousParcel = paramAnonymousParcel.readString();
      try
      {
        paramAnonymousParcel = new SaveTipRequest(str, paramAnonymousParcel, localFile);
        return paramAnonymousParcel;
      }
      catch (FileNotFoundException paramAnonymousParcel)
      {
        throw new IllegalStateException("File Deleted while parceled", paramAnonymousParcel);
      }
    }
    
    public SaveTipRequest[] a(int paramAnonymousInt)
    {
      return new SaveTipRequest[paramAnonymousInt];
    }
  };
  private final String i;
  private final String j;
  
  public SaveTipRequest(String paramString1, String paramString2, File paramFile)
    throws FileNotFoundException
  {
    super("quicktips/save", null, paramFile);
    super.b("text", paramString2);
    super.b("business_id", paramString1);
    e("image");
    i = paramString2;
    j = paramString1;
  }
  
  public Tip a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    Tip localTip = (Tip)Tip.CREATOR.parse(paramJSONObject.getJSONObject("quicktip"));
    localTip.b(((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"))).z());
    return localTip;
  }
  
  public void a(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(j);
    paramParcel.writeString(i);
  }
  
  public int describeContents()
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.SaveTipRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */