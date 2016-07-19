package com.yelp.android.ag;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.view.Gravity;
import com.yelp.android.u.a;
import com.yelp.android.u.a.a;

public class b
  extends com.yelp.android.ae.b
  implements f.b
{
  private final Paint a;
  private final Rect b = new Rect();
  private final a c;
  private final a d;
  private final f e;
  private boolean f;
  private boolean g;
  private boolean h;
  private boolean i = true;
  private int j;
  private int k = -1;
  private boolean l;
  
  public b(Context paramContext, a.a parama, com.yelp.android.x.c paramc, com.bumptech.glide.load.f<Bitmap> paramf, int paramInt1, int paramInt2, com.yelp.android.u.c paramc1, byte[] paramArrayOfByte, Bitmap paramBitmap)
  {
    this(new a(paramc1, paramArrayOfByte, paramContext, paramf, paramInt1, paramInt2, parama, paramc, paramBitmap));
  }
  
  b(a parama)
  {
    if (parama == null) {
      throw new NullPointerException("GifState must not be null");
    }
    c = parama;
    d = new a(g);
    a = new Paint();
    d.a(a, b);
    e = new f(c, this, d, e, f);
    e.a(d);
  }
  
  public b(b paramb, Bitmap paramBitmap, com.bumptech.glide.load.f<Bitmap> paramf)
  {
    this(new a(c.a, c.b, c.c, paramf, c.e, c.f, c.g, c.h, paramBitmap));
  }
  
  private void g()
  {
    j = 0;
  }
  
  private void h()
  {
    e.c();
    invalidateSelf();
  }
  
  private void i()
  {
    if (d.c() == 1) {
      invalidateSelf();
    }
    while (f) {
      return;
    }
    f = true;
    e.a();
    invalidateSelf();
  }
  
  private void j()
  {
    f = false;
    e.b();
  }
  
  public void a(int paramInt)
  {
    if ((paramInt <= 0) && (paramInt != -1) && (paramInt != 0)) {
      throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
    }
    if (paramInt == 0)
    {
      k = d.e();
      return;
    }
    k = paramInt;
  }
  
  public boolean a()
  {
    return true;
  }
  
  public Bitmap b()
  {
    return c.i;
  }
  
  @TargetApi(11)
  public void b(int paramInt)
  {
    if ((Build.VERSION.SDK_INT >= 11) && (getCallback() == null))
    {
      stop();
      h();
    }
    do
    {
      return;
      invalidateSelf();
      if (paramInt == d.c() - 1) {
        j += 1;
      }
    } while ((k == -1) || (j < k));
    stop();
  }
  
  public com.bumptech.glide.load.f<Bitmap> c()
  {
    return c.d;
  }
  
  public byte[] d()
  {
    return c.b;
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
    Bitmap localBitmap = e.d();
    if (localBitmap != null) {}
    for (;;)
    {
      paramCanvas.drawBitmap(localBitmap, null, b, a);
      return;
      localBitmap = c.i;
    }
  }
  
  public int e()
  {
    return d.c();
  }
  
  public void f()
  {
    h = true;
    c.h.a(c.i);
    e.c();
    e.b();
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return c;
  }
  
  public int getIntrinsicHeight()
  {
    return c.i.getHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return c.i.getWidth();
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
  
  static class a
    extends Drawable.ConstantState
  {
    com.yelp.android.u.c a;
    byte[] b;
    Context c;
    com.bumptech.glide.load.f<Bitmap> d;
    int e;
    int f;
    a.a g;
    com.yelp.android.x.c h;
    Bitmap i;
    
    public a(com.yelp.android.u.c paramc, byte[] paramArrayOfByte, Context paramContext, com.bumptech.glide.load.f<Bitmap> paramf, int paramInt1, int paramInt2, a.a parama, com.yelp.android.x.c paramc1, Bitmap paramBitmap)
    {
      if (paramBitmap == null) {
        throw new NullPointerException("The first frame of the GIF must not be null");
      }
      a = paramc;
      b = paramArrayOfByte;
      h = paramc1;
      i = paramBitmap;
      c = paramContext.getApplicationContext();
      d = paramf;
      e = paramInt1;
      f = paramInt2;
      g = parama;
    }
    
    public int getChangingConfigurations()
    {
      return 0;
    }
    
    public Drawable newDrawable()
    {
      return new b(this);
    }
    
    public Drawable newDrawable(Resources paramResources)
    {
      return newDrawable();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */