package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.os.c;

class b$b
  implements b.a
{
  public Cursor a(ContentResolver paramContentResolver, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, c paramc)
  {
    if (paramc != null) {
      paramc.b();
    }
    return paramContentResolver.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */