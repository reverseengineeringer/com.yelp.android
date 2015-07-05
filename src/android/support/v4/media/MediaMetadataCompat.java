package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import com.yelp.android.e.a;
import java.util.Iterator;
import java.util.Set;

public final class MediaMetadataCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new e();
  private static final a<String, Integer> METADATA_KEYS_TYPE = new a();
  public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
  public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
  public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
  public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
  public static final String METADATA_KEY_ART = "android.media.metadata.ART";
  public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
  public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
  public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
  public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
  public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
  public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
  public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
  public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
  public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
  public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
  public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
  public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
  public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
  public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
  public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
  public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
  public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
  public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
  public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
  public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
  public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
  public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
  private static final int METADATA_TYPE_BITMAP = 2;
  private static final int METADATA_TYPE_LONG = 0;
  private static final int METADATA_TYPE_RATING = 3;
  private static final int METADATA_TYPE_TEXT = 1;
  private static final String[] PREFERRED_BITMAP_ORDER;
  private static final String[] PREFERRED_DESCRIPTION_ORDER;
  private static final String[] PREFERRED_URI_ORDER;
  private static final String TAG = "MediaMetadata";
  private final Bundle mBundle;
  private MediaDescriptionCompat mDescription;
  private Object mMetadataObj;
  
  static
  {
    METADATA_KEYS_TYPE.put("android.media.metadata.TITLE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.ARTIST", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DURATION", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.AUTHOR", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.WRITER", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.COMPOSER", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.COMPILATION", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DATE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.YEAR", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.GENRE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.TRACK_NUMBER", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.NUM_TRACKS", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISC_NUMBER", Integer.valueOf(0));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM_ARTIST", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.ART", Integer.valueOf(2));
    METADATA_KEYS_TYPE.put("android.media.metadata.ART_URI", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM_ART", Integer.valueOf(2));
    METADATA_KEYS_TYPE.put("android.media.metadata.ALBUM_ART_URI", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.USER_RATING", Integer.valueOf(3));
    METADATA_KEYS_TYPE.put("android.media.metadata.RATING", Integer.valueOf(3));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_TITLE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_SUBTITLE", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_DESCRIPTION", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_ICON", Integer.valueOf(2));
    METADATA_KEYS_TYPE.put("android.media.metadata.DISPLAY_ICON_URI", Integer.valueOf(1));
    METADATA_KEYS_TYPE.put("android.media.metadata.MEDIA_ID", Integer.valueOf(1));
    PREFERRED_DESCRIPTION_ORDER = new String[] { "android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER" };
    PREFERRED_BITMAP_ORDER = new String[] { "android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART" };
    PREFERRED_URI_ORDER = new String[] { "android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI" };
  }
  
  private MediaMetadataCompat(Bundle paramBundle)
  {
    mBundle = new Bundle(paramBundle);
  }
  
  private MediaMetadataCompat(Parcel paramParcel)
  {
    mBundle = paramParcel.readBundle();
  }
  
  public static MediaMetadataCompat fromMediaMetadata(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
      return null;
    }
    Object localObject = new f();
    Iterator localIterator = g.a(paramObject).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Integer localInteger = (Integer)METADATA_KEYS_TYPE.get(str);
      if (localInteger != null) {
        switch (localInteger.intValue())
        {
        default: 
          break;
        case 0: 
          ((f)localObject).a(str, g.b(paramObject, str));
          break;
        case 2: 
          ((f)localObject).a(str, g.a(paramObject, str));
          break;
        case 3: 
          ((f)localObject).a(str, RatingCompat.fromRating(g.c(paramObject, str)));
          break;
        case 1: 
          ((f)localObject).a(str, g.d(paramObject, str));
        }
      }
    }
    localObject = ((f)localObject).a();
    mMetadataObj = paramObject;
    return (MediaMetadataCompat)localObject;
  }
  
  public boolean containsKey(String paramString)
  {
    return mBundle.containsKey(paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bitmap getBitmap(String paramString)
  {
    try
    {
      paramString = (Bitmap)mBundle.getParcelable(paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", paramString);
    }
    return null;
  }
  
  public Bundle getBundle()
  {
    return mBundle;
  }
  
  public MediaDescriptionCompat getDescription()
  {
    b localb = null;
    if (mDescription != null) {
      return mDescription;
    }
    String str = getString("android.media.metadata.MEDIA_ID");
    CharSequence[] arrayOfCharSequence = new CharSequence[3];
    Object localObject1 = getText("android.media.metadata.DISPLAY_TITLE");
    int i;
    label73:
    label97:
    label99:
    int j;
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      arrayOfCharSequence[0] = localObject1;
      arrayOfCharSequence[1] = getText("android.media.metadata.DISPLAY_SUBTITLE");
      arrayOfCharSequence[2] = getText("android.media.metadata.DISPLAY_DESCRIPTION");
      i = 0;
      if (i >= PREFERRED_BITMAP_ORDER.length) {
        break label285;
      }
      localObject1 = getBitmap(PREFERRED_BITMAP_ORDER[i]);
      if (localObject1 != null)
      {
        i = 0;
        Object localObject2 = localb;
        if (i < PREFERRED_URI_ORDER.length)
        {
          localObject2 = getString(PREFERRED_URI_ORDER[i]);
          if (TextUtils.isEmpty((CharSequence)localObject2)) {
            break label278;
          }
          localObject2 = Uri.parse((String)localObject2);
        }
        localb = new b();
        localb.a(str);
        localb.a(arrayOfCharSequence[0]);
        localb.b(arrayOfCharSequence[1]);
        localb.c(arrayOfCharSequence[2]);
        localb.a((Bitmap)localObject1);
        localb.a((Uri)localObject2);
        mDescription = localb.a();
        return mDescription;
      }
    }
    else
    {
      j = 0;
      i = 0;
      label218:
      if ((i < arrayOfCharSequence.length) && (j < PREFERRED_DESCRIPTION_ORDER.length))
      {
        localObject1 = getText(PREFERRED_DESCRIPTION_ORDER[j]);
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          break label291;
        }
        int k = i + 1;
        arrayOfCharSequence[i] = localObject1;
        i = k;
      }
    }
    label278:
    label285:
    label291:
    for (;;)
    {
      j += 1;
      break label218;
      break;
      i += 1;
      break label73;
      i += 1;
      break label99;
      localObject1 = null;
      break label97;
    }
  }
  
  public long getLong(String paramString)
  {
    return mBundle.getLong(paramString, 0L);
  }
  
  public Object getMediaMetadata()
  {
    if ((mMetadataObj != null) || (Build.VERSION.SDK_INT < 21)) {
      return mMetadataObj;
    }
    Object localObject = h.a();
    Iterator localIterator = keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Integer localInteger = (Integer)METADATA_KEYS_TYPE.get(str);
      if (localInteger != null) {
        switch (localInteger.intValue())
        {
        default: 
          break;
        case 0: 
          h.a(localObject, str, getLong(str));
          break;
        case 2: 
          h.a(localObject, str, getBitmap(str));
          break;
        case 3: 
          h.a(localObject, str, getRating(str).getRating());
          break;
        case 1: 
          h.a(localObject, str, getText(str));
        }
      }
    }
    mMetadataObj = h.a(localObject);
    return mMetadataObj;
  }
  
  public RatingCompat getRating(String paramString)
  {
    try
    {
      paramString = (RatingCompat)mBundle.getParcelable(paramString);
      return paramString;
    }
    catch (Exception paramString)
    {
      Log.w("MediaMetadata", "Failed to retrieve a key as Rating.", paramString);
    }
    return null;
  }
  
  public String getString(String paramString)
  {
    paramString = mBundle.getCharSequence(paramString);
    if (paramString != null) {
      return paramString.toString();
    }
    return null;
  }
  
  public CharSequence getText(String paramString)
  {
    return mBundle.getCharSequence(paramString);
  }
  
  public Set<String> keySet()
  {
    return mBundle.keySet();
  }
  
  public int size()
  {
    return mBundle.size();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(mBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaMetadataCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */