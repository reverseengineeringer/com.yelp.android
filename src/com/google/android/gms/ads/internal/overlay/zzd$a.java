package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.hg;

@fv
final class zzd$a
  extends RelativeLayout
{
  hg a;
  
  public zzd$a(Context paramContext, String paramString)
  {
    super(paramContext);
    a = new hg(paramContext, paramString);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    a.a(paramMotionEvent);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.zzd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */