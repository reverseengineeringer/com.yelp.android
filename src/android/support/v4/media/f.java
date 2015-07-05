package android.support.v4.media;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.yelp.android.e.a;

public final class f
{
  private final Bundle a = new Bundle();
  
  public MediaMetadataCompat a()
  {
    return new MediaMetadataCompat(a, null);
  }
  
  public f a(String paramString, long paramLong)
  {
    if ((MediaMetadataCompat.access$200().containsKey(paramString)) && (((Integer)MediaMetadataCompat.access$200().get(paramString)).intValue() != 0)) {
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a long");
    }
    a.putLong(paramString, paramLong);
    return this;
  }
  
  public f a(String paramString, Bitmap paramBitmap)
  {
    if ((MediaMetadataCompat.access$200().containsKey(paramString)) && (((Integer)MediaMetadataCompat.access$200().get(paramString)).intValue() != 2)) {
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a Bitmap");
    }
    a.putParcelable(paramString, paramBitmap);
    return this;
  }
  
  public f a(String paramString, RatingCompat paramRatingCompat)
  {
    if ((MediaMetadataCompat.access$200().containsKey(paramString)) && (((Integer)MediaMetadataCompat.access$200().get(paramString)).intValue() != 3)) {
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a Rating");
    }
    a.putParcelable(paramString, paramRatingCompat);
    return this;
  }
  
  public f a(String paramString, CharSequence paramCharSequence)
  {
    if ((MediaMetadataCompat.access$200().containsKey(paramString)) && (((Integer)MediaMetadataCompat.access$200().get(paramString)).intValue() != 1)) {
      throw new IllegalArgumentException("The " + paramString + " key cannot be used to put a CharSequence");
    }
    a.putCharSequence(paramString, paramCharSequence);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */