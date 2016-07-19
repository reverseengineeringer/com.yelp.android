package com.google.android.gms.ads.internal;

import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.ib;

@fv
public class f$b
  implements f.a
{
  private final gr.a a;
  private final ib b;
  
  public f$b(gr.a parama, ib paramib)
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

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */