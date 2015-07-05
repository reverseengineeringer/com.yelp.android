package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bf
  extends JsonParser.DualCreator<MenuItem>
{
  public MenuItem a(Parcel paramParcel)
  {
    MenuItem localMenuItem = new MenuItem();
    localMenuItem.readFromParcel(paramParcel);
    return localMenuItem;
  }
  
  public MenuItem a(JSONObject paramJSONObject)
  {
    MenuItem localMenuItem = new MenuItem();
    localMenuItem.readFromJson(paramJSONObject);
    return localMenuItem;
  }
  
  public MenuItem[] a(int paramInt)
  {
    return new MenuItem[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */