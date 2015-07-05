package com.google.android.gms.internal;

import android.net.Uri.Builder;
import android.text.TextUtils;

@ey
public class v$b
  implements v.a
{
  private final fy.a mn;
  private final gu mo;
  
  public v$b(fy.a parama, gu paramgu)
  {
    mn = parama;
    mo = paramgu;
  }
  
  public void e(String paramString)
  {
    gr.S("An auto-clicking creative is blocked");
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("https");
    localBuilder.path("//pagead2.googlesyndication.com/pagead/gen_204");
    localBuilder.appendQueryParameter("id", "gmob-apps-blocked-navigation");
    if (!TextUtils.isEmpty(paramString)) {
      localBuilder.appendQueryParameter("navigationURL", paramString);
    }
    if ((mn != null) && (mn.vK != null) && (!TextUtils.isEmpty(mn.vK.ub))) {
      localBuilder.appendQueryParameter("debugDialog", mn.vK.ub);
    }
    gi.c(mo.getContext(), mo.dG().wS, localBuilder.toString());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.v.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */