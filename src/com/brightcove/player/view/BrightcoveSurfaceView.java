package com.brightcove.player.view;

import android.content.Context;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View.MeasureSpec;

public class BrightcoveSurfaceView
  extends SurfaceView
{
  private static final String TAG = BrightcoveSurfaceView.class.getSimpleName();
  private int videoHeight;
  private int videoWidth;
  
  public BrightcoveSurfaceView(Context paramContext)
  {
    super(paramContext);
  }
  
  public int getVideoHeight()
  {
    return videoHeight;
  }
  
  public int getVideoWidth()
  {
    return videoWidth;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Log.v(TAG, "onLayout: changed = " + paramBoolean + ", left = " + paramInt1 + ", top = " + paramInt2 + ", right = " + paramInt3 + ", bottom = " + paramInt4);
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    paramInt1 = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    paramInt2 = View.MeasureSpec.getMode(paramInt2);
    Log.v(TAG, "onMeasure: width = " + i + ", height = " + j + ", videoWidth = " + videoWidth + ", videoHeight = " + videoHeight + ", widthMode = " + LayoutUtil.getSpecMode(paramInt1) + ", heightMode = " + LayoutUtil.getSpecMode(paramInt2));
    paramInt1 = j;
    paramInt2 = i;
    if (videoWidth > 0)
    {
      paramInt1 = j;
      paramInt2 = i;
      if (videoHeight > 0)
      {
        if (videoWidth * j <= videoHeight * i) {
          break label201;
        }
        paramInt1 = videoHeight * i / videoWidth;
        paramInt2 = i;
      }
    }
    for (;;)
    {
      Log.v(TAG, "setMeasuredDimension: width = " + paramInt2 + ", height = " + paramInt1);
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      label201:
      paramInt1 = j;
      paramInt2 = i;
      if (videoWidth * j < videoHeight * i)
      {
        paramInt2 = videoWidth * j / videoHeight;
        paramInt1 = j;
      }
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Log.v(TAG, "onSizeChanged: width = " + paramInt1 + ", height = " + paramInt2 + ", oldw = " + paramInt3 + ", oldh = " + paramInt4);
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setVideoSize(int paramInt1, int paramInt2)
  {
    videoWidth = paramInt1;
    videoHeight = paramInt2;
    if ((paramInt1 != 0) && (paramInt2 != 0))
    {
      super.requestLayout();
      super.invalidate();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveSurfaceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */