package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.TextureView;

@TargetApi(14)
public abstract class h
  extends TextureView
{
  public h(Context paramContext)
  {
    super(paramContext);
  }
  
  public abstract String a();
  
  public abstract void a(float paramFloat);
  
  public abstract void a(int paramInt);
  
  public abstract void a(g paramg);
  
  public abstract void b();
  
  public abstract void c();
  
  public abstract void d();
  
  public abstract void e();
  
  public abstract void f();
  
  public abstract int getCurrentPosition();
  
  public abstract int getDuration();
  
  public abstract int getVideoHeight();
  
  public abstract int getVideoWidth();
  
  public abstract void setMimeType(String paramString);
  
  public abstract void setVideoPath(String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */