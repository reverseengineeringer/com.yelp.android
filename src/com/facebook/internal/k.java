package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import java.util.Locale;

public class k
{
  private Context a;
  private Uri b;
  private b c;
  private boolean d;
  private Object e;
  
  private k(a parama)
  {
    a = a.a(parama);
    b = a.b(parama);
    c = a.c(parama);
    d = a.d(parama);
    if (a.e(parama) == null) {}
    for (parama = new Object();; parama = a.e(parama))
    {
      e = parama;
      return;
    }
  }
  
  public static Uri a(String paramString, int paramInt1, int paramInt2)
  {
    v.a(paramString, "userId");
    paramInt1 = Math.max(paramInt1, 0);
    paramInt2 = Math.max(paramInt2, 0);
    if ((paramInt1 == 0) && (paramInt2 == 0)) {
      throw new IllegalArgumentException("Either width or height must be greater than 0");
    }
    paramString = new Uri.Builder().scheme("https").authority("graph.facebook.com").path(String.format(Locale.US, "%s/picture", new Object[] { paramString }));
    if (paramInt2 != 0) {
      paramString.appendQueryParameter("height", String.valueOf(paramInt2));
    }
    if (paramInt1 != 0) {
      paramString.appendQueryParameter("width", String.valueOf(paramInt1));
    }
    paramString.appendQueryParameter("migration_overrides", "{october_2012:true}");
    return paramString.build();
  }
  
  public Context a()
  {
    return a;
  }
  
  public Uri b()
  {
    return b;
  }
  
  public b c()
  {
    return c;
  }
  
  public boolean d()
  {
    return d;
  }
  
  public Object e()
  {
    return e;
  }
  
  public static class a
  {
    private Context a;
    private Uri b;
    private k.b c;
    private boolean d;
    private Object e;
    
    public a(Context paramContext, Uri paramUri)
    {
      v.a(paramUri, "imageUri");
      a = paramContext;
      b = paramUri;
    }
    
    public a a(k.b paramb)
    {
      c = paramb;
      return this;
    }
    
    public a a(Object paramObject)
    {
      e = paramObject;
      return this;
    }
    
    public a a(boolean paramBoolean)
    {
      d = paramBoolean;
      return this;
    }
    
    public k a()
    {
      return new k(this, null);
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(l paraml);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */