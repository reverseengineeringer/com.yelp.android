package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.view.View.MeasureSpec;
import android.webkit.WebView;

public final class fb$a
  extends AsyncTask<Void, Void, Boolean>
{
  private final WebView tx;
  private Bitmap ty;
  
  public fb$a(fb paramfb, WebView paramWebView)
  {
    tx = paramWebView;
  }
  
  protected void a(Boolean paramBoolean)
  {
    fb.c(tz);
    if ((paramBoolean.booleanValue()) || (tz.cH()) || (fb.d(tz) <= 0L))
    {
      tz.tw = paramBoolean.booleanValue();
      fb.e(tz).a(tz.mo);
    }
    while (fb.d(tz) <= 0L) {
      return;
    }
    if (gr.v(2)) {
      gr.S("Ad not detected, scheduling another run.");
    }
    fb.g(tz).postDelayed(tz, fb.f(tz));
  }
  
  protected Boolean b(Void... paramVarArgs)
  {
    for (;;)
    {
      int i;
      int m;
      try
      {
        int n = ty.getWidth();
        int i1 = ty.getHeight();
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
          if (ty.getPixel(i, k) != 0) {
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
  
  protected void onPreExecute()
  {
    try
    {
      ty = Bitmap.createBitmap(fb.a(tz), fb.b(tz), Bitmap.Config.ARGB_8888);
      tx.setVisibility(0);
      tx.measure(View.MeasureSpec.makeMeasureSpec(fb.a(tz), 0), View.MeasureSpec.makeMeasureSpec(fb.b(tz), 0));
      tx.layout(0, 0, fb.a(tz), fb.b(tz));
      Canvas localCanvas = new Canvas(ty);
      tx.draw(localCanvas);
      tx.invalidate();
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
 * Qualified Name:     com.google.android.gms.internal.fb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */