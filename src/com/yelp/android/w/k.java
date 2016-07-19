package com.yelp.android.w;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class k
  extends h<InputStream>
{
  public k(Context paramContext, Uri paramUri)
  {
    super(paramContext, paramUri);
  }
  
  protected InputStream a(Uri paramUri, ContentResolver paramContentResolver)
    throws FileNotFoundException
  {
    return paramContentResolver.openInputStream(paramUri);
  }
  
  protected void a(InputStream paramInputStream)
    throws IOException
  {
    paramInputStream.close();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */