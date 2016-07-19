package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.s;

@fv
public class fm
  extends fi
  implements ic.a
{
  fm(Context paramContext, gr.a parama, ib paramib, fl.a parama1)
  {
    super(paramContext, parama, paramib, parama1);
  }
  
  protected void b()
  {
    if (e.e != -2) {
      return;
    }
    c.l().a(this);
    f();
    gz.a("Loading HTML in WebView.");
    c.loadDataWithBaseURL(s.e().a(e.b), e.c, "text/html", "UTF-8", null);
  }
  
  protected void f() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */