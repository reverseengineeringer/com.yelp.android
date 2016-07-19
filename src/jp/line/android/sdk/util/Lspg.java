package jp.line.android.sdk.util;

import android.content.Context;

public final class Lspg
{
  static
  {
    System.loadLibrary("line-sdk-encryption");
  }
  
  public static native byte[] gk(Context paramContext, int paramInt);
}

/* Location:
 * Qualified Name:     jp.line.android.sdk.util.Lspg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */