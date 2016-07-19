package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.view.View.MeasureSpec;
import android.webkit.WebView;

public final class fj$a
  extends AsyncTask<Void, Void, Boolean>
{
  private final WebView b;
  private Bitmap c;
  
  public fj$a(fj paramfj, WebView paramWebView)
  {
    b = paramWebView;
  }
  
  protected Boolean a(Void... paramVarArgs)
  {
    for (;;)
    {
      int i;
      int m;
      try
      {
        int n = c.getWidth();
        int i1 = c.getHeight();
        if ((n == 0) || (i1 == 0))
        {
          paramVarArgs = Boolean.valueOf(false);
          return paramVarArgs;
        }
        i = 0;
        j = 0;
        int k;
        if (i < n)
        {
          k = 0;
          if (k >= i1) {
            break label139;
          }
          m = j;
          if (c.getPixel(i, k) != 0) {
            m = j + 1;
          }
        }
        else
        {
          if (j / (n * i1 / 100.0D) > 0.1D)
          {
            bool = true;
            paramVarArgs = Boolean.valueOf(bool);
            continue;
          }
          boolean bool = false;
          continue;
        }
        k += 10;
      }
      finally {}
      int j = m;
      continue;
      label139:
      i += 10;
    }
  }
  
  protected void a(Boolean paramBoolean)
  {
    fj.c(a);
    if ((paramBoolean.booleanValue()) || (a.c()) || (fj.d(a) <= 0L))
    {
      a.c = paramBoolean.booleanValue();
      fj.e(a).a(a.a, true);
    }
    while (fj.d(a) <= 0L) {
      return;
    }
    if (gz.a(2)) {
      gz.a("Ad not detected, scheduling another run.");
    }
    fj.g(a).postDelayed(a, fj.f(a));
  }
  
  protected void onPreExecute()
  {
    try
    {
      c = Bitmap.createBitmap(fj.a(a), fj.b(a), Bitmap.Config.ARGB_8888);
      b.setVisibility(0);
      b.measure(View.MeasureSpec.makeMeasureSpec(fj.a(a), 0), View.MeasureSpec.makeMeasureSpec(fj.b(a), 0));
      b.layout(0, 0, fj.a(a), fj.b(a));
      Canvas localCanvas = new Canvas(c);
      b.draw(localCanvas);
      b.invalidate();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */