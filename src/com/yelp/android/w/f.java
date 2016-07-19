package com.yelp.android.w;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;

public class f
  extends h<ParcelFileDescriptor>
{
  public f(Context paramContext, Uri paramUri)
  {
    super(paramContext, paramUri);
  }
  
  protected ParcelFileDescriptor a(Uri paramUri, ContentResolver paramContentResolver)
    throws FileNotFoundException
  {
    return paramContentResolver.openAssetFileDescriptor(paramUri, "r").getParcelFileDescriptor();
  }
  
  protected void a(ParcelFileDescriptor paramParcelFileDescriptor)
    throws IOException
  {
    paramParcelFileDescriptor.close();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */