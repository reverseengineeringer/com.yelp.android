package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.os.Handler;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.d;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.ib;

@fv
class l$b
  extends gy
{
  private final Bitmap b;
  private final String c;
  
  public l$b(l paraml, Bitmap paramBitmap, String paramString)
  {
    b = paramBitmap;
    c = paramString;
  }
  
  public void a()
  {
    boolean bool1;
    boolean bool2;
    boolean bool3;
    if (a.f.F)
    {
      bool1 = s.e().a(a.f.c, b, c);
      bool2 = a.f.F;
      bool3 = a.C();
      if (!bool1) {
        break label221;
      }
    }
    label221:
    for (final Object localObject = c;; localObject = null)
    {
      localObject = new InterstitialAdParameterParcel(bool2, bool3, (String)localObject, l.a(a), l.b(a));
      int j = a.f.j.b.q();
      int i = j;
      if (j == -1) {
        i = a.f.j.g;
      }
      localObject = new AdOverlayInfoParcel(a, a, a, a.f.j.b, i, a.f.e, a.f.j.A, (InterstitialAdParameterParcel)localObject);
      hd.a.post(new Runnable()
      {
        public void run()
        {
          s.c().a(a.f.c, localObject);
        }
      });
      return;
      bool1 = false;
      break;
    }
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.l.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */