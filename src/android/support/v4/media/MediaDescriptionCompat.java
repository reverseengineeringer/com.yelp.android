package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public final class MediaDescriptionCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();
  private final CharSequence mDescription;
  private Object mDescriptionObj;
  private final Bundle mExtras;
  private final Bitmap mIcon;
  private final Uri mIconUri;
  private final String mMediaId;
  private final CharSequence mSubtitle;
  private final CharSequence mTitle;
  
  private MediaDescriptionCompat(Parcel paramParcel)
  {
    mMediaId = paramParcel.readString();
    mTitle = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    mSubtitle = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    mDescription = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    mIcon = ((Bitmap)paramParcel.readParcelable(null));
    mIconUri = ((Uri)paramParcel.readParcelable(null));
    mExtras = paramParcel.readBundle();
  }
  
  private MediaDescriptionCompat(String paramString, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Uri paramUri, Bundle paramBundle)
  {
    mMediaId = paramString;
    mTitle = paramCharSequence1;
    mSubtitle = paramCharSequence2;
    mDescription = paramCharSequence3;
    mIcon = paramBitmap;
    mIconUri = paramUri;
    mExtras = paramBundle;
  }
  
  public static MediaDescriptionCompat fromMediaDescription(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
      return null;
    }
    Object localObject = new b();
    ((b)localObject).a(c.a(paramObject));
    ((b)localObject).a(c.b(paramObject));
    ((b)localObject).b(c.c(paramObject));
    ((b)localObject).c(c.d(paramObject));
    ((b)localObject).a(c.e(paramObject));
    ((b)localObject).a(c.f(paramObject));
    ((b)localObject).a(c.g(paramObject));
    localObject = ((b)localObject).a();
    mDescriptionObj = paramObject;
    return (MediaDescriptionCompat)localObject;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public CharSequence getDescription()
  {
    return mDescription;
  }
  
  public Bundle getExtras()
  {
    return mExtras;
  }
  
  public Bitmap getIconBitmap()
  {
    return mIcon;
  }
  
  public Uri getIconUri()
  {
    return mIconUri;
  }
  
  public Object getMediaDescription()
  {
    if ((mDescriptionObj != null) || (Build.VERSION.SDK_INT < 21)) {
      return mDescriptionObj;
    }
    Object localObject = d.a();
    d.a(localObject, mMediaId);
    d.a(localObject, mTitle);
    d.b(localObject, mSubtitle);
    d.c(localObject, mDescription);
    d.a(localObject, mIcon);
    d.a(localObject, mIconUri);
    d.a(localObject, mExtras);
    mDescriptionObj = d.a(localObject);
    return mDescriptionObj;
  }
  
  public String getMediaId()
  {
    return mMediaId;
  }
  
  public CharSequence getSubtitle()
  {
    return mSubtitle;
  }
  
  public CharSequence getTitle()
  {
    return mTitle;
  }
  
  public String toString()
  {
    return mTitle + ", " + mSubtitle + ", " + mDescription;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      paramParcel.writeString(mMediaId);
      TextUtils.writeToParcel(mTitle, paramParcel, paramInt);
      TextUtils.writeToParcel(mSubtitle, paramParcel, paramInt);
      TextUtils.writeToParcel(mDescription, paramParcel, paramInt);
      paramParcel.writeParcelable(mIcon, paramInt);
      paramParcel.writeParcelable(mIconUri, paramInt);
      paramParcel.writeBundle(mExtras);
      return;
    }
    c.a(getMediaDescription(), paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaDescriptionCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */