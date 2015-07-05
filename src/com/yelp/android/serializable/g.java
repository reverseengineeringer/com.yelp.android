package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class g
  extends JsonParser.DualCreator<AttributedLabelValuePair>
{
  public AttributedLabelValuePair a(Parcel paramParcel)
  {
    AttributedLabelValuePair localAttributedLabelValuePair = new AttributedLabelValuePair();
    localAttributedLabelValuePair.readFromParcel(paramParcel);
    return localAttributedLabelValuePair;
  }
  
  public AttributedLabelValuePair a(JSONObject paramJSONObject)
  {
    AttributedLabelValuePair localAttributedLabelValuePair = new AttributedLabelValuePair();
    localAttributedLabelValuePair.readFromJson(paramJSONObject);
    return localAttributedLabelValuePair;
  }
  
  public AttributedLabelValuePair[] a(int paramInt)
  {
    return new AttributedLabelValuePair[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */