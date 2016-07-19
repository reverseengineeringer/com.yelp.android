package com.yelp.android.aa;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.w.c;

public abstract class q<T>
  implements l<Uri, T>
{
  private final Context a;
  private final l<d, T> b;
  
  public q(Context paramContext, l<d, T> paraml)
  {
    a = paramContext;
    b = paraml;
  }
  
  private static boolean a(String paramString)
  {
    return ("file".equals(paramString)) || ("content".equals(paramString)) || ("android.resource".equals(paramString));
  }
  
  protected abstract c<T> a(Context paramContext, Uri paramUri);
  
  protected abstract c<T> a(Context paramContext, String paramString);
  
  public final c<T> a(Uri paramUri, int paramInt1, int paramInt2)
  {
    String str = paramUri.getScheme();
    Object localObject2 = null;
    Object localObject1;
    if (a(str)) {
      if (a.a(paramUri))
      {
        paramUri = a.b(paramUri);
        localObject1 = a(a, paramUri);
      }
    }
    do
    {
      do
      {
        return (c<T>)localObject1;
        return a(a, paramUri);
        localObject1 = localObject2;
      } while (b == null);
      if ("http".equals(str)) {
        break;
      }
      localObject1 = localObject2;
    } while (!"https".equals(str));
    return b.a(new d(paramUri.toString()), paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */