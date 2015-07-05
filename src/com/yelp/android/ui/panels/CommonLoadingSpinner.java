package com.yelp.android.ui.panels;

import com.yelp.android.bf.f;

public enum CommonLoadingSpinner
  implements y
{
  DEFAULT(new int[] { f.general_spinner_000, f.general_spinner_001, f.general_spinner_002, f.general_spinner_003, f.general_spinner_004, f.general_spinner_005, f.general_spinner_006, f.general_spinner_007, f.general_spinner_008, f.general_spinner_009, f.general_spinner_010, f.general_spinner_011, f.general_spinner_012, f.general_spinner_013, f.general_spinner_014, f.general_spinner_015, f.general_spinner_016, f.general_spinner_017, f.general_spinner_018, f.general_spinner_019, f.general_spinner_020, f.general_spinner_021, f.general_spinner_022, f.general_spinner_023 }),  SMALL(new int[] { f.small_spinner_000, f.small_spinner_001, f.small_spinner_002, f.small_spinner_003, f.small_spinner_004, f.small_spinner_005, f.small_spinner_006, f.small_spinner_007, f.small_spinner_008, f.small_spinner_009, f.small_spinner_010, f.small_spinner_011, f.small_spinner_012, f.small_spinner_013, f.small_spinner_014, f.small_spinner_015, f.small_spinner_016, f.small_spinner_017, f.small_spinner_018, f.small_spinner_019, f.small_spinner_020, f.small_spinner_021, f.small_spinner_022, f.small_spinner_023 });
  
  private int[] mFrames;
  
  private CommonLoadingSpinner(int[] paramArrayOfInt)
  {
    mFrames = paramArrayOfInt;
  }
  
  public int[] getFrames()
  {
    return mFrames;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.CommonLoadingSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */