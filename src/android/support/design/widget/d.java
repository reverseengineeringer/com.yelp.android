package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.v4.view.ai;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.animation.Interpolator;
import com.yelp.android.a.a.i;

final class d
{
  private static final boolean a;
  private static final Paint b;
  private float A;
  private float B;
  private float C;
  private float D;
  private boolean E;
  private final TextPaint F;
  private Interpolator G;
  private Interpolator H;
  private final View c;
  private boolean d;
  private float e;
  private final Rect f;
  private final Rect g;
  private final RectF h;
  private int i = 16;
  private int j = 16;
  private float k = 15.0F;
  private float l = 15.0F;
  private int m;
  private int n;
  private float o;
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private CharSequence u;
  private CharSequence v;
  private boolean w;
  private boolean x;
  private Bitmap y;
  private Paint z;
  
  static
  {
    if (Build.VERSION.SDK_INT < 18) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = null;
      if (b != null)
      {
        b.setAntiAlias(true);
        b.setColor(-65281);
      }
      return;
    }
  }
  
  public d(View paramView)
  {
    c = paramView;
    F = new TextPaint();
    F.setAntiAlias(true);
    g = new Rect();
    f = new Rect();
    h = new RectF();
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3, Interpolator paramInterpolator)
  {
    float f1 = paramFloat3;
    if (paramInterpolator != null) {
      f1 = paramInterpolator.getInterpolation(paramFloat3);
    }
    return a.a(paramFloat1, paramFloat2, f1);
  }
  
  private static int a(int paramInt1, int paramInt2, float paramFloat)
  {
    float f1 = 1.0F - paramFloat;
    float f2 = Color.alpha(paramInt1);
    float f3 = Color.alpha(paramInt2);
    float f4 = Color.red(paramInt1);
    float f5 = Color.red(paramInt2);
    float f6 = Color.green(paramInt1);
    float f7 = Color.green(paramInt2);
    float f8 = Color.blue(paramInt1);
    float f9 = Color.blue(paramInt2);
    return Color.argb((int)(f2 * f1 + f3 * paramFloat), (int)(f4 * f1 + f5 * paramFloat), (int)(f6 * f1 + f7 * paramFloat), (int)(f1 * f8 + f9 * paramFloat));
  }
  
  private static boolean a(float paramFloat1, float paramFloat2)
  {
    return Math.abs(paramFloat1 - paramFloat2) < 0.001F;
  }
  
  private static boolean a(Rect paramRect, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (left == paramInt1) && (top == paramInt2) && (right == paramInt3) && (bottom == paramInt4);
  }
  
  private boolean b(CharSequence paramCharSequence)
  {
    int i1 = 1;
    if (ai.h(c) == 1) {
      if (i1 == 0) {
        break label41;
      }
    }
    label41:
    for (com.yelp.android.f.d locald = com.yelp.android.f.e.d;; locald = com.yelp.android.f.e.c)
    {
      return locald.a(paramCharSequence, 0, paramCharSequence.length());
      i1 = 0;
      break;
    }
  }
  
  private void c(float paramFloat)
  {
    h.left = a(f.left, g.left, paramFloat, G);
    h.top = a(o, p, paramFloat, G);
    h.right = a(f.right, g.right, paramFloat, G);
    h.bottom = a(f.bottom, g.bottom, paramFloat, G);
  }
  
  private void d(float paramFloat)
  {
    boolean bool = true;
    if (u == null) {
      return;
    }
    float f1;
    int i1;
    if (a(paramFloat, l))
    {
      f1 = g.width();
      paramFloat = l;
      C = 1.0F;
      if (f1 <= 0.0F) {
        break label259;
      }
      if ((D == paramFloat) && (!E)) {
        break label247;
      }
      i1 = 1;
      label66:
      D = paramFloat;
      E = false;
    }
    for (;;)
    {
      if ((v == null) || (i1 != 0))
      {
        F.setTextSize(D);
        CharSequence localCharSequence = TextUtils.ellipsize(u, F, f1, TextUtils.TruncateAt.END);
        if ((v == null) || (!v.equals(localCharSequence))) {
          v = localCharSequence;
        }
        w = b(v);
      }
      if ((a) && (C != 1.0F)) {}
      for (;;)
      {
        x = bool;
        if (x) {
          l();
        }
        ai.d(c);
        return;
        float f2 = f.width();
        f1 = k;
        if (a(paramFloat, k))
        {
          C = 1.0F;
          paramFloat = f1;
          f1 = f2;
          break;
        }
        C = (paramFloat / k);
        paramFloat = f1;
        f1 = f2;
        break;
        label247:
        i1 = 0;
        break label66;
        bool = false;
      }
      label259:
      i1 = 0;
    }
  }
  
  private void j()
  {
    float f1 = e;
    c(f1);
    s = a(q, r, f1, G);
    t = a(o, p, f1, G);
    d(a(k, l, f1, H));
    if (n != m) {
      F.setColor(a(m, n, f1));
    }
    for (;;)
    {
      ai.d(c);
      return;
      F.setColor(n);
    }
  }
  
  private void k()
  {
    int i2 = 1;
    float f2 = 0.0F;
    F.setTextSize(l);
    float f1;
    int i1;
    if (v != null)
    {
      f1 = F.measureText(v, 0, v.length());
      int i3 = j;
      if (!w) {
        break label362;
      }
      i1 = 1;
      label60:
      i1 = android.support.v4.view.e.a(i3, i1);
      switch (i1 & 0x70)
      {
      default: 
        p = ((F.descent() - F.ascent()) / 2.0F - F.descent() + g.centerY());
        label134:
        switch (i1 & 0x7)
        {
        default: 
          r = g.left;
          label176:
          F.setTextSize(k);
          f1 = f2;
          if (v != null) {
            f1 = F.measureText(v, 0, v.length());
          }
          i3 = i;
          if (w)
          {
            i1 = i2;
            label234:
            i1 = android.support.v4.view.e.a(i3, i1);
            switch (i1 & 0x70)
            {
            default: 
              o = ((F.descent() - F.ascent()) / 2.0F - F.descent() + f.centerY());
              label310:
              switch (i1 & 0x7)
              {
              default: 
                q = f.left;
              }
              break;
            }
          }
          break;
        }
        break;
      }
    }
    for (;;)
    {
      m();
      return;
      f1 = 0.0F;
      break;
      label362:
      i1 = 0;
      break label60;
      p = g.bottom;
      break label134;
      p = (g.top - F.ascent());
      break label134;
      r = (g.centerX() - f1 / 2.0F);
      break label176;
      r = (g.right - f1);
      break label176;
      i1 = 0;
      break label234;
      o = f.bottom;
      break label310;
      o = (f.top - F.ascent());
      break label310;
      q = (f.centerX() - f1 / 2.0F);
      continue;
      q = (f.right - f1);
    }
  }
  
  private void l()
  {
    if ((y != null) || (f.isEmpty()) || (TextUtils.isEmpty(v))) {}
    do
    {
      int i1;
      int i2;
      do
      {
        return;
        F.setTextSize(k);
        F.setColor(m);
        A = F.ascent();
        B = F.descent();
        i1 = Math.round(F.measureText(v, 0, v.length()));
        i2 = Math.round(B - A);
      } while ((i1 <= 0) && (i2 <= 0));
      y = Bitmap.createBitmap(i1, i2, Bitmap.Config.ARGB_8888);
      new Canvas(y).drawText(v, 0, v.length(), 0.0F, i2 - F.descent(), F);
    } while (z != null);
    z = new Paint(3);
  }
  
  private void m()
  {
    if (y != null)
    {
      y.recycle();
      y = null;
    }
  }
  
  void a()
  {
    if ((g.width() > 0) && (g.height() > 0) && (f.width() > 0) && (f.height() > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  void a(float paramFloat)
  {
    if (k != paramFloat)
    {
      k = paramFloat;
      g();
    }
  }
  
  void a(int paramInt)
  {
    if (n != paramInt)
    {
      n = paramInt;
      g();
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(f, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      f.set(paramInt1, paramInt2, paramInt3, paramInt4);
      E = true;
      a();
    }
  }
  
  public void a(Canvas paramCanvas)
  {
    int i2 = paramCanvas.save();
    float f4;
    int i1;
    float f1;
    float f2;
    if ((v != null) && (d))
    {
      f4 = s;
      float f3 = t;
      if ((!x) || (y == null)) {
        break label149;
      }
      i1 = 1;
      F.setTextSize(D);
      if (i1 == 0) {
        break label155;
      }
      f1 = A * C;
      f2 = B;
      f2 = C;
      label85:
      f2 = f3;
      if (i1 != 0) {
        f2 = f3 + f1;
      }
      if (C != 1.0F) {
        paramCanvas.scale(C, C, f4, f2);
      }
      if (i1 == 0) {
        break label184;
      }
      paramCanvas.drawBitmap(y, f4, f2, z);
    }
    for (;;)
    {
      paramCanvas.restoreToCount(i2);
      return;
      label149:
      i1 = 0;
      break;
      label155:
      f1 = F.ascent() * C;
      F.descent();
      f2 = C;
      break label85;
      label184:
      paramCanvas.drawText(v, 0, v.length(), f4, f2, F);
    }
  }
  
  void a(Typeface paramTypeface)
  {
    Typeface localTypeface = paramTypeface;
    if (paramTypeface == null) {
      localTypeface = Typeface.DEFAULT;
    }
    if (F.getTypeface() != localTypeface)
    {
      F.setTypeface(localTypeface);
      g();
    }
  }
  
  void a(Interpolator paramInterpolator)
  {
    H = paramInterpolator;
    g();
  }
  
  void a(CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (!paramCharSequence.equals(u)))
    {
      u = paramCharSequence;
      v = null;
      m();
      g();
    }
  }
  
  int b()
  {
    return i;
  }
  
  void b(float paramFloat)
  {
    paramFloat = k.a(paramFloat, 0.0F, 1.0F);
    if (paramFloat != e)
    {
      e = paramFloat;
      j();
    }
  }
  
  void b(int paramInt)
  {
    if (m != paramInt)
    {
      m = paramInt;
      g();
    }
  }
  
  void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!a(g, paramInt1, paramInt2, paramInt3, paramInt4))
    {
      g.set(paramInt1, paramInt2, paramInt3, paramInt4);
      E = true;
      a();
    }
  }
  
  void b(Interpolator paramInterpolator)
  {
    G = paramInterpolator;
    g();
  }
  
  int c()
  {
    return j;
  }
  
  void c(int paramInt)
  {
    if (i != paramInt)
    {
      i = paramInt;
      g();
    }
  }
  
  Typeface d()
  {
    return F.getTypeface();
  }
  
  void d(int paramInt)
  {
    if (j != paramInt)
    {
      j = paramInt;
      g();
    }
  }
  
  float e()
  {
    return e;
  }
  
  void e(int paramInt)
  {
    TypedArray localTypedArray = c.getContext().obtainStyledAttributes(paramInt, a.i.TextAppearance);
    if (localTypedArray.hasValue(a.i.TextAppearance_android_textColor)) {
      n = localTypedArray.getColor(a.i.TextAppearance_android_textColor, n);
    }
    if (localTypedArray.hasValue(a.i.TextAppearance_android_textSize)) {
      l = localTypedArray.getDimensionPixelSize(a.i.TextAppearance_android_textSize, (int)l);
    }
    localTypedArray.recycle();
    g();
  }
  
  float f()
  {
    return l;
  }
  
  void f(int paramInt)
  {
    TypedArray localTypedArray = c.getContext().obtainStyledAttributes(paramInt, a.i.TextAppearance);
    if (localTypedArray.hasValue(a.i.TextAppearance_android_textColor)) {
      m = localTypedArray.getColor(a.i.TextAppearance_android_textColor, m);
    }
    if (localTypedArray.hasValue(a.i.TextAppearance_android_textSize)) {
      k = localTypedArray.getDimensionPixelSize(a.i.TextAppearance_android_textSize, (int)k);
    }
    localTypedArray.recycle();
    g();
  }
  
  public void g()
  {
    if ((c.getHeight() > 0) && (c.getWidth() > 0))
    {
      k();
      j();
    }
  }
  
  CharSequence h()
  {
    return u;
  }
  
  int i()
  {
    return n;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */