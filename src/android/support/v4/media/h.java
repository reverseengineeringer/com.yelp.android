package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaMetadata.Builder;
import android.media.Rating;

public class h
{
  public static Object a()
  {
    return new MediaMetadata.Builder();
  }
  
  public static Object a(Object paramObject)
  {
    return ((MediaMetadata.Builder)paramObject).build();
  }
  
  public static void a(Object paramObject, String paramString, long paramLong)
  {
    ((MediaMetadata.Builder)paramObject).putLong(paramString, paramLong);
  }
  
  public static void a(Object paramObject, String paramString, Bitmap paramBitmap)
  {
    ((MediaMetadata.Builder)paramObject).putBitmap(paramString, paramBitmap);
  }
  
  public static void a(Object paramObject, String paramString, CharSequence paramCharSequence)
  {
    ((MediaMetadata.Builder)paramObject).putText(paramString, paramCharSequence);
  }
  
  public static void a(Object paramObject1, String paramString, Object paramObject2)
  {
    ((MediaMetadata.Builder)paramObject1).putRating(paramString, (Rating)paramObject2);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */