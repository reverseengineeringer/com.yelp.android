package com.google.android.gms.common.images;

import android.annotation.TargetApi;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

@TargetApi(14)
final class ImageManager$zze
  implements ComponentCallbacks2
{
  private final ImageManager.zzb zzajE;
  
  public ImageManager$zze(ImageManager.zzb paramzzb)
  {
    zzajE = paramzzb;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory()
  {
    zzajE.evictAll();
  }
  
  public void onTrimMemory(int paramInt)
  {
    if (paramInt >= 60) {
      zzajE.evictAll();
    }
    while (paramInt < 20) {
      return;
    }
    zzajE.trimToSize(zzajE.size() / 2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */