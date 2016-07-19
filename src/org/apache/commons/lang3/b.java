package org.apache.commons.lang3;

import java.util.Iterator;

public class b
{
  public static String a(char paramChar, int paramInt)
  {
    char[] arrayOfChar = new char[paramInt];
    paramInt -= 1;
    while (paramInt >= 0)
    {
      arrayOfChar[paramInt] = paramChar;
      paramInt -= 1;
    }
    return new String(arrayOfChar);
  }
  
  public static String a(Iterable<?> paramIterable, char paramChar)
  {
    if (paramIterable == null) {
      return null;
    }
    return a(paramIterable.iterator(), paramChar);
  }
  
  public static String a(String paramString, int paramInt)
  {
    int k = 0;
    Object localObject;
    if (paramString == null) {
      localObject = null;
    }
    int m;
    do
    {
      do
      {
        return (String)localObject;
        if (paramInt <= 0) {
          return "";
        }
        m = paramString.length();
        localObject = paramString;
      } while (paramInt == 1);
      localObject = paramString;
    } while (m == 0);
    if ((m == 1) && (paramInt <= 8192)) {
      return a(paramString.charAt(0), paramInt);
    }
    int n = m * paramInt;
    switch (m)
    {
    default: 
      localObject = new StringBuilder(n);
    }
    while (k < paramInt)
    {
      ((StringBuilder)localObject).append(paramString);
      k += 1;
      continue;
      return a(paramString.charAt(0), paramInt);
      int i = paramString.charAt(0);
      int j = paramString.charAt(1);
      paramString = new char[n];
      for (paramInt = paramInt * 2 - 2; paramInt >= 0; paramInt = paramInt - 1 - 1)
      {
        paramString[paramInt] = i;
        paramString[(paramInt + 1)] = j;
      }
      return new String(paramString);
    }
    return ((StringBuilder)localObject).toString();
  }
  
  public static String a(String paramString, int paramInt, char paramChar)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int i;
    do
    {
      return str;
      i = paramInt - paramString.length();
      str = paramString;
    } while (i <= 0);
    if (i > 8192) {
      return a(paramString, paramInt, String.valueOf(paramChar));
    }
    return a(paramChar, i).concat(paramString);
  }
  
  public static String a(String paramString1, int paramInt, String paramString2)
  {
    int i = 0;
    if (paramString1 == null) {
      paramString2 = null;
    }
    int j;
    int k;
    do
    {
      return paramString2;
      localObject = paramString2;
      if (a(paramString2)) {
        localObject = " ";
      }
      j = ((String)localObject).length();
      k = paramInt - paramString1.length();
      paramString2 = paramString1;
    } while (k <= 0);
    if ((j == 1) && (k <= 8192)) {
      return a(paramString1, paramInt, ((String)localObject).charAt(0));
    }
    if (k == j) {
      return ((String)localObject).concat(paramString1);
    }
    if (k < j) {
      return ((String)localObject).substring(0, k).concat(paramString1);
    }
    paramString2 = new char[k];
    Object localObject = ((String)localObject).toCharArray();
    paramInt = i;
    while (paramInt < k)
    {
      paramString2[paramInt] = localObject[(paramInt % j)];
      paramInt += 1;
    }
    return new String(paramString2).concat(paramString1);
  }
  
  public static String a(Iterator<?> paramIterator, char paramChar)
  {
    if (paramIterator == null) {
      return null;
    }
    if (!paramIterator.hasNext()) {
      return "";
    }
    Object localObject = paramIterator.next();
    if (!paramIterator.hasNext()) {
      return ObjectUtils.a(localObject);
    }
    StringBuilder localStringBuilder = new StringBuilder(256);
    if (localObject != null) {
      localStringBuilder.append(localObject);
    }
    while (paramIterator.hasNext())
    {
      localStringBuilder.append(paramChar);
      localObject = paramIterator.next();
      if (localObject != null) {
        localStringBuilder.append(localObject);
      }
    }
    return localStringBuilder.toString();
  }
  
  public static boolean a(CharSequence paramCharSequence)
  {
    return (paramCharSequence == null) || (paramCharSequence.length() == 0);
  }
  
  public static boolean a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramCharSequence1 == paramCharSequence2) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramCharSequence1 == null);
      bool1 = bool2;
    } while (paramCharSequence2 == null);
    if (((paramCharSequence1 instanceof String)) && ((paramCharSequence2 instanceof String))) {
      return paramCharSequence1.equals(paramCharSequence2);
    }
    return a.a(paramCharSequence1, false, 0, paramCharSequence2, 0, Math.max(paramCharSequence1.length(), paramCharSequence2.length()));
  }
  
  public static boolean b(CharSequence paramCharSequence)
  {
    if (a(paramCharSequence)) {
      return false;
    }
    int j = paramCharSequence.length();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label43;
      }
      if (!Character.isDigit(paramCharSequence.charAt(i))) {
        break;
      }
      i += 1;
    }
    label43:
    return true;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */