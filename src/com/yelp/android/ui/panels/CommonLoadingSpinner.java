package com.yelp.android.ui.panels;

import com.yelp.android.co.a.e;

public enum CommonLoadingSpinner
  implements c
{
  DEFAULT(new int[] { a.e.general_spinner_000, a.e.general_spinner_001, a.e.general_spinner_002, a.e.general_spinner_003, a.e.general_spinner_004, a.e.general_spinner_005, a.e.general_spinner_006, a.e.general_spinner_007, a.e.general_spinner_008, a.e.general_spinner_009, a.e.general_spinner_010, a.e.general_spinner_011, a.e.general_spinner_012, a.e.general_spinner_013, a.e.general_spinner_014, a.e.general_spinner_015, a.e.general_spinner_016, a.e.general_spinner_017, a.e.general_spinner_018, a.e.general_spinner_019, a.e.general_spinner_020, a.e.general_spinner_021, a.e.general_spinner_022, a.e.general_spinner_023 }),  SMALL(new int[] { a.e.small_spinner_000, a.e.small_spinner_001, a.e.small_spinner_002, a.e.small_spinner_003, a.e.small_spinner_004, a.e.small_spinner_005, a.e.small_spinner_006, a.e.small_spinner_007, a.e.small_spinner_008, a.e.small_spinner_009, a.e.small_spinner_010, a.e.small_spinner_011, a.e.small_spinner_012, a.e.small_spinner_013, a.e.small_spinner_014, a.e.small_spinner_015, a.e.small_spinner_016, a.e.small_spinner_017, a.e.small_spinner_018, a.e.small_spinner_019, a.e.small_spinner_020, a.e.small_spinner_021, a.e.small_spinner_022, a.e.small_spinner_023 });
  
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