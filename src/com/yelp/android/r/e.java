package com.yelp.android.r;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;

public class e
  extends j<ParcelFileDescriptor>
{
  public e(Context paramContext, Uri paramUri)
  {
    super(paramContext, paramUri);
  }
  
  protected ParcelFileDescriptor a(Uri paramUri, ContentResolver paramContentResolver)
  {
    return paramContentResolver.openAssetFileDescriptor(paramUri, "r").getParcelFileDescriptor();
  }
  
  protected void a(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    paramParcelFileDescriptor.close();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.r.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */