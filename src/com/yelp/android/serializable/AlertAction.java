package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class AlertAction
  extends _AlertAction
{
  public static final JsonParser.DualCreator<AlertAction> CREATOR = new b();
  private boolean mDisabled;
  
  public boolean isDisabled()
  {
    return (mDisabled) || (mPath == null);
  }
  
  public void setDisabled(boolean paramBoolean)
  {
    mDisabled = paramBoolean;
  }
  
  public void setPath(String paramString)
  {
    mPath = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBooleanArray(new boolean[] { mDisabled });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.AlertAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */