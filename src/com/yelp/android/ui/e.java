package com.yelp.android.ui;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.view.SurfaceHolder;

class e
  extends GLSurfaceView
{
  boolean a = false;
  
  public e(Context paramContext)
  {
    super(paramContext);
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (!a) {
      m.a(this, 1004);
    }
    super.surfaceCreated(paramSurfaceHolder);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */