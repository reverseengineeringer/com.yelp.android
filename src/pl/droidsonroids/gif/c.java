package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.widget.MediaController.MediaPlayerControl;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class c
  extends Drawable
  implements Animatable, MediaController.MediaPlayerControl
{
  final ScheduledThreadPoolExecutor a;
  volatile boolean b = true;
  long c = Long.MIN_VALUE;
  protected final Paint d = new Paint(6);
  final Bitmap e;
  final GifInfoHandle f;
  final ConcurrentLinkedQueue<a> g = new ConcurrentLinkedQueue();
  final boolean h;
  final g i;
  ScheduledFuture<?> j;
  private final Rect k = new Rect();
  private ColorStateList l;
  private PorterDuffColorFilter m;
  private PorterDuff.Mode n;
  private final k o = new k(this);
  private final Rect p;
  private int q;
  private int r;
  private com.yelp.android.dd.a s;
  
  public c(ContentResolver paramContentResolver, Uri paramUri)
    throws IOException
  {
    this(GifInfoHandle.a(paramContentResolver, paramUri, false), null, null, true);
  }
  
  public c(AssetFileDescriptor paramAssetFileDescriptor)
    throws IOException
  {
    this(new GifInfoHandle(paramAssetFileDescriptor, false), null, null, true);
  }
  
  public c(Resources paramResources, int paramInt)
    throws Resources.NotFoundException, IOException
  {
    this(paramResources.openRawResourceFd(paramInt));
    float f1 = e.a(paramResources, paramInt);
    r = ((int)(f.o() * f1));
    q = ((int)(f1 * f.n()));
  }
  
  c(GifInfoHandle paramGifInfoHandle, c paramc, ScheduledThreadPoolExecutor paramScheduledThreadPoolExecutor, boolean paramBoolean)
  {
    h = paramBoolean;
    GifInfoHandle localGifInfoHandle;
    if (paramScheduledThreadPoolExecutor != null)
    {
      a = paramScheduledThreadPoolExecutor;
      f = paramGifInfoHandle;
      paramGifInfoHandle = null;
      paramScheduledThreadPoolExecutor = null;
      if (paramc != null)
      {
        localGifInfoHandle = f;
        paramGifInfoHandle = paramScheduledThreadPoolExecutor;
      }
    }
    for (;;)
    {
      try
      {
        if (!f.k())
        {
          paramGifInfoHandle = paramScheduledThreadPoolExecutor;
          if (f.o() >= f.o())
          {
            paramGifInfoHandle = paramScheduledThreadPoolExecutor;
            if (f.n() >= f.n())
            {
              paramc.h();
              paramGifInfoHandle = e;
              paramGifInfoHandle.eraseColor(0);
            }
          }
        }
        if (paramGifInfoHandle != null) {
          break label277;
        }
        e = Bitmap.createBitmap(f.n(), f.o(), Bitmap.Config.ARGB_8888);
        p = new Rect(0, 0, f.n(), f.o());
        i = new g(this);
        o.a();
        q = f.n();
        r = f.o();
        return;
      }
      finally {}
      paramScheduledThreadPoolExecutor = d.a();
      break;
      label277:
      e = paramGifInfoHandle;
    }
  }
  
  private PorterDuffColorFilter a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList == null) || (paramMode == null)) {
      return null;
    }
    return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
  }
  
  private void h()
  {
    b = false;
    i.removeMessages(-1);
    f.a();
  }
  
  private void i()
  {
    if (j != null) {
      j.cancel(false);
    }
    i.removeMessages(-1);
  }
  
  public void a()
  {
    h();
    e.recycle();
  }
  
  public void a(float paramFloat)
  {
    f.a(paramFloat);
  }
  
  public void a(final int paramInt)
  {
    if (paramInt < 0) {
      throw new IndexOutOfBoundsException("Frame index is not positive");
    }
    a.execute(new l(this)
    {
      public void a()
      {
        f.b(paramInt, e);
        i.sendEmptyMessageAtTime(-1, 0L);
      }
    });
  }
  
  void a(long paramLong)
  {
    if (h)
    {
      c = 0L;
      i.sendEmptyMessageAtTime(-1, 0L);
      return;
    }
    i();
    j = a.schedule(o, Math.max(paramLong, 0L), TimeUnit.MILLISECONDS);
  }
  
  public void a(a parama)
  {
    g.add(parama);
  }
  
  public Bitmap b(int paramInt)
  {
    if (paramInt < 0) {
      throw new IndexOutOfBoundsException("Frame index is not positive");
    }
    synchronized (f)
    {
      f.b(paramInt, e);
      Bitmap localBitmap = e();
      i.sendEmptyMessageAtTime(-1, 0L);
      return localBitmap;
    }
  }
  
  public boolean b()
  {
    return f.k();
  }
  
  public void c()
  {
    a.execute(new l(this)
    {
      public void a()
      {
        if (f.c()) {
          start();
        }
      }
    });
  }
  
  public boolean canPause()
  {
    return true;
  }
  
  public boolean canSeekBackward()
  {
    return d() > 1;
  }
  
  public boolean canSeekForward()
  {
    return d() > 1;
  }
  
  public int d()
  {
    return f.p();
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i1;
    if ((m != null) && (d.getColorFilter() == null))
    {
      d.setColorFilter(m);
      i1 = 1;
      if (s != null) {
        break label153;
      }
      paramCanvas.drawBitmap(e, p, k, d);
    }
    for (;;)
    {
      if (i1 != 0) {
        d.setColorFilter(null);
      }
      if ((h) && (b) && (c != Long.MIN_VALUE))
      {
        long l1 = Math.max(0L, c - SystemClock.uptimeMillis());
        c = Long.MIN_VALUE;
        a.remove(o);
        j = a.schedule(o, l1, TimeUnit.MILLISECONDS);
      }
      return;
      i1 = 0;
      break;
      label153:
      s.a(paramCanvas, d, e);
    }
  }
  
  public Bitmap e()
  {
    return e.copy(e.getConfig(), e.isMutable());
  }
  
  public int f()
  {
    return f.i();
  }
  
  public int g()
  {
    int i1 = f.j();
    if ((i1 == 0) || (i1 < f.e())) {
      return i1;
    }
    return i1 - 1;
  }
  
  public int getAlpha()
  {
    return d.getAlpha();
  }
  
  public int getAudioSessionId()
  {
    return 0;
  }
  
  public int getBufferPercentage()
  {
    return 100;
  }
  
  public ColorFilter getColorFilter()
  {
    return d.getColorFilter();
  }
  
  public int getCurrentPosition()
  {
    return f.h();
  }
  
  public int getDuration()
  {
    return f.g();
  }
  
  public int getIntrinsicHeight()
  {
    return r;
  }
  
  public int getIntrinsicWidth()
  {
    return q;
  }
  
  public int getOpacity()
  {
    return -2;
  }
  
  public boolean isPlaying()
  {
    return b;
  }
  
  public boolean isRunning()
  {
    return b;
  }
  
  public boolean isStateful()
  {
    return (super.isStateful()) || ((l != null) && (l.isStateful()));
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    k.set(paramRect);
    if (s != null) {
      s.a(paramRect);
    }
  }
  
  protected boolean onStateChange(int[] paramArrayOfInt)
  {
    if ((l != null) && (n != null))
    {
      m = a(l, n);
      return true;
    }
    return false;
  }
  
  public void pause()
  {
    stop();
  }
  
  public void seekTo(final int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Position is not positive");
    }
    a.execute(new l(this)
    {
      public void a()
      {
        f.a(paramInt, e);
        c.i.sendEmptyMessageAtTime(-1, 0L);
      }
    });
  }
  
  public void setAlpha(int paramInt)
  {
    d.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    d.setColorFilter(paramColorFilter);
  }
  
  @Deprecated
  public void setDither(boolean paramBoolean)
  {
    d.setDither(paramBoolean);
    invalidateSelf();
  }
  
  public void setFilterBitmap(boolean paramBoolean)
  {
    d.setFilterBitmap(paramBoolean);
    invalidateSelf();
  }
  
  public void setTintList(ColorStateList paramColorStateList)
  {
    l = paramColorStateList;
    m = a(paramColorStateList, n);
    invalidateSelf();
  }
  
  public void setTintMode(PorterDuff.Mode paramMode)
  {
    n = paramMode;
    m = a(l, paramMode);
    invalidateSelf();
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = super.setVisible(paramBoolean1, paramBoolean2);
    if (!h)
    {
      if (!paramBoolean1) {
        break label36;
      }
      if (paramBoolean2) {
        c();
      }
      if (bool) {
        start();
      }
    }
    label36:
    while (!bool) {
      return bool;
    }
    stop();
    return bool;
  }
  
  public void start()
  {
    try
    {
      if (b) {
        return;
      }
      b = true;
      a(f.b());
      return;
    }
    finally {}
  }
  
  public void stop()
  {
    try
    {
      if (!b) {
        return;
      }
      b = false;
      i();
      f.d();
      return;
    }
    finally {}
  }
  
  public String toString()
  {
    return String.format(Locale.ENGLISH, "GIF: size: %dx%d, frames: %d, error: %d", new Object[] { Integer.valueOf(f.n()), Integer.valueOf(f.o()), Integer.valueOf(f.p()), Integer.valueOf(f.f()) });
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */