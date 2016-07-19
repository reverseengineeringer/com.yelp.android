package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.Window;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.he;

@fv
class zzd$c
  extends gy
{
  private zzd$c(zzd paramzzd) {}
  
  public void a()
  {
    final Object localObject = s.e().b(zzd.a(a), a.b.q.d);
    if (localObject != null)
    {
      localObject = s.g().a(zzd.a(a), (Bitmap)localObject, a.b.q.e, a.b.q.f);
      hd.a.post(new Runnable()
      {
        public void run()
        {
          zzd.a(a).getWindow().setBackgroundDrawable(localObject);
        }
      });
    }
  }
  
  public void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.zzd.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */