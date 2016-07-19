package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;

public class b
  extends zzk<String>
{
  private final jc.b<String> a;
  
  public b(int paramInt, String paramString, jc.b<String> paramb, jc.a parama)
  {
    super(paramInt, paramString, parama);
    a = paramb;
  }
  
  public b(String paramString, jc.b<String> paramb, jc.a parama)
  {
    this(0, paramString, paramb, parama);
  }
  
  protected jc<String> a(gm paramgm)
  {
    try
    {
      String str1 = new String(b, lz.a(c));
      return jc.a(str1, lz.a(paramgm));
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        String str2 = new String(b);
      }
    }
  }
  
  protected void a(String paramString)
  {
    a.a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */