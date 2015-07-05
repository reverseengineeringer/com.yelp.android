package com.yelp.android.ab;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.view.Gravity;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.f;
import com.yelp.android.p.a;
import com.yelp.android.p.d;

public class b
  extends com.yelp.android.z.b
  implements j
{
  private final Paint a = new Paint();
  private final Rect b = new Rect();
  private final g c;
  private final c d;
  private final a e;
  private boolean f;
  private boolean g;
  private boolean h;
  private boolean i = true;
  private int j;
  private int k = -1;
  private boolean l;
  
  public b(Context paramContext, com.yelp.android.p.b paramb, e parame, f<Bitmap> paramf, int paramInt1, int paramInt2, d paramd, byte[] paramArrayOfByte, Bitmap paramBitmap)
  {
    this(new c(paramd, paramArrayOfByte, paramContext, paramf, paramInt1, paramInt2, paramb, parame, paramBitmap));
  }
  
  b(c paramc)
  {
    if (paramc == null) {
      throw new NullPointerException("GifState must not be null");
    }
    d = paramc;
    e = new a(g);
    e.a(a, b);
    c = new g(c, e, e, f);
    c.a(d);
  }
  
  private void g()
  {
    j = 0;
  }
  
  private void h()
  {
    c.b();
    invalidateSelf();
  }
  
  private void i()
  {
    if (e.c() == 1) {
      invalidateSelf();
    }
    while (f) {
      return;
    }
    f = true;
    c.a(this);
    invalidateSelf();
  }
  
  private void j()
  {
    f = false;
  }
  
  public void a(int paramInt)
  {
    if ((paramInt <= 0) && (paramInt != -1) && (paramInt != 0)) {
      throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
    }
    if (paramInt == 0)
    {
      k = e.f();
      return;
    }
    k = paramInt;
  }
  
  public void a(f<Bitmap> paramf, Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      throw new NullPointerException("The first frame of the GIF must not be null");
    }
    if (paramf == null) {
      throw new NullPointerException("The frame transformation must not be null");
    }
    d.d = paramf;
    d.i = paramBitmap;
    c.a(paramf);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public Bitmap b()
  {
    return d.i;
  }
  
  @TargetApi(11)
  public void b(int paramInt)
  {
    if ((Build.VERSION.SDK_INT >= 11) && (getCallback() == null))
    {
      stop();
      h();
    }
    while (!f) {
      return;
    }
    invalidateSelf();
    if (paramInt == e.c() - 1) {
      j += 1;
    }
    if ((k != -1) && (j >= k))
    {
      stop();
      return;
    }
    c.a(this);
  }
  
  public f<Bitmap> c()
  {
    return d.d;
  }
  
  public byte[] d()
  {
    return d.b;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (h) {
      return;
    }
    if (l)
    {
      Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), b);
      l = false;
    }
    Bitmap localBitmap = c.a();
    if (localBitmap != null) {}
    for (;;)
    {
      paramCanvas.drawBitmap(localBitmap, null, b, a);
      return;
      localBitmap = d.i;
    }
  }
  
  public int e()
  {
    return e.c();
  }
  
  public void f()
  {
    h = true;
    d.h.a(d.i);
    c.b();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return d;
  }
  
  public int getIntrinsicHeight()
  {
    return d.i.getHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return d.i.getWidth();
  }
  
  public int getOpacity()
  {
    return -2;
  }
  
  public boolean isRunning()
  {
    return f;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    l = true;
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    i = paramBoolean1;
    if (!paramBoolean1) {
      j();
    }
    for (;;)
    {
      return super.setVisible(paramBoolean1, paramBoolean2);
      if (g) {
        i();
      }
    }
  }
  
  public void start()
  {
    g = true;
    g();
    if (i) {
      i();
    }
  }
  
  public void stop()
  {
    g = false;
    j();
    if (Build.VERSION.SDK_INT < 11) {
      h();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */