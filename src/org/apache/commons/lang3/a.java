package org.apache.commons.lang3;

public class a
{
  static boolean a(CharSequence paramCharSequence1, boolean paramBoolean, int paramInt1, CharSequence paramCharSequence2, int paramInt2, int paramInt3)
  {
    boolean bool2 = false;
    int i = paramInt1;
    int j = paramInt2;
    int k = paramInt3;
    boolean bool1;
    if ((paramCharSequence1 instanceof String))
    {
      i = paramInt1;
      j = paramInt2;
      k = paramInt3;
      if ((paramCharSequence2 instanceof String))
      {
        bool1 = ((String)paramCharSequence1).regionMatches(paramBoolean, paramInt1, (String)paramCharSequence2, paramInt2, paramInt3);
        return bool1;
      }
    }
    for (;;)
    {
      paramInt2 = k - 1;
      if (k <= 0) {
        break label176;
      }
      paramInt1 = i + 1;
      char c1 = paramCharSequence1.charAt(i);
      paramInt3 = j + 1;
      char c2 = paramCharSequence2.charAt(j);
      if (c1 == c2)
      {
        k = paramInt2;
        i = paramInt1;
        j = paramInt3;
      }
      else
      {
        bool1 = bool2;
        if (!paramBoolean) {
          break;
        }
        if (Character.toUpperCase(c1) != Character.toUpperCase(c2))
        {
          bool1 = bool2;
          if (Character.toLowerCase(c1) != Character.toLowerCase(c2)) {
            break;
          }
        }
        k = paramInt2;
        i = paramInt1;
        j = paramInt3;
      }
    }
    label176:
    return true;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */