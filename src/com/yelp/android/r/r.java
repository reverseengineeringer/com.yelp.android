package com.yelp.android.r;

import android.content.res.AssetManager;
import java.io.InputStream;

public class r
  extends a<InputStream>
{
  public r(AssetManager paramAssetManager, String paramString)
  {
    super(paramAssetManager, paramString);
  }
  
  protected void a(InputStream paramInputStream)
  {
    paramInputStream.close();
  }
  
  protected InputStream b(AssetManager paramAssetManager, String paramString)
  {
    return paramAssetManager.open(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.r.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */