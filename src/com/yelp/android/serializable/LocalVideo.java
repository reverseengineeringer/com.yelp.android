package com.yelp.android.serializable;

import com.yelp.android.ui.util.cr;
import com.yelp.android.util.aj;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class LocalVideo
  extends _LocalVideo
{
  public static final JsonParser.DualCreator<LocalVideo> CREATOR = new bb();
  
  public LocalVideo() {}
  
  public LocalVideo(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramString1, paramString2, paramInt1, paramInt2, paramInt3);
  }
  
  public static LocalVideo fromFile(String paramString1, String paramString2)
  {
    aj localaj = new aj(paramString1);
    int k = localaj.a();
    if (k < 3000)
    {
      cr.a(2131166823, 1);
      localaj.release();
      return null;
    }
    int i;
    if (localaj.e()) {
      i = localaj.d();
    }
    for (int j = localaj.c();; j = localaj.d())
    {
      localaj.release();
      return new LocalVideo(paramString1, paramString2, k, i, j);
      i = localaj.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.LocalVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */