package com.yelp.android.ui;

import android.opengl.GLSurfaceView.Renderer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

class g
  implements GLSurfaceView.Renderer
{
  public boolean a = false;
  private MonocleEngine b;
  
  public void onDrawFrame(GL10 paramGL10)
  {
    if (a)
    {
      b.FlushTextures();
      a = false;
    }
    paramGL10 = b.Draw();
    if (paramGL10 != null) {
      paramGL10.a();
    }
  }
  
  public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
  {
    b.Resize(paramInt1, paramInt2);
  }
  
  public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
  {
    b = new MonocleEngine();
    b.Init();
    b.FlushTextures();
    a = false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */