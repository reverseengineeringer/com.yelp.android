package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Tip;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.io.File;
import java.io.FileNotFoundException;
import org.json.JSONException;
import org.json.JSONObject;

public class EditTipRequest
  extends TipUploadRequestBase<Tip>
{
  public static Parcelable.Creator<EditTipRequest> CREATOR = new Parcelable.Creator()
  {
    public EditTipRequest a(Parcel paramAnonymousParcel)
    {
      File localFile = TipUploadRequestBase.a(paramAnonymousParcel);
      String str = paramAnonymousParcel.readString();
      paramAnonymousParcel = paramAnonymousParcel.readString();
      try
      {
        paramAnonymousParcel = new EditTipRequest(str, paramAnonymousParcel, localFile);
        return paramAnonymousParcel;
      }
      catch (FileNotFoundException paramAnonymousParcel)
      {
        throw new IllegalStateException("File Deleted while parceled", paramAnonymousParcel);
      }
    }
    
    public EditTipRequest[] a(int paramAnonymousInt)
    {
      return new EditTipRequest[paramAnonymousInt];
    }
  };
  private final String i;
  private final String j;
  
  public EditTipRequest(String paramString1, String paramString2, File paramFile)
    throws FileNotFoundException
  {
    super("quicktips/update", null, paramFile);
    super.b("quicktip_id", paramString1);
    super.b("text", paramString2);
    e("image");
    i = paramString2;
    j = paramString1;
  }
  
  public Tip a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (Tip)Tip.CREATOR.parse(paramJSONObject.getJSONObject("quicktip"));
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
 * Qualified Name:     com.yelp.android.appdata.webrequests.EditTipRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */