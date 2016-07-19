package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.Surface;
import java.io.FileDescriptor;
import java.io.IOException;

final class GifInfoHandle
{
  static final GifInfoHandle a = new GifInfoHandle();
  private volatile long b;
  
  static
  {
    h.a(null, "pl_droidsonroids_gif");
  }
  
  private GifInfoHandle() {}
  
  GifInfoHandle(AssetFileDescriptor paramAssetFileDescriptor, boolean paramBoolean)
    throws IOException
  {
    try
    {
      b = openFd(paramAssetFileDescriptor.getFileDescriptor(), paramAssetFileDescriptor.getStartOffset(), paramBoolean);
      return;
    }
    finally
    {
      paramAssetFileDescriptor.close();
    }
  }
  
  GifInfoHandle(String paramString, boolean paramBoolean)
    throws GifIOException
  {
    b = openFile(paramString, paramBoolean);
  }
  
  static GifInfoHandle a(ContentResolver paramContentResolver, Uri paramUri, boolean paramBoolean)
    throws IOException
  {
    if ("file".equals(paramUri.getScheme())) {
      return new GifInfoHandle(paramUri.getPath(), paramBoolean);
    }
    return new GifInfoHandle(paramContentResolver.openAssetFileDescriptor(paramUri, "r"), paramBoolean);
  }
  
  private static native void bindSurface(long paramLong, Surface paramSurface, long[] paramArrayOfLong, boolean paramBoolean);
  
  private static native void free(long paramLong);
  
  private static native int getCurrentFrameIndex(long paramLong);
  
  private static native int getCurrentLoop(long paramLong);
  
  private static native int getCurrentPosition(long paramLong);
  
  private static native int getDuration(long paramLong);
  
  private static native int getHeight(long paramLong);
  
  private static native int getLoopCount(long paramLong);
  
  private static native int getNativeErrorCode(long paramLong);
  
  private static native int getNumberOfFrames(long paramLong);
  
  private static native long[] getSavedState(long paramLong);
  
  private static native int getWidth(long paramLong);
  
  static native long openFd(FileDescriptor paramFileDescriptor, long paramLong, boolean paramBoolean)
    throws GifIOException;
  
  static native long openFile(String paramString, boolean paramBoolean)
    throws GifIOException;
  
  private static native void postUnbindSurface(long paramLong);
  
  private static native long renderFrame(long paramLong, Bitmap paramBitmap);
  
  private static native boolean reset(long paramLong);
  
  private static native long restoreRemainder(long paramLong);
  
  private static native int restoreSavedState(long paramLong, long[] paramArrayOfLong, Bitmap paramBitmap);
  
  private static native void saveRemainder(long paramLong);
  
  private static native void seekToFrame(long paramLong, int paramInt, Bitmap paramBitmap);
  
  private static native void seekToTime(long paramLong, int paramInt, Bitmap paramBitmap);
  
  private static native void setSpeedFactor(long paramLong, float paramFloat);
  
  int a(long[] paramArrayOfLong, Bitmap paramBitmap)
  {
    try
    {
      int i = restoreSavedState(b, paramArrayOfLong, paramBitmap);
      return i;
    }
    finally
    {
      paramArrayOfLong = finally;
      throw paramArrayOfLong;
    }
  }
  
  long a(Bitmap paramBitmap)
  {
    try
    {
      long l = renderFrame(b, paramBitmap);
      return l;
    }
    finally
    {
      paramBitmap = finally;
      throw paramBitmap;
    }
  }
  
  void a()
  {
    try
    {
      free(b);
      b = 0L;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void a(float paramFloat)
  {
    if ((paramFloat <= 0.0F) || (Float.isNaN(paramFloat))) {
      throw new IllegalArgumentException("Speed factor is not positive");
    }
    float f = paramFloat;
    if (paramFloat < 4.656613E-10F) {
      f = 4.656613E-10F;
    }
    try
    {
      setSpeedFactor(b, f);
      return;
    }
    finally {}
  }
  
  void a(int paramInt, Bitmap paramBitmap)
  {
    try
    {
      seekToTime(b, paramInt, paramBitmap);
      return;
    }
    finally
    {
      paramBitmap = finally;
      throw paramBitmap;
    }
  }
  
  void a(Surface paramSurface, long[] paramArrayOfLong, boolean paramBoolean)
  {
    bindSurface(b, paramSurface, paramArrayOfLong, paramBoolean);
  }
  
  long b()
  {
    try
    {
      long l = restoreRemainder(b);
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void b(int paramInt, Bitmap paramBitmap)
  {
    try
    {
      seekToFrame(b, paramInt, paramBitmap);
      return;
    }
    finally
    {
      paramBitmap = finally;
      throw paramBitmap;
    }
  }
  
  boolean c()
  {
    try
    {
      boolean bool = reset(b);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void d()
  {
    try
    {
      saveRemainder(b);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int e()
  {
    try
    {
      int i = getLoopCount(b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int f()
  {
    try
    {
      int i = getNativeErrorCode(b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected void finalize()
    throws Throwable
  {
    try
    {
      a();
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  int g()
  {
    try
    {
      int i = getDuration(b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int h()
  {
    try
    {
      int i = getCurrentPosition(b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int i()
  {
    try
    {
      int i = getCurrentFrameIndex(b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int j()
  {
    try
    {
      int i = getCurrentLoop(b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  boolean k()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 43	pl/droidsonroids/gif/GifInfoHandle:b	J
    //   6: lstore_1
    //   7: lload_1
    //   8: lconst_0
    //   9: lcmp
    //   10: ifne +9 -> 19
    //   13: iconst_1
    //   14: istore_3
    //   15: aload_0
    //   16: monitorexit
    //   17: iload_3
    //   18: ireturn
    //   19: iconst_0
    //   20: istore_3
    //   21: goto -6 -> 15
    //   24: astore 4
    //   26: aload_0
    //   27: monitorexit
    //   28: aload 4
    //   30: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	31	0	this	GifInfoHandle
    //   6	2	1	l	long
    //   14	7	3	bool	boolean
    //   24	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	24	finally
  }
  
  void l()
  {
    try
    {
      postUnbindSurface(b);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  long[] m()
  {
    try
    {
      long[] arrayOfLong = getSavedState(b);
      return arrayOfLong;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int n()
  {
    try
    {
      int i = getWidth(b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int o()
  {
    try
    {
      int i = getHeight(b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int p()
  {
    try
    {
      int i = getNumberOfFrames(b);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.GifInfoHandle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */