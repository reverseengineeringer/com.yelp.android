package com.ooyala.android;

import android.graphics.Typeface;

public class ClosedCaptionsStyle
{
  private int backgroundColor;
  private int bottomMargin;
  private int color;
  private Typeface font;
  
  public ClosedCaptionsStyle(int paramInt1, int paramInt2, Typeface paramTypeface)
  {
    color = paramInt1;
    backgroundColor = paramInt2;
    font = paramTypeface;
    bottomMargin = 0;
  }
  
  public int getBackgroundColor()
  {
    return backgroundColor;
  }
  
  public int getBottomMargin()
  {
    return bottomMargin;
  }
  
  public int getColor()
  {
    return color;
  }
  
  public Typeface getFont()
  {
    return font;
  }
  
  public void setBackgroundColor(int paramInt)
  {
    backgroundColor = paramInt;
  }
  
  public void setBottomMargin(int paramInt)
  {
    bottomMargin = paramInt;
  }
  
  public void setColor(int paramInt)
  {
    color = paramInt;
  }
  
  public void setFont(Typeface paramTypeface)
  {
    font = paramTypeface;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.ClosedCaptionsStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */