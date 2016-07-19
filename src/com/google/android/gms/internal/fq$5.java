package com.google.android.gms.internal;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import com.google.android.gms.ads.internal.formats.c;
import java.io.IOException;
import java.io.InputStream;

class fq$5
  implements hi.a<c>
{
  fq$5(fq paramfq, boolean paramBoolean, double paramDouble, String paramString) {}
  
  public c a()
  {
    d.a(2, a);
    return null;
  }
  
  public c a(InputStream paramInputStream)
  {
    try
    {
      paramInputStream = kb.a(paramInputStream);
      if (paramInputStream == null)
      {
        d.a(2, a);
        return null;
      }
    }
    catch (IOException paramInputStream)
    {
      for (;;)
      {
        paramInputStream = null;
      }
      paramInputStream = BitmapFactory.decodeByteArray(paramInputStream, 0, paramInputStream.length);
      if (paramInputStream == null)
      {
        d.a(2, a);
        return null;
      }
      paramInputStream.setDensity((int)(160.0D * b));
    }
    return new c(new BitmapDrawable(Resources.getSystem(), paramInputStream), Uri.parse(c), b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fq.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */