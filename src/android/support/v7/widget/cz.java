package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class cz
  implements Parcelable.Creator<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem>
{
  public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem a(Parcel paramParcel)
  {
    return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem(paramParcel);
  }
  
  public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[] a(int paramInt)
  {
    return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */