package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.internal.jv;

final class a$a
{
  public final Uri uri;
  
  public a$a(Uri paramUri)
  {
    uri = paramUri;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {
      return false;
    }
    if (this == paramObject) {
      return true;
    }
    return jv.equal(uri, uri);
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { uri });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */