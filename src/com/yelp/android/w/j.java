package com.yelp.android.w;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

public class j
  extends a<InputStream>
{
  public j(AssetManager paramAssetManager, String paramString)
  {
    super(paramAssetManager, paramString);
  }
  
  protected void a(InputStream paramInputStream)
    throws IOException
  {
    paramInputStream.close();
  }
  
  protected InputStream b(AssetManager paramAssetManager, String paramString)
    throws IOException
  {
    return paramAssetManager.open(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */