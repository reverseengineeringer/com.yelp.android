package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookContentProvider;
import com.facebook.FacebookException;
import com.facebook.g;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public final class o
{
  private static final String a = o.class.getName();
  private static File b;
  
  public static a a(UUID paramUUID, Bitmap paramBitmap)
  {
    v.a(paramUUID, "callId");
    v.a(paramBitmap, "attachmentBitmap");
    return new a(paramUUID, paramBitmap, null, null);
  }
  
  public static a a(UUID paramUUID, Uri paramUri)
  {
    v.a(paramUUID, "callId");
    v.a(paramUri, "attachmentUri");
    return new a(paramUUID, null, paramUri, null);
  }
  
  static File a()
  {
    try
    {
      if (b == null) {
        b = new File(g.f().getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
      }
      File localFile = b;
      return localFile;
    }
    finally {}
  }
  
  public static File a(UUID paramUUID, String paramString)
    throws FileNotFoundException
  {
    if ((u.a(paramString)) || (paramUUID == null)) {
      throw new FileNotFoundException();
    }
    try
    {
      paramUUID = a(paramUUID, paramString, false);
      return paramUUID;
    }
    catch (IOException paramUUID)
    {
      throw new FileNotFoundException();
    }
  }
  
  static File a(UUID paramUUID, String paramString, boolean paramBoolean)
    throws IOException
  {
    paramUUID = a(paramUUID, paramBoolean);
    if (paramUUID == null) {
      return null;
    }
    try
    {
      paramUUID = new File(paramUUID, URLEncoder.encode(paramString, "UTF-8"));
      return paramUUID;
    }
    catch (UnsupportedEncodingException paramUUID) {}
    return null;
  }
  
  static File a(UUID paramUUID, boolean paramBoolean)
  {
    if (b == null) {
      paramUUID = null;
    }
    File localFile;
    do
    {
      do
      {
        return paramUUID;
        localFile = new File(b, paramUUID.toString());
        paramUUID = localFile;
      } while (!paramBoolean);
      paramUUID = localFile;
    } while (localFile.exists());
    localFile.mkdirs();
    return localFile;
  }
  
  private static void a(Bitmap paramBitmap, File paramFile)
    throws IOException
  {
    paramFile = new FileOutputStream(paramFile);
    try
    {
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, paramFile);
      return;
    }
    finally
    {
      u.a(paramFile);
    }
  }
  
  private static void a(Uri paramUri, boolean paramBoolean, File paramFile)
    throws IOException
  {
    paramFile = new FileOutputStream(paramFile);
    if (!paramBoolean) {}
    for (;;)
    {
      try
      {
        paramUri = new FileInputStream(paramUri.getPath());
        u.a(paramUri, paramFile);
        return;
      }
      finally
      {
        u.a(paramFile);
      }
      paramUri = g.f().getContentResolver().openInputStream(paramUri);
    }
  }
  
  public static void a(Collection<a> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.size() == 0)) {}
    for (;;)
    {
      return;
      if (b == null) {
        c();
      }
      b();
      Object localObject1 = new ArrayList();
      try
      {
        paramCollection = paramCollection.iterator();
        while (paramCollection.hasNext())
        {
          localObject2 = (a)paramCollection.next();
          if (a.a((a)localObject2))
          {
            localFile = a(a.b((a)localObject2), a.c((a)localObject2), true);
            ((List)localObject1).add(localFile);
            if (a.d((a)localObject2) == null) {
              break label172;
            }
            a(a.d((a)localObject2), localFile);
          }
        }
      }
      catch (IOException paramCollection)
      {
        for (;;)
        {
          Object localObject2;
          File localFile;
          Log.e(a, "Got unexpected exception:" + paramCollection);
          localObject1 = ((List)localObject1).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (File)((Iterator)localObject1).next();
            try
            {
              ((File)localObject2).delete();
            }
            catch (Exception localException) {}
          }
          label172:
          if (a.e(localException) != null) {
            a(a.e(localException), a.f(localException), localFile);
          }
        }
        throw new FacebookException(paramCollection);
      }
    }
  }
  
  public static void a(UUID paramUUID)
  {
    paramUUID = a(paramUUID, false);
    if (paramUUID != null) {
      u.a(paramUUID);
    }
  }
  
  static File b()
  {
    File localFile = a();
    localFile.mkdirs();
    return localFile;
  }
  
  public static void c()
  {
    u.a(a());
  }
  
  public static final class a
  {
    private final UUID a;
    private final String b;
    private final String c;
    private Bitmap d;
    private Uri e;
    private boolean f;
    private boolean g;
    
    private a(UUID paramUUID, Bitmap paramBitmap, Uri paramUri)
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
}

/* Location:
 * Qualified Name:     com.facebook.internal.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */