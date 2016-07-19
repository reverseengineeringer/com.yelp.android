package pl.droidsonroids.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.widget.ImageView.ScaleType;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.List;

@TargetApi(14)
public class GifTextureView
  extends TextureView
{
  private static final ImageView.ScaleType[] g = { ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE };
  private ImageView.ScaleType a = ImageView.ScaleType.FIT_CENTER;
  private final Matrix b = new Matrix();
  private f c;
  private boolean d;
  private a e;
  private float f = 1.0F;
  
  public GifTextureView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet, 0, 0);
  }
  
  public GifTextureView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet, paramInt, 0);
  }
  
  private static f a(TypedArray paramTypedArray)
  {
    TypedValue localTypedValue = new TypedValue();
    if (!paramTypedArray.getValue(i.a.GifTextureView_gifSource, localTypedValue)) {
      return null;
    }
    if (resourceId != 0)
    {
      String str = paramTypedArray.getResources().getResourceTypeName(resourceId);
      if (e.a.contains(str)) {
        return new f.b(paramTypedArray.getResources(), resourceId);
      }
      if (!"string".equals(str)) {
        throw new IllegalArgumentException("Expected string, drawable, mipmap or raw resource type. '" + str + "' is not supported");
      }
    }
    return new f.a(paramTypedArray.getResources().getAssets(), string.toString());
  }
  
  private void a(AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    if (paramAttributeSet != null)
    {
      int i = paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "scaleType", -1);
      if ((i >= 0) && (i < g.length)) {
        a = g[i];
      }
      TypedArray localTypedArray = getContext().obtainStyledAttributes(paramAttributeSet, i.a.GifTextureView, paramInt1, paramInt2);
      c = a(localTypedArray);
      super.setOpaque(localTypedArray.getBoolean(i.a.GifTextureView_isOpaque, false));
      localTypedArray.recycle();
      d = e.a(this, paramAttributeSet, paramInt1, paramInt2);
    }
    for (;;)
    {
      if (!isInEditMode())
      {
        h.a(getContext(), "pl_droidsonroids_gif_surface");
        e = new a(this);
        if (c != null) {
          e.start();
        }
      }
      return;
      super.setOpaque(false);
    }
  }
  
  private void a(GifInfoHandle paramGifInfoHandle)
  {
    float f1 = 1.0F;
    Matrix localMatrix = new Matrix();
    float f2 = getWidth();
    float f3 = getHeight();
    float f4 = paramGifInfoHandle.n() / f2;
    float f5 = paramGifInfoHandle.o() / f3;
    RectF localRectF1 = new RectF(0.0F, 0.0F, paramGifInfoHandle.n(), paramGifInfoHandle.o());
    RectF localRectF2 = new RectF(0.0F, 0.0F, f2, f3);
    switch (1.a[a.ordinal()])
    {
    }
    for (;;)
    {
      super.setTransform(localMatrix);
      return;
      localMatrix.setScale(f4, f5, f2 / 2.0F, f3 / 2.0F);
      continue;
      f1 = 1.0F / Math.min(f4, f5);
      localMatrix.setScale(f4 * f1, f1 * f5, f2 / 2.0F, f3 / 2.0F);
      continue;
      if ((paramGifInfoHandle.n() <= f2) && (paramGifInfoHandle.o() <= f3)) {}
      for (;;)
      {
        localMatrix.setScale(f4 * f1, f1 * f5, f2 / 2.0F, f3 / 2.0F);
        break;
        f1 = Math.min(1.0F / f4, 1.0F / f5);
      }
      localMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.CENTER);
      localMatrix.preScale(f4, f5);
      continue;
      localMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.END);
      localMatrix.preScale(f4, f5);
      continue;
      localMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.START);
      localMatrix.preScale(f4, f5);
      continue;
      localMatrix.set(b);
      localMatrix.preScale(f4, f5);
    }
  }
  
  private void setSuperSurfaceTextureListener(a parama)
  {
    super.setSurfaceTextureListener(parama);
  }
  
  public IOException getIOException()
  {
    if (a.b(e) != null) {
      return a.b(e);
    }
    return GifIOException.fromCode(a.a(e).f());
  }
  
  public ImageView.ScaleType getScaleType()
  {
    return a;
  }
  
  public TextureView.SurfaceTextureListener getSurfaceTextureListener()
  {
    return null;
  }
  
  public Matrix getTransform(Matrix paramMatrix)
  {
    Matrix localMatrix = paramMatrix;
    if (paramMatrix == null) {
      localMatrix = new Matrix();
    }
    localMatrix.set(b);
    return localMatrix;
  }
  
  protected void onDetachedFromWindow()
  {
    e.a(this);
    super.onDetachedFromWindow();
    SurfaceTexture localSurfaceTexture = getSurfaceTexture();
    if (localSurfaceTexture != null) {
      localSurfaceTexture.release();
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (GifViewSavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    e.b = a[0];
  }
  
  public Parcelable onSaveInstanceState()
  {
    e.b = a.a(e).m();
    Parcelable localParcelable = super.onSaveInstanceState();
    if (d) {}
    for (long[] arrayOfLong = e.b;; arrayOfLong = null) {
      return new GifViewSavedState(localParcelable, arrayOfLong);
    }
  }
  
  public void setFreezesAnimation(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void setImageMatrix(Matrix paramMatrix)
  {
    setTransform(paramMatrix);
  }
  
  public void setInputSource(f paramf)
  {
    try
    {
      e.a(this);
      c = paramf;
      e = new a(this);
      if (paramf != null) {
        e.start();
      }
      return;
    }
    finally {}
  }
  
  public void setOpaque(boolean paramBoolean)
  {
    if (paramBoolean != isOpaque())
    {
      super.setOpaque(paramBoolean);
      setInputSource(c);
    }
  }
  
  public void setScaleType(ImageView.ScaleType paramScaleType)
  {
    a = paramScaleType;
    a(a.a(e));
  }
  
  public void setSpeed(float paramFloat)
  {
    f = paramFloat;
    a.a(e).a(paramFloat);
  }
  
  public void setSurfaceTexture(SurfaceTexture paramSurfaceTexture)
  {
    throw new UnsupportedOperationException("Changing SurfaceTexture is not supported");
  }
  
  public void setSurfaceTextureListener(TextureView.SurfaceTextureListener paramSurfaceTextureListener)
  {
    throw new UnsupportedOperationException("Changing SurfaceTextureListener is not supported");
  }
  
  public void setTransform(Matrix paramMatrix)
  {
    b.set(paramMatrix);
    a(a.a(e));
  }
  
  private static class a
    extends Thread
    implements TextureView.SurfaceTextureListener
  {
    final b a = new b();
    long[] b;
    private GifInfoHandle c = GifInfoHandle.a;
    private IOException d;
    private final WeakReference<GifTextureView> e;
    
    a(GifTextureView paramGifTextureView)
    {
      super();
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
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.GifTextureView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */