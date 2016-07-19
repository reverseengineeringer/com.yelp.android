package com.google.android.gms.ads.internal;

import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.ib;

@fv
public class f
{
  private a a;
  private boolean b;
  private boolean c;
  
  public f()
  {
    c = ((Boolean)ao.i.c()).booleanValue();
  }
  
  public f(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void a()
  {
    b = true;
  }
  
  public void a(a parama)
  {
    a = parama;
  }
  
  public void a(String paramString)
  {
    gz.a("Action was blocked because no click was detected.");
    if (a != null) {
      a.a(paramString);
    }
  }
  
  public boolean b()
  {
    return (!c) || (b);
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString);
  }
  
  @fv
  public static class b
    implements f.a
  {
    private final gr.a a;
    private final ib b;
    
    public b(gr.a parama, ib paramib)
    {
      a = parama;
      b = paramib;
    }
    
    public void a(String paramString)
    {
      gz.a("An auto-clicking creative is blocked");
      Uri.Builder localBuilder = new Uri.Builder();
      localBuilder.scheme("https");
      localBuilder.path("//pagead2.googlesyndication.com/pagead/gen_204");
      localBuilder.appendQueryParameter("id", "gmob-apps-blocked-navigation");
      if (!TextUtils.isEmpty(paramString)) {
        localBuilder.appendQueryParameter("navigationURL", paramString);
      }
      if ((a != null) && (a.b != null) && (!TextUtils.isEmpty(a.b.o))) {
        localBuilder.appendQueryParameter("debugDialog", a.b.o);
      }
      s.e().a(b.getContext(), b.o().b, localBuilder.toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */