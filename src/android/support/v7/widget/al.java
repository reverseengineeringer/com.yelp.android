package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class al
  implements Parcelable.Creator<LinearLayoutManager.SavedState>
{
  public LinearLayoutManager.SavedState a(Parcel paramParcel)
  {
    return new LinearLayoutManager.SavedState(paramParcel);
  }
  
  public LinearLayoutManager.SavedState[] a(int paramInt)
  {
    return new LinearLayoutManager.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */