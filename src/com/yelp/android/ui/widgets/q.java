package com.yelp.android.ui.widgets;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class q
  implements Parcelable.Creator<PieProgress.SavedState>
{
  public PieProgress.SavedState a(Parcel paramParcel)
  {
    return new PieProgress.SavedState(paramParcel, null);
  }
  
  public PieProgress.SavedState[] a(int paramInt)
  {
    return new PieProgress.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */