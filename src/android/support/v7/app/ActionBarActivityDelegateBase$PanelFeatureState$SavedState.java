package android.support.v7.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class ActionBarActivityDelegateBase$PanelFeatureState$SavedState
  implements Parcelable
{
  public static final Parcelable.Creator<SavedState> CREATOR = new m();
  int featureId;
  boolean isOpen;
  Bundle menuState;
  
  private static SavedState readFromParcel(Parcel paramParcel)
  {
    boolean bool = true;
    SavedState localSavedState = new SavedState();
    featureId = paramParcel.readInt();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      isOpen = bool;
      if (isOpen) {
        menuState = paramParcel.readBundle();
      }
      return localSavedState;
      bool = false;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(featureId);
    if (isOpen) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      if (isOpen) {
        paramParcel.writeBundle(menuState);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.ActionBarActivityDelegateBase.PanelFeatureState.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */