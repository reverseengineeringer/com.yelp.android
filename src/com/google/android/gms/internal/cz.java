package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Future;

@fv
public class cz
{
  private cy a(Context paramContext, VersionInfoParcel paramVersionInfoParcel, final a<cy> parama, j paramj)
  {
    paramContext = new da(paramContext, paramVersionInfoParcel, paramj);
    a = paramContext;
    paramContext.a(new cy.a()
    {
      public void a()
      {
        parama.b(paramaa);
      }
    });
    return paramContext;
  }
  
  public Future<cy> a(final Context paramContext, final VersionInfoParcel paramVersionInfoParcel, final String paramString, final j paramj)
  {
    final a locala = new a(null);
    hd.a.post(new Runnable()
    {
      public void run()
      {
        cz.a(cz.this, paramContext, paramVersionInfoParcel, locala, paramj).b(paramString);
      }
    });
    return locala;
  }
  
  private static class a<JavascriptEngine>
    extends hp<JavascriptEngine>
  {
    JavascriptEngine a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */