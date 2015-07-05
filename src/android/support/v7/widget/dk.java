package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class dk
  implements Parcelable.Creator<Toolbar.SavedState>
{
  public Toolbar.SavedState a(Parcel paramParcel)
  {
    return new Toolbar.SavedState(paramParcel);
  }
  
  public Toolbar.SavedState[] a(int paramInt)
  {
    return new Toolbar.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */