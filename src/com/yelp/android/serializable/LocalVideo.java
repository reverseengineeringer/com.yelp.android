package com.yelp.android.serializable;

import com.yelp.android.ui.util.as;
import com.yelp.android.util.t;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class LocalVideo
  extends _LocalVideo
{
  public static final JsonParser.DualCreator<LocalVideo> CREATOR = new LocalVideo.1();
  
  public LocalVideo() {}
  
  public LocalVideo(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramString1, paramString2, paramInt1, paramInt2, paramInt3);
  }
  
  public static LocalVideo a(String paramString1, String paramString2)
  {
    t localt = new t(paramString1);
    int k = localt.a();
    if (k < 3000)
    {
      as.a(2131166786, 1);
      localt.release();
      return null;
    }
    int i;
    if (localt.e()) {
      i = localt.d();
    }
    for (int j = localt.c();; j = localt.d())
    {
      localt.release();
      return new LocalVideo(paramString1, paramString2, k, i, j);
      i = localt.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.LocalVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */