package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class b
  extends JsonParser.DualCreator<AlertAction>
{
  public AlertAction a(Parcel paramParcel)
  {
    AlertAction localAlertAction = new AlertAction();
    localAlertAction.readFromParcel(paramParcel);
    boolean[] arrayOfBoolean = new boolean[1];
    paramParcel.readBooleanArray(arrayOfBoolean);
    AlertAction.access$002(localAlertAction, arrayOfBoolean[0]);
    return localAlertAction;
  }
  
  public AlertAction a(JSONObject paramJSONObject)
  {
    AlertAction localAlertAction = new AlertAction();
    localAlertAction.readFromJson(paramJSONObject);
    return localAlertAction;
  }
  
  public AlertAction[] a(int paramInt)
  {
    return new AlertAction[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */