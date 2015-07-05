package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaMetadata;
import java.util.Set;

class g
{
  public static Bitmap a(Object paramObject, String paramString)
  {
    return ((MediaMetadata)paramObject).getBitmap(paramString);
  }
  
  public static Set<String> a(Object paramObject)
  {
    return ((MediaMetadata)paramObject).keySet();
  }
  
  public static long b(Object paramObject, String paramString)
  {
    return ((MediaMetadata)paramObject).getLong(paramString);
  }
  
  public static Object c(Object paramObject, String paramString)
  {
    return ((MediaMetadata)paramObject).getRating(paramString);
  }
  
  public static CharSequence d(Object paramObject, String paramString)
  {
    return ((MediaMetadata)paramObject).getText(paramString);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */