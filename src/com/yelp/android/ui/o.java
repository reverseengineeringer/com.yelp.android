package com.yelp.android.ui;

import android.content.Context;
import android.hardware.Camera;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import com.yelp.android.ui.util.cr;
import java.io.IOException;

class o
  extends SurfaceView
  implements SurfaceHolder.Callback
{
  SurfaceHolder a = getHolder();
  private Camera b;
  private final MonocleEngine c;
  private int d;
  private boolean e;
  
  o(Context paramContext)
  {
    super(paramContext);
    a.addCallback(this);
    a.setType(3);
    c = new MonocleEngine();
    d = 0;
  }
  
  public boolean a(Camera paramCamera)
  {
    b = paramCamera;
    if ((e) && (paramCamera != null)) {}
    try
    {
      b.setPreviewDisplay(a);
      b.startPreview();
      return true;
    }
    catch (IOException paramCamera)
    {
      b = null;
    }
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    c.Touch((int)paramMotionEvent.getX(), d - (int)paramMotionEvent.getY());
    return true;
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    d = paramInt3;
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    e = true;
    if ((b != null) && (!a(b))) {
      cr.a(2131166101, 1);
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    e = false;
    if (b != null)
    {
      b.stopPreview();
      b = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */