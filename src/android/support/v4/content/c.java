package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;

class c
{
  public static Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, Object paramObject)
  {
    return paramContentResolver.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, (CancellationSignal)paramObject);
  }
  
  static boolean a(Exception paramException)
  {
    return paramException instanceof OperationCanceledException;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */