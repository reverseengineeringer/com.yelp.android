package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class i
  implements Parcelable.Creator<ActionMenuPresenter.SavedState>
{
  public ActionMenuPresenter.SavedState a(Parcel paramParcel)
  {
    return new ActionMenuPresenter.SavedState(paramParcel);
  }
  
  public ActionMenuPresenter.SavedState[] a(int paramInt)
  {
    return new ActionMenuPresenter.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */