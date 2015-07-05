package com.google.android.gms.internal;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.io.InputStream;

class fn$2
  implements gn.a<Drawable>
{
  fn$2(fn paramfn, boolean paramBoolean) {}
  
  public Drawable a(InputStream paramInputStream)
  {
    try
    {
      paramInputStream = lh.d(paramInputStream);
      if (paramInputStream == null)
      {
        ur.a(2, us);
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
        ur.a(2, us);
        return null;
      }
    }
    return new BitmapDrawable(Resources.getSystem(), paramInputStream);
  }
  
  public Drawable cP()
  {
    ur.a(2, us);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fn.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */