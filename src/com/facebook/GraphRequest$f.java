package com.facebook;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import com.facebook.internal.n;
import com.facebook.internal.u;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class GraphRequest$f
  implements GraphRequest.d
{
  private final OutputStream a;
  private final n b;
  private boolean c = true;
  private boolean d = false;
  
  public GraphRequest$f(OutputStream paramOutputStream, n paramn, boolean paramBoolean)
  {
    a = paramOutputStream;
    b = paramn;
    d = paramBoolean;
  }
  
  private RuntimeException b()
  {
    return new IllegalArgumentException("value is not a supported type.");
  }
  
  public void a()
    throws IOException
  {
    if (!d)
    {
      b("--%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
      return;
    }
    a.write("&".getBytes());
  }
  
  public void a(String paramString, Bitmap paramBitmap)
    throws IOException
  {
    a(paramString, paramString, "image/png");
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, a);
    b("", new Object[0]);
    a();
    if (b != null) {
      b.a("    " + paramString, "<Image>");
    }
  }
  
  public void a(String paramString1, Uri paramUri, String paramString2)
    throws IOException
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "content/unknown";
    }
    a(paramString1, paramString1, str);
    paramString2 = g.f().getContentResolver().openInputStream(paramUri);
    if ((a instanceof m))
    {
      long l = u.c(paramUri);
      ((m)a).a(l);
    }
    for (int i = 0;; i = u.a(paramString2, a) + 0)
    {
      b("", new Object[0]);
      a();
      if (b != null) {
        b.a("    " + paramString1, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(i) }));
      }
      return;
    }
  }
  
  public void a(String paramString1, ParcelFileDescriptor paramParcelFileDescriptor, String paramString2)
    throws IOException
  {
    String str = paramString2;
    if (paramString2 == null) {
      str = "content/unknown";
    }
    a(paramString1, paramString1, str);
    if ((a instanceof m)) {
      ((m)a).a(paramParcelFileDescriptor.getStatSize());
    }
    for (int i = 0;; i = u.a(new ParcelFileDescriptor.AutoCloseInputStream(paramParcelFileDescriptor), a) + 0)
    {
      b("", new Object[0]);
      a();
      if (b != null) {
        b.a("    " + paramString1, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(i) }));
      }
      return;
    }
  }
  
  public void a(String paramString, Object paramObject, GraphRequest paramGraphRequest)
    throws IOException
  {
    if ((a instanceof p)) {
      ((p)a).a(paramGraphRequest);
    }
    if (GraphRequest.b(paramObject))
    {
      a(paramString, GraphRequest.c(paramObject));
      return;
    }
    if ((paramObject instanceof Bitmap))
    {
      a(paramString, (Bitmap)paramObject);
      return;
    }
    if ((paramObject instanceof byte[]))
    {
      a(paramString, (byte[])paramObject);
      return;
    }
    if ((paramObject instanceof Uri))
    {
      a(paramString, (Uri)paramObject, null);
      return;
    }
    if ((paramObject instanceof ParcelFileDescriptor))
    {
      a(paramString, (ParcelFileDescriptor)paramObject, null);
      return;
    }
    if ((paramObject instanceof GraphRequest.ParcelableResourceWithMimeType))
    {
      paramGraphRequest = (GraphRequest.ParcelableResourceWithMimeType)paramObject;
      paramObject = paramGraphRequest.b();
      paramGraphRequest = paramGraphRequest.a();
      if ((paramObject instanceof ParcelFileDescriptor))
      {
        a(paramString, (ParcelFileDescriptor)paramObject, paramGraphRequest);
        return;
      }
      if ((paramObject instanceof Uri))
      {
        a(paramString, (Uri)paramObject, paramGraphRequest);
        return;
      }
      throw b();
    }
    throw b();
  }
  
  public void a(String paramString1, String paramString2)
    throws IOException
  {
    a(paramString1, null, null);
    b("%s", new Object[] { paramString2 });
    a();
    if (b != null) {
      b.a("    " + paramString1, paramString2);
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
    throws IOException
  {
    if (!d)
    {
      a("Content-Disposition: form-data; name=\"%s\"", new Object[] { paramString1 });
      if (paramString2 != null) {
        a("; filename=\"%s\"", new Object[] { paramString2 });
      }
      b("", new Object[0]);
      if (paramString3 != null) {
        b("%s: %s", new Object[] { "Content-Type", paramString3 });
      }
      b("", new Object[0]);
      return;
    }
    a.write(String.format("%s=", new Object[] { paramString1 }).getBytes());
  }
  
  public void a(String paramString, JSONArray paramJSONArray, Collection<GraphRequest> paramCollection)
    throws IOException, JSONException
  {
    if (!(a instanceof p)) {
      a(paramString, paramJSONArray.toString());
    }
    do
    {
      return;
      p localp = (p)a;
      a(paramString, null, null);
      a("[", new Object[0]);
      paramCollection = paramCollection.iterator();
      int i = 0;
      if (paramCollection.hasNext())
      {
        GraphRequest localGraphRequest = (GraphRequest)paramCollection.next();
        JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
        localp.a(localGraphRequest);
        if (i > 0) {
          a(",%s", new Object[] { localJSONObject.toString() });
        }
        for (;;)
        {
          i += 1;
          break;
          a("%s", new Object[] { localJSONObject.toString() });
        }
      }
      a("]", new Object[0]);
    } while (b == null);
    b.a("    " + paramString, paramJSONArray.toString());
  }
  
  public void a(String paramString, byte[] paramArrayOfByte)
    throws IOException
  {
    a(paramString, paramString, "content/unknown");
    a.write(paramArrayOfByte);
    b("", new Object[0]);
    a();
    if (b != null) {
      b.a("    " + paramString, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(paramArrayOfByte.length) }));
    }
  }
  
  public void a(String paramString, Object... paramVarArgs)
    throws IOException
  {
    if (!d)
    {
      if (c)
      {
        a.write("--".getBytes());
        a.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
        a.write("\r\n".getBytes());
        c = false;
      }
      a.write(String.format(paramString, paramVarArgs).getBytes());
      return;
    }
    a.write(URLEncoder.encode(String.format(Locale.US, paramString, paramVarArgs), "UTF-8").getBytes());
  }
  
  public void b(String paramString, Object... paramVarArgs)
    throws IOException
  {
    a(paramString, paramVarArgs);
    if (!d) {
      a("\r\n", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.GraphRequest.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */