package com.yelp.android.ui.widgets;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

public class PieProgress$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new q();
  private int mMax;
  private int mProgress;
  
  private PieProgress$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    mProgress = paramParcel.readInt();
    mMax = paramParcel.readInt();
  }
  
  public PieProgress$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(mProgress);
    paramParcel.writeInt(mMax);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.PieProgress.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */