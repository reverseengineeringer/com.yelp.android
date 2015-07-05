package com.yelp.android.r;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.InputStream;

class o
{
  private static final l a = new l();
  private final l b;
  private n c;
  
  public o(l paraml, n paramn)
  {
    b = paraml;
    c = paramn;
  }
  
  public o(n paramn)
  {
    this(a, paramn);
  }
  
  public InputStream a(Context paramContext, Uri paramUri)
  {
    InputStream localInputStream = null;
    Cursor localCursor = c.a(paramContext, paramUri);
    if (localCursor != null) {}
    for (;;)
    {
      try
      {
        if (localCursor.moveToFirst())
        {
          paramUri = localCursor.getString(0);
          if (!TextUtils.isEmpty(paramUri))
          {
            paramUri = b.a(paramUri);
            if ((b.a(paramUri)) && (b.b(paramUri) > 0L))
            {
              paramUri = Uri.fromFile(paramUri);
              if (localCursor != null) {
                localCursor.close();
              }
              if (paramUri != null) {
                localInputStream = paramContext.getContentResolver().openInputStream(paramUri);
              }
              return localInputStream;
            }
          }
        }
      }
      finally
      {
        if (localCursor != null) {
          localCursor.close();
        }
      }
      paramUri = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.r.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */