package com.yelp.android.r;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;

public class d
  extends a<ParcelFileDescriptor>
{
  public d(AssetManager paramAssetManager, String paramString)
  {
    super(paramAssetManager, paramString);
  }
  
  protected void a(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    paramParcelFileDescriptor.close();
  }
  
  protected ParcelFileDescriptor b(AssetManager paramAssetManager, String paramString)
  {
    return paramAssetManager.openFd(paramString).getParcelFileDescriptor();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.r.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */