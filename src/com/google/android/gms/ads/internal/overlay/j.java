package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.ib;
import java.util.HashMap;

@fv
public class j
  extends FrameLayout
  implements g
{
  private final ib a;
  private final FrameLayout b;
  private final t c;
  private h d;
  private boolean e;
  private boolean f;
  private TextView g;
  private long h;
  private long i;
  private String j;
  private String k;
  
  public j(Context paramContext, ib paramib, int paramInt, ax paramax, au paramau)
  {
    super(paramContext);
    a = paramib;
    b = new FrameLayout(paramContext);
    addView(b, new FrameLayout.LayoutParams(-1, -1));
    zzb.zzv(paramib.h());
    d = hb.a(paramContext, paramib, paramInt, paramax, paramau);
    if (d != null) {
      b.addView(d, new FrameLayout.LayoutParams(-1, -1, 17));
    }
    g = new TextView(paramContext);
    g.setBackgroundColor(-16777216);
    o();
    c = new t(this);
    c.b();
    if (d != null) {
      d.a(this);
    }
    if (d == null) {
      a("AdVideoUnderlay Error", "Allocating player failed.");
    }
  }
  
  public static void a(ib paramib)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", "no_video_view");
    paramib.a("onVideoEvent", localHashMap);
  }
  
  private void a(String paramString, String... paramVarArgs)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("event", paramString);
    int n = paramVarArgs.length;
    int m = 0;
    paramString = null;
    if (m < n)
    {
      String str = paramVarArgs[m];
      if (paramString == null) {}
      for (paramString = str;; paramString = null)
      {
        m += 1;
        break;
        localHashMap.put(paramString, str);
      }
    }
    a.a("onVideoEvent", localHashMap);
  }
  
  private void o()
  {
    if (!q())
    {
      b.addView(g, new FrameLayout.LayoutParams(-1, -1));
      b.bringChildToFront(g);
    }
  }
  
  private void p()
  {
    if (q()) {
      b.removeView(g);
    }
  }
  
  private boolean q()
  {
    return g.getParent() != null;
  }
  
  private void r()
  {
    if (a.f() == null) {
      break label12;
    }
    label12:
    while (e) {
      return;
    }
    if ((a.f().getWindow().getAttributes().flags & 0x80) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      if (f) {
        break;
      }
      a.f().getWindow().addFlags(128);
      e = true;
      return;
    }
  }
  
  private void s()
  {
    if (a.f() == null) {}
    while ((!e) || (f)) {
      return;
    }
    a.f().getWindow().clearFlags(128);
    e = false;
  }
  
  public void a() {}
  
  public void a(float paramFloat)
  {
    if (d == null) {
      return;
    }
    d.a(paramFloat);
  }
  
  public void a(int paramInt)
  {
    if (d == null) {
      return;
    }
    d.a(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt3 == 0) || (paramInt4 == 0)) {
      return;
    }
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(paramInt3 + 2, paramInt4 + 2);
    localLayoutParams.setMargins(paramInt1 - 1, paramInt2 - 1, 0, 0);
    b.setLayoutParams(localLayoutParams);
    requestLayout();
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    if (d == null) {
      return;
    }
    d.dispatchTouchEvent(paramMotionEvent);
  }
  
  public void a(String paramString)
  {
    k = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    a("error", new String[] { "what", paramString1, "extra", paramString2 });
  }
  
  public void b()
  {
    if (d == null) {}
    while (i != 0L) {
      return;
    }
    a("canplaythrough", new String[] { "duration", String.valueOf(d.getDuration() / 1000.0F), "videoWidth", String.valueOf(d.getVideoWidth()), "videoHeight", String.valueOf(d.getVideoHeight()) });
  }
  
  public void c()
  {
    r();
  }
  
  public void d()
  {
    a("pause", new String[0]);
    s();
  }
  
  public void e()
  {
    a("ended", new String[0]);
    s();
  }
  
  public void f()
  {
    o();
    i = h;
  }
  
  public void g()
  {
    if (d == null) {
      return;
    }
    if (!TextUtils.isEmpty(k))
    {
      d.setMimeType(j);
      d.setVideoPath(k);
      return;
    }
    a("no_src", new String[0]);
  }
  
  public void h()
  {
    if (d == null) {
      return;
    }
    d.d();
  }
  
  public void i()
  {
    if (d == null) {
      return;
    }
    d.c();
  }
  
  public void j()
  {
    if (d == null) {
      return;
    }
    d.e();
  }
  
  public void k()
  {
    if (d == null) {
      return;
    }
    d.f();
  }
  
  public void l()
  {
    if (d == null) {
      return;
    }
    TextView localTextView = new TextView(d.getContext());
    localTextView.setText("AdMob - " + d.a());
    localTextView.setTextColor(-65536);
    localTextView.setBackgroundColor(65280);
    b.addView(localTextView, new FrameLayout.LayoutParams(-2, -2, 17));
    b.bringChildToFront(localTextView);
  }
  
  public void m()
  {
    c.a();
    if (d != null) {
      d.b();
    }
    s();
  }
  
  void n()
  {
    if (d == null) {}
    long l;
    do
    {
      return;
      l = d.getCurrentPosition();
    } while ((h == l) || (l <= 0L));
    p();
    a("timeupdate", new String[] { "time", String.valueOf((float)l / 1000.0F) });
    h = l;
  }
  
  public void setMimeType(String paramString)
  {
    j = paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */