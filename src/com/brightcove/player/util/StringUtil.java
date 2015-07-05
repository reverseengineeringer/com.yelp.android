package com.brightcove.player.util;

import java.util.Arrays;
import java.util.List;

public class StringUtil
{
  public static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.trim().isEmpty());
  }
  
  public static String join(List<String> paramList, String paramString)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramList.size())
    {
      localStringBuilder.append((String)paramList.get(i));
      if (i < paramList.size() - 1) {
        localStringBuilder.append(paramString);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String join(String[] paramArrayOfString, String paramString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      return null;
    }
    return join(Arrays.asList(paramArrayOfString), paramString);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.util.StringUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */