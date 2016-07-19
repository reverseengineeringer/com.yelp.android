package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View.MeasureSpec;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.s;

@fv
public class fj
  implements Runnable
{
  protected final ib a;
  protected boolean b;
  protected boolean c;
  private final Handler d;
  private final long e;
  private long f;
  private ic.a g;
  private final int h;
  private final int i;
  
  public fj(ic.a parama, ib paramib, int paramInt1, int paramInt2)
  {
    this(parama, paramib, paramInt1, paramInt2, 200L, 50L);
  }
  
  public fj(ic.a parama, ib paramib, int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    e = paramLong1;
    f = paramLong2;
    d = new Handler(Looper.getMainLooper());
    a = paramib;
    g = parama;
    b = false;
    c = false;
    h = paramInt2;
    i = paramInt1;
  }
  
  public void a()
  {
    d.postDelayed(this, e);
  }
  
  public void a(AdResponseParcel paramAdResponseParcel)
  {
    a(paramAdResponseParcel, new ik(this, a, q));
  }
  
  public void a(AdResponseParcel paramAdResponseParcel, ik paramik)
  {
    a.setWebViewClient(paramik);
    ib localib = a;
    if (TextUtils.isEmpty(b)) {}
    for (paramik = null;; paramik = s.e().a(b))
    {
      localib.loadDataWithBaseURL(paramik, c, "text/html", "UTF-8", null);
      return;
    }
  }
  
  public void b()
  {
    try
    {
      b = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean c()
  {
    try
    {
      boolean bool = b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean d()
  {
    return c;
  }
  
  public void run()
  {
    if ((a == null) || (c()))
    {
      g.a(a, true);
      return;
    }
    new a(a.a()).execute(new Void[0]);
  }
  
  protected final class a
    extends AsyncTask<Void, Void, Boolean>
  {
    private final WebView b;
    private Bitmap c;
    
    public a(WebView paramWebView)
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
      fj.c(fj.this);
      if ((paramBoolean.booleanValue()) || (c()) || (fj.d(fj.this) <= 0L))
      {
        c = paramBoolean.booleanValue();
        fj.e(fj.this).a(a, true);
      }
      while (fj.d(fj.this) <= 0L) {
        return;
      }
      if (gz.a(2)) {
        gz.a("Ad not detected, scheduling another run.");
      }
      fj.g(fj.this).postDelayed(fj.this, fj.f(fj.this));
    }
    
    protected void onPreExecute()
    {
      try
      {
        c = Bitmap.createBitmap(fj.a(fj.this), fj.b(fj.this), Bitmap.Config.ARGB_8888);
        b.setVisibility(0);
        b.measure(View.MeasureSpec.makeMeasureSpec(fj.a(fj.this), 0), View.MeasureSpec.makeMeasureSpec(fj.b(fj.this), 0));
        b.layout(0, 0, fj.a(fj.this), fj.b(fj.this));
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */