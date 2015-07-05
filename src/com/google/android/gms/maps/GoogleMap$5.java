package com.google.android.gms.maps;

import android.graphics.Bitmap;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.v.a;

class GoogleMap$5
  extends v.a
{
  GoogleMap$5(GoogleMap paramGoogleMap, GoogleMap.SnapshotReadyCallback paramSnapshotReadyCallback) {}
  
  public void h(d paramd)
  {
    akt.onSnapshotReady((Bitmap)e.f(paramd));
  }
  
  public void onSnapshotReady(Bitmap paramBitmap)
  {
    akt.onSnapshotReady(paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */