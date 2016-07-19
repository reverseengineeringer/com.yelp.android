package org.apache.commons.lang3;

public class c
{
  public static void a(long paramLong1, long paramLong2, long paramLong3, String paramString)
  {
    if ((paramLong3 < paramLong1) || (paramLong3 > paramLong2)) {
      throw new IllegalArgumentException(String.format(paramString, new Object[0]));
    }
  }
  
  public static void a(boolean paramBoolean, String paramString, Object... paramVarArgs)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(String.format(paramString, paramVarArgs));
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */