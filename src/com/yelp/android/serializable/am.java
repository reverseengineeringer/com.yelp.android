package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class am
  extends JsonParser.DualCreator<EventSection>
{
  public EventSection a(Parcel paramParcel)
  {
    EventSection localEventSection = new EventSection();
    localEventSection.readFromParcel(paramParcel);
    return localEventSection;
  }
  
  public EventSection a(JSONObject paramJSONObject)
  {
    EventSection localEventSection = new EventSection();
    localEventSection.readFromJson(paramJSONObject);
    return localEventSection;
  }
  
  public EventSection[] a(int paramInt)
  {
    return new EventSection[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */