package com.yelp.android.ui.widgets;

import android.util.SparseArray;

public enum RoundedWebImageView$RoundingMode
{
  private static SparseArray<RoundingMode> modes;
  protected final int attrEnumValue;
  
  static
  {
    int i = 0;
    DEFAULT = new RoundingMode("DEFAULT", 0, 0);
    CLIP = new RoundingMode("CLIP", 1, 1);
    OVERLAY = new RoundingMode("OVERLAY", 2, 2);
    NONE = new RoundingMode("NONE", 3, 3);
    $VALUES = new RoundingMode[] { DEFAULT, CLIP, OVERLAY, NONE };
    modes = new SparseArray();
    RoundingMode[] arrayOfRoundingMode = values();
    int j = arrayOfRoundingMode.length;
    while (i < j)
    {
      RoundingMode localRoundingMode = arrayOfRoundingMode[i];
      modes.append(attrEnumValue, localRoundingMode);
      i += 1;
    }
  }
  
  private RoundedWebImageView$RoundingMode(int paramInt)
  {
    attrEnumValue = paramInt;
  }
  
  public static RoundingMode modeForValue(int paramInt)
  {
    return (RoundingMode)modes.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.RoundedWebImageView.RoundingMode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */