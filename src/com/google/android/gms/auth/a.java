package com.google.android.gms.auth;

import android.content.Context;
import java.io.IOException;

public final class a
  extends e
{
  public static final String a = e.c;
  public static final String b = e.d;
  
  @Deprecated
  public static String a(Context paramContext, String paramString1, String paramString2)
    throws IOException, UserRecoverableAuthException, GoogleAuthException
  {
    return e.b(paramContext, paramString1, paramString2);
  }
  
  @Deprecated
  public static void a(Context paramContext, String paramString)
  {
    e.b(paramContext, paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */