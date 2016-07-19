package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v4.os.OperationCanceledException;

public class b
{
  private static final a a = new b();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new c();
      return;
    }
  }
  
  public static Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, android.support.v4.os.c paramc)
  {
    return a.a(paramContentResolver, paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramc);
  }
  
  static abstract interface a
  {
    public abstract Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, android.support.v4.os.c paramc);
  }
  
  static class b
    implements b.a
  {
    public Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, android.support.v4.os.c paramc)
    {
      if (paramc != null) {
        paramc.b();
      }
      return paramContentResolver.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
    }
  }
  
  static class c
    extends b.b
  {
    public Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, android.support.v4.os.c paramc)
    {
      if (paramc != null) {}
      for (;;)
      {
        try
        {
          paramc = paramc.d();
          paramContentResolver = c.a(paramContentResolver, paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramc);
          return paramContentResolver;
        }
        catch (Exception paramContentResolver)
        {
          if (!c.a(paramContentResolver)) {
            continue;
          }
          throw new OperationCanceledException();
          throw paramContentResolver;
        }
        paramc = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */