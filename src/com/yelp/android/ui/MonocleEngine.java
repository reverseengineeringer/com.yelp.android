package com.yelp.android.ui;

import android.util.Log;

public class MonocleEngine
{
  static
  {
    try
    {
      System.loadLibrary("monocle");
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      Log.e("ActivityMonocle", "JNI/C Library Not Loaded");
    }
  }
  
  public native int AddObject(byte[] paramArrayOfByte, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, ActivityMonocle.MonocleButton paramMonocleButton);
  
  public native void ClearObjects();
  
  public native ActivityMonocle.MonocleButton Draw();
  
  public native void FlushTextures();
  
  public native void Init();
  
  public native void Resize(int paramInt1, int paramInt2);
  
  public native void SetAzimuth(float paramFloat);
  
  public native void SetLocation(float paramFloat1, float paramFloat2);
  
  public native void SetRoll(float paramFloat);
  
  public native void SetRotation(float[] paramArrayOfFloat);
  
  public native void Touch(int paramInt1, int paramInt2);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.MonocleEngine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */