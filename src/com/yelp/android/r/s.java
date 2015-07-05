package com.yelp.android.r;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.InputStream;

public class s
  extends j<InputStream>
{
  public s(Context paramContext, Uri paramUri)
  {
    super(paramContext, paramUri);
  }
  
  protected InputStream a(Uri paramUri, ContentResolver paramContentResolver)
  {
    return paramContentResolver.openInputStream(paramUri);
  }
  
  protected void a(InputStream paramInputStream)
  {
    paramInputStream.close();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.r.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */