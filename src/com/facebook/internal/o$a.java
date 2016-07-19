package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.FacebookContentProvider;
import com.facebook.FacebookException;
import com.facebook.g;
import java.util.UUID;

public final class o$a
{
  private final UUID a;
  private final String b;
  private final String c;
  private Bitmap d;
  private Uri e;
  private boolean f;
  private boolean g;
  
  private o$a(UUID paramUUID, Bitmap paramBitmap, Uri paramUri)
  {
    a = paramUUID;
    d = paramBitmap;
    e = paramUri;
    if (paramUri != null)
    {
      paramBitmap = paramUri.getScheme();
      if ("content".equalsIgnoreCase(paramBitmap))
      {
        f = true;
        g = true;
        if (g) {
          break label158;
        }
        paramBitmap = null;
        label56:
        c = paramBitmap;
        if (g) {
          break label168;
        }
      }
    }
    label158:
    label168:
    for (paramUUID = e.toString();; paramUUID = FacebookContentProvider.a(g.h(), paramUUID, c))
    {
      b = paramUUID;
      return;
      if ("file".equalsIgnoreCase(paramUri.getScheme()))
      {
        g = true;
        break;
      }
      if (u.b(paramUri)) {
        break;
      }
      throw new FacebookException("Unsupported scheme for image Uri : " + paramBitmap);
      if (paramBitmap != null)
      {
        g = true;
        break;
      }
      throw new FacebookException("Cannot share a photo without a bitmap or Uri set");
      paramBitmap = UUID.randomUUID().toString();
      break label56;
    }
  }
  
  public String a()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.o.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */