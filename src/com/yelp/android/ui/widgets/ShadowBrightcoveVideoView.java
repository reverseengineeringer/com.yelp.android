package com.yelp.android.ui.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.SurfaceView;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.view.BrightcoveVideoView;

public class ShadowBrightcoveVideoView
  extends BrightcoveVideoView
{
  private ShadowView a;
  
  public ShadowBrightcoveVideoView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ShadowBrightcoveVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ShadowBrightcoveVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    int i = getVideoDisplay().getSurfaceView().getWidth();
    int j = getVideoDisplay().getSurfaceView().getHeight();
    if (a != null) {
      a.a(i, j);
    }
  }
  
  public void setShadowView(ShadowView paramShadowView)
  {
    a = paramShadowView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ShadowBrightcoveVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */