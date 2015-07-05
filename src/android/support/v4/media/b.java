package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;

public final class b
{
  private String a;
  private CharSequence b;
  private CharSequence c;
  private CharSequence d;
  private Bitmap e;
  private Uri f;
  private Bundle g;
  
  public MediaDescriptionCompat a()
  {
    return new MediaDescriptionCompat(a, b, c, d, e, f, g, null);
  }
  
  public b a(Bitmap paramBitmap)
  {
    e = paramBitmap;
    return this;
  }
  
  public b a(Uri paramUri)
  {
    f = paramUri;
    return this;
  }
  
  public b a(Bundle paramBundle)
  {
    g = paramBundle;
    return this;
  }
  
  public b a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    return this;
  }
  
  public b a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public b b(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
    return this;
  }
  
  public b c(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */