package android.support.v7.internal.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable.Creator<AbsSpinnerCompat.SavedState>
{
  public AbsSpinnerCompat.SavedState a(Parcel paramParcel)
  {
    return new AbsSpinnerCompat.SavedState(paramParcel);
  }
  
  public AbsSpinnerCompat.SavedState[] a(int paramInt)
  {
    return new AbsSpinnerCompat.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */