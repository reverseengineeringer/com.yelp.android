package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public final class PlaybackStateCompat$CustomAction
  implements Parcelable
{
  public static final Parcelable.Creator<CustomAction> CREATOR = new i();
  private final String mAction;
  private final Bundle mExtras;
  private final int mIcon;
  private final CharSequence mName;
  
  private PlaybackStateCompat$CustomAction(Parcel paramParcel)
  {
    mAction = paramParcel.readString();
    mName = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    mIcon = paramParcel.readInt();
    mExtras = paramParcel.readBundle();
  }
  
  private PlaybackStateCompat$CustomAction(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle)
  {
    mAction = paramString;
    mName = paramCharSequence;
    mIcon = paramInt;
    mExtras = paramBundle;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAction()
  {
    return mAction;
  }
  
  public Bundle getExtras()
  {
    return mExtras;
  }
  
  public int getIcon()
  {
    return mIcon;
  }
  
  public CharSequence getName()
  {
    return mName;
  }
  
  public String toString()
  {
    return "Action:mName='" + mName + ", mIcon=" + mIcon + ", mExtras=" + mExtras;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mAction);
    TextUtils.writeToParcel(mName, paramParcel, paramInt);
    paramParcel.writeInt(mIcon);
    paramParcel.writeBundle(mExtras);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat.CustomAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */