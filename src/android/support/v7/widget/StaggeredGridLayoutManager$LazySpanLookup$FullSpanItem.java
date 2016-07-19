package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.Arrays;

class StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem
  implements Parcelable
{
  public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator()
  {
    public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem a(Parcel paramAnonymousParcel)
    {
      return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem(paramAnonymousParcel);
    }
    
    public StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[] a(int paramAnonymousInt)
    {
      return new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[paramAnonymousInt];
    }
  };
  int a;
  int b;
  int[] c;
  boolean d;
  
  public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem() {}
  
  public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readInt();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      d = bool;
      int i = paramParcel.readInt();
      if (i > 0)
      {
        c = new int[i];
        paramParcel.readIntArray(c);
      }
      return;
      bool = false;
    }
  }
  
  int a(int paramInt)
  {
    if (c == null) {
      return 0;
    }
    return c[paramInt];
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "FullSpanItem{mPosition=" + a + ", mGapDir=" + b + ", mHasUnwantedGapAfter=" + d + ", mGapPerSpan=" + Arrays.toString(c) + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeInt(b);
    if (d) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      if ((c == null) || (c.length <= 0)) {
        break;
      }
      paramParcel.writeInt(c.length);
      paramParcel.writeIntArray(c);
      return;
    }
    paramParcel.writeInt(0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */