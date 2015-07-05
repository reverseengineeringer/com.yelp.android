package com.brightcove.player.view;

public class LayoutUtil
{
  public static String getSpecMode(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return "MeasureSpec.UNSPECIFIED";
    case -2147483648: 
      return "MeasureSpec.AT_MOST";
    }
    return "MeasureSpec.EXACTLY";
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.LayoutUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */