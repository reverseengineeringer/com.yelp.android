package android.support.v7.internal.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ba
  implements Parcelable.Creator<SpinnerCompat.SavedState>
{
  public SpinnerCompat.SavedState a(Parcel paramParcel)
  {
    return new SpinnerCompat.SavedState(paramParcel, null);
  }
  
  public SpinnerCompat.SavedState[] a(int paramInt)
  {
    return new SpinnerCompat.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */