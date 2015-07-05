package com.yelp.android.ui.util;

import android.graphics.Bitmap;
import android.util.Pair;
import java.io.File;

final class aj
  implements al
{
  private final al a;
  private final ImageInputHelper b;
  
  public aj(ImageInputHelper paramImageInputHelper, al paramal)
  {
    b = paramImageInputHelper;
    a = paramal;
  }
  
  public void a(File paramFile)
  {
    a.a(paramFile);
    if (paramFile.exists()) {
      paramFile.delete();
    }
  }
  
  public boolean a(Bitmap paramBitmap, File paramFile, ImageInputHelper.ImageSource paramImageSource)
  {
    Pair localPair = Pair.create(paramFile, paramBitmap);
    if (a.a(paramBitmap, paramFile, paramImageSource)) {
      b.a();
    }
    ImageInputHelper.a(b, localPair);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */