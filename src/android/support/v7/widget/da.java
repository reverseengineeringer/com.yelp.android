package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class da
  implements Parcelable.Creator<StaggeredGridLayoutManager.SavedState>
{
  public StaggeredGridLayoutManager.SavedState a(Parcel paramParcel)
  {
    return new StaggeredGridLayoutManager.SavedState(paramParcel);
  }
  
  public StaggeredGridLayoutManager.SavedState[] a(int paramInt)
  {
    return new StaggeredGridLayoutManager.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */