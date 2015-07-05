package com.yelp.android.ui.activities.camera;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.ShutterCallback;
import android.hardware.Camera.Size;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import com.yelp.android.appdata.BaseYelpApplication;
import java.io.IOException;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class CameraWrangler
  implements Camera.AutoFocusCallback, Camera.PictureCallback, Camera.ShutterCallback, SurfaceHolder.Callback
{
  private int a;
  private final Display b;
  private final List<a> c;
  private final Handler d;
  private Camera e;
  private boolean f;
  private final OrientationEventListener g;
  private int h;
  private final Runnable i = new c(this);
  private final Runnable j = new d(this);
  
  public CameraWrangler(int paramInt, Display paramDisplay)
  {
    a = paramInt;
    b = paramDisplay;
    c = new LinkedList();
    d = new Handler();
    g = new g(BaseYelpApplication.z(), 3, this);
  }
  
  public static int a(int paramInt1, int paramInt2)
  {
    Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
    Camera.getCameraInfo(paramInt2, localCameraInfo);
    if (facing == 1) {
      return (360 - (orientation + paramInt1) % 360) % 360;
    }
    return (orientation - paramInt1 + 360) % 360;
  }
  
  public static int a(Display paramDisplay, int paramInt)
  {
    int m = 0;
    int k = m;
    switch (paramDisplay.getRotation())
    {
    default: 
      k = m;
    }
    for (;;)
    {
      return a(k, paramInt);
      k = 90;
      continue;
      k = 180;
      continue;
      k = 270;
    }
  }
  
  private void a(SurfaceHolder paramSurfaceHolder)
  {
    Camera.Parameters localParameters = e.getParameters();
    Object localObject1 = null;
    Iterator localIterator = localParameters.getSupportedPictureSizes().iterator();
    Camera.Size localSize;
    if (localIterator.hasNext())
    {
      localSize = (Camera.Size)localIterator.next();
      localObject2 = localSize;
      if (localObject1 != null) {
        if (height * width <= height * width) {
          break label180;
        }
      }
    }
    label180:
    for (Object localObject2 = localSize;; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      localParameters.setPictureSize(width, height);
      h = a(b, a);
      localParameters.setRotation(h);
      e.setParameters(localParameters);
      e.setDisplayOrientation(a(b, a));
      e.setPreviewDisplay(paramSurfaceHolder);
      e.startPreview();
      f = true;
      d.post(j);
      return;
    }
  }
  
  public static boolean a(Camera paramCamera)
  {
    paramCamera = paramCamera.getParameters().getFocusMode();
    return (TextUtils.equals(paramCamera, "auto")) || (TextUtils.equals(paramCamera, "macro"));
  }
  
  public int a()
  {
    return a;
  }
  
  public void a(int paramInt, SurfaceHolder paramSurfaceHolder)
  {
    if (a != paramInt) {}
    for (int k = 1;; k = 0)
    {
      a = paramInt;
      boolean bool = f;
      if ((k != 0) && (e != null)) {
        c();
      }
      if ((k != 0) && (bool))
      {
        e = Camera.open(paramInt);
        a(paramSurfaceHolder);
      }
      return;
    }
  }
  
  public void a(SurfaceView paramSurfaceView)
  {
    c.clear();
  }
  
  public void a(SurfaceView paramSurfaceView, a parama)
  {
    paramSurfaceView.getHolder().addCallback(this);
    c.add(parama);
  }
  
  public Camera.Size b()
  {
    Object localObject;
    if (e == null) {
      localObject = null;
    }
    Camera.Size localSize;
    do
    {
      return (Camera.Size)localObject;
      localSize = e.getParameters().getPreviewSize();
      if (h == 90) {
        break;
      }
      localObject = localSize;
    } while (h != 270);
    int k = height;
    height = width;
    width = k;
    return localSize;
  }
  
  public void c()
  {
    if (e != null)
    {
      e.release();
      e = null;
    }
    g.disable();
    f = false;
    d.removeCallbacks(i);
    d.removeCallbacks(j);
  }
  
  public void d()
  {
    if (e != null)
    {
      if (!a(e)) {
        break label68;
      }
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((a)localIterator.next()).c(this);
      }
      e.autoFocus(this);
    }
    for (;;)
    {
      f = false;
      return;
      label68:
      e.takePicture(this, null, this);
    }
  }
  
  public EnumSet<CameraWrangler.FlashMode> e()
  {
    Object localObject = e.getParameters().getSupportedFlashModes();
    if (localObject == null) {
      return EnumSet.of(CameraWrangler.FlashMode.AUTO);
    }
    EnumSet localEnumSet = EnumSet.noneOf(CameraWrangler.FlashMode.class);
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      CameraWrangler.FlashMode localFlashMode = CameraWrangler.FlashMode.fromString((String)((Iterator)localObject).next());
      if (localFlashMode != null) {
        localEnumSet.add(localFlashMode);
      }
    }
    return localEnumSet;
  }
  
  public b f()
  {
    return new e(this);
  }
  
  public CameraWrangler.FlashMode g()
  {
    if (e != null) {
      return CameraWrangler.FlashMode.fromString(e.getParameters().getFlashMode());
    }
    return CameraWrangler.FlashMode.OFF;
  }
  
  public void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    paramCamera.takePicture(this, null, this);
  }
  
  public void onPictureTaken(byte[] paramArrayOfByte, Camera paramCamera)
  {
    new h(this, null).execute(new byte[][] { paramArrayOfByte });
  }
  
  public void onShutter()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).d(this);
    }
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    e = Camera.open(a);
    try
    {
      a(paramSurfaceHolder);
      return;
    }
    catch (IOException paramSurfaceHolder)
    {
      c();
    }
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    if (e != null)
    {
      e.stopPreview();
      d.post(i);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.CameraWrangler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */