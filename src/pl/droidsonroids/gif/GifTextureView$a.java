package pl.droidsonroids.gif;

import android.graphics.SurfaceTexture;
import android.view.TextureView.SurfaceTextureListener;
import java.io.IOException;
import java.lang.ref.WeakReference;

class GifTextureView$a
  extends Thread
  implements TextureView.SurfaceTextureListener
{
  final b a = new b();
  long[] b;
  private GifInfoHandle c = GifInfoHandle.a;
  private IOException d;
  private final WeakReference<GifTextureView> e;
  
  GifTextureView$a(GifTextureView paramGifTextureView)
  {
    super("GifRenderThread");
    e = new WeakReference(paramGifTextureView);
  }
  
  void a(GifTextureView paramGifTextureView)
  {
    a.b();
    GifTextureView.a(paramGifTextureView, null);
    c.l();
    interrupt();
  }
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    paramSurfaceTexture = (GifTextureView)e.get();
    if (paramSurfaceTexture != null) {
      GifTextureView.a(paramSurfaceTexture, c);
    }
    a.a();
  }
  
  public boolean onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    a.b();
    c.l();
    return false;
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {}
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 48	pl/droidsonroids/gif/GifTextureView$a:e	Ljava/lang/ref/WeakReference;
    //   4: invokevirtual 70	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   7: checkcast 8	pl/droidsonroids/gif/GifTextureView
    //   10: astore_2
    //   11: aload_2
    //   12: ifnonnull +4 -> 16
    //   15: return
    //   16: aload_0
    //   17: aload_2
    //   18: invokestatic 88	pl/droidsonroids/gif/GifTextureView:a	(Lpl/droidsonroids/gif/GifTextureView;)Lpl/droidsonroids/gif/f;
    //   21: invokevirtual 93	pl/droidsonroids/gif/f:a	()Lpl/droidsonroids/gif/GifInfoHandle;
    //   24: putfield 41	pl/droidsonroids/gif/GifTextureView$a:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   27: aload_0
    //   28: getfield 48	pl/droidsonroids/gif/GifTextureView$a:e	Ljava/lang/ref/WeakReference;
    //   31: invokevirtual 70	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   34: checkcast 8	pl/droidsonroids/gif/GifTextureView
    //   37: astore_2
    //   38: aload_2
    //   39: ifnonnull +18 -> 57
    //   42: aload_0
    //   43: getfield 41	pl/droidsonroids/gif/GifTextureView$a:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   46: invokevirtual 94	pl/droidsonroids/gif/GifInfoHandle:a	()V
    //   49: return
    //   50: astore_2
    //   51: aload_0
    //   52: aload_2
    //   53: putfield 53	pl/droidsonroids/gif/GifTextureView$a:d	Ljava/io/IOException;
    //   56: return
    //   57: aload_2
    //   58: aload_0
    //   59: invokestatic 58	pl/droidsonroids/gif/GifTextureView:a	(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$a;)V
    //   62: aload_2
    //   63: invokevirtual 98	pl/droidsonroids/gif/GifTextureView:isAvailable	()Z
    //   66: istore_1
    //   67: aload_0
    //   68: getfield 35	pl/droidsonroids/gif/GifTextureView$a:a	Lpl/droidsonroids/gif/b;
    //   71: iload_1
    //   72: invokevirtual 101	pl/droidsonroids/gif/b:a	(Z)V
    //   75: iload_1
    //   76: ifeq +17 -> 93
    //   79: aload_2
    //   80: new 11	pl/droidsonroids/gif/GifTextureView$a$1
    //   83: dup
    //   84: aload_0
    //   85: aload_2
    //   86: invokespecial 104	pl/droidsonroids/gif/GifTextureView$a$1:<init>	(Lpl/droidsonroids/gif/GifTextureView$a;Lpl/droidsonroids/gif/GifTextureView;)V
    //   89: invokevirtual 108	pl/droidsonroids/gif/GifTextureView:post	(Ljava/lang/Runnable;)Z
    //   92: pop
    //   93: aload_0
    //   94: getfield 41	pl/droidsonroids/gif/GifTextureView$a:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   97: aload_2
    //   98: invokestatic 111	pl/droidsonroids/gif/GifTextureView:b	(Lpl/droidsonroids/gif/GifTextureView;)F
    //   101: invokevirtual 114	pl/droidsonroids/gif/GifInfoHandle:a	(F)V
    //   104: aload_0
    //   105: invokevirtual 117	pl/droidsonroids/gif/GifTextureView$a:isInterrupted	()Z
    //   108: ifne +59 -> 167
    //   111: aload_0
    //   112: getfield 35	pl/droidsonroids/gif/GifTextureView$a:a	Lpl/droidsonroids/gif/b;
    //   115: invokevirtual 119	pl/droidsonroids/gif/b:c	()V
    //   118: aload_2
    //   119: invokevirtual 123	pl/droidsonroids/gif/GifTextureView:getSurfaceTexture	()Landroid/graphics/SurfaceTexture;
    //   122: astore_3
    //   123: aload_3
    //   124: ifnull -20 -> 104
    //   127: new 125	android/view/Surface
    //   130: dup
    //   131: aload_3
    //   132: invokespecial 127	android/view/Surface:<init>	(Landroid/graphics/SurfaceTexture;)V
    //   135: astore_3
    //   136: aload_0
    //   137: getfield 41	pl/droidsonroids/gif/GifTextureView$a:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   140: aload_3
    //   141: aload_0
    //   142: getfield 129	pl/droidsonroids/gif/GifTextureView$a:b	[J
    //   145: aload_2
    //   146: invokevirtual 132	pl/droidsonroids/gif/GifTextureView:isOpaque	()Z
    //   149: invokevirtual 135	pl/droidsonroids/gif/GifInfoHandle:a	(Landroid/view/Surface;[JZ)V
    //   152: aload_3
    //   153: invokevirtual 138	android/view/Surface:release	()V
    //   156: goto -52 -> 104
    //   159: astore_2
    //   160: aload_3
    //   161: invokevirtual 138	android/view/Surface:release	()V
    //   164: aload_2
    //   165: athrow
    //   166: astore_2
    //   167: aload_0
    //   168: getfield 41	pl/droidsonroids/gif/GifTextureView$a:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   171: invokevirtual 94	pl/droidsonroids/gif/GifInfoHandle:a	()V
    //   174: aload_0
    //   175: getstatic 39	pl/droidsonroids/gif/GifInfoHandle:a	Lpl/droidsonroids/gif/GifInfoHandle;
    //   178: putfield 41	pl/droidsonroids/gif/GifTextureView$a:c	Lpl/droidsonroids/gif/GifInfoHandle;
    //   181: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	182	0	this	a
    //   66	10	1	bool	boolean
    //   10	29	2	localGifTextureView	GifTextureView
    //   50	96	2	localIOException	IOException
    //   159	6	2	localObject1	Object
    //   166	1	2	localInterruptedException	InterruptedException
    //   122	39	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   0	11	50	java/io/IOException
    //   16	27	50	java/io/IOException
    //   136	152	159	finally
    //   111	118	166	java/lang/InterruptedException
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.GifTextureView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */