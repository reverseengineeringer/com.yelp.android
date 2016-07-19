package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.yelp.android.az.b.a;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;

public abstract class h
  implements g
{
  protected static GoogleApiClient i;
  protected MotionEvent a;
  protected LinkedList<MotionEvent> b = new LinkedList();
  protected long c = 0L;
  protected long d = 0L;
  protected long e = 0L;
  protected long f = 0L;
  protected DisplayMetrics g;
  protected k h;
  private boolean j = false;
  
  protected h(Context paramContext, k paramk)
  {
    h = paramk;
    try
    {
      g = paramContext.getResources().getDisplayMetrics();
      return;
    }
    catch (UnsupportedOperationException paramContext)
    {
      g = new DisplayMetrics();
      g.density = 1.0F;
    }
  }
  
  private String a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    try
    {
      paramContext = c(paramContext);
      j = true;
      while ((paramContext == null) || (paramContext.g() == 0))
      {
        return Integer.toString(5);
        paramContext = b(paramContext);
      }
      paramContext = a(paramContext, paramString);
      return paramContext;
    }
    catch (NoSuchAlgorithmException paramContext)
    {
      return Integer.toString(7);
    }
    catch (UnsupportedEncodingException paramContext)
    {
      return Integer.toString(7);
    }
    catch (IOException paramContext) {}
    return Integer.toString(3);
  }
  
  public String a(Context paramContext)
  {
    return a(paramContext, null, false);
  }
  
  public String a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, true);
  }
  
  protected String a(b.a parama, String paramString)
    throws NoSuchAlgorithmException, UnsupportedEncodingException, IOException
  {
    return a(lq.a(parama), paramString);
  }
  
  protected String a(String paramString)
  {
    Object localObject = paramString;
    if (paramString != null)
    {
      localObject = paramString;
      if (paramString.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"))
      {
        paramString = UUID.fromString(paramString);
        localObject = new byte[16];
        ByteBuffer localByteBuffer = ByteBuffer.wrap((byte[])localObject);
        localByteBuffer.putLong(paramString.getMostSignificantBits());
        localByteBuffer.putLong(paramString.getLeastSignificantBits());
        localObject = h.a((byte[])localObject, true);
      }
    }
    return (String)localObject;
  }
  
  String a(byte[] paramArrayOfByte, String paramString)
    throws NoSuchAlgorithmException, UnsupportedEncodingException, IOException
  {
    Object localObject = paramArrayOfByte;
    if (paramArrayOfByte.length > 239)
    {
      paramArrayOfByte = new b.a();
      t = Long.valueOf(1L);
      localObject = lq.a(paramArrayOfByte);
    }
    if (localObject.length < 239)
    {
      paramArrayOfByte = new byte[239 - localObject.length];
      new SecureRandom().nextBytes(paramArrayOfByte);
    }
    for (paramArrayOfByte = ByteBuffer.allocate(240).put((byte)localObject.length).put((byte[])localObject).put(paramArrayOfByte).array();; paramArrayOfByte = ByteBuffer.allocate(240).put((byte)localObject.length).put((byte[])localObject).array())
    {
      localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramArrayOfByte);
      localObject = ((MessageDigest)localObject).digest();
      paramArrayOfByte = ByteBuffer.allocate(256).put((byte[])localObject).put(paramArrayOfByte).array();
      localObject = new byte['Ā'];
      new f().a(paramArrayOfByte, (byte[])localObject);
      if ((paramString != null) && (paramString.length() > 0)) {
        a(paramString, (byte[])localObject);
      }
      return h.a((byte[])localObject, true);
    }
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (a != null) {
      a.recycle();
    }
    a = MotionEvent.obtain(0L, paramInt3, 1, paramInt1 * g.density, paramInt2 * g.density, 0.0F, 0.0F, 0, 0.0F, 0.0F, 0, 0);
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    if (j)
    {
      f = 0L;
      e = 0L;
      d = 0L;
      c = 0L;
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        ((MotionEvent)localIterator.next()).recycle();
      }
      b.clear();
      a = null;
      j = false;
    }
    switch (paramMotionEvent.getAction())
    {
    default: 
      return;
    case 1: 
      a = MotionEvent.obtain(paramMotionEvent);
      b.add(a);
      if (b.size() > 6) {
        ((MotionEvent)b.remove()).recycle();
      }
      e += 1L;
      return;
    case 0: 
      c += 1L;
      return;
    case 3: 
      f += 1L;
      return;
    }
    d += paramMotionEvent.getHistorySize() + 1;
  }
  
  void a(String paramString, byte[] paramArrayOfByte)
    throws UnsupportedEncodingException
  {
    String str = paramString;
    if (paramString.length() > 32) {
      str = paramString.substring(0, 32);
    }
    new lj(str.getBytes("UTF-8")).a(paramArrayOfByte);
  }
  
  protected abstract b.a b(Context paramContext);
  
  protected abstract b.a c(Context paramContext);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */