package com.google.android.gms.analytics.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Command$1
  implements Parcelable.Creator<Command>
{
  @Deprecated
  public Command a(Parcel paramParcel)
  {
    return new Command(paramParcel);
  }
  
  @Deprecated
  public Command[] a(int paramInt)
  {
    return new Command[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.Command.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */