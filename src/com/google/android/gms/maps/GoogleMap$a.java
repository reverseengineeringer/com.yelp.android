package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.b.a;

final class GoogleMap$a
  extends b.a
{
  private final GoogleMap.CancelableCallback akE;
  
  GoogleMap$a(GoogleMap.CancelableCallback paramCancelableCallback)
  {
    akE = paramCancelableCallback;
  }
  
  public void onCancel()
  {
    akE.onCancel();
  }
  
  public void onFinish()
  {
    akE.onFinish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */