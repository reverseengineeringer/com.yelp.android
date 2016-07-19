package com.yelp.android.ui.panels;

public enum YelpLoadingSpinner
  implements c
{
  FINDING_PLACES(new int[] { 2130838130, 2130838131, 2130838132, 2130838133, 2130838134, 2130838135, 2130838136, 2130838137, 2130838138, 2130838139, 2130838140, 2130838141, 2130838142, 2130838143, 2130838144, 2130838145, 2130838146, 2130838147, 2130838148, 2130838149, 2130838150, 2130838151, 2130838152 });
  
  private int[] mFrames;
  
  private YelpLoadingSpinner(int[] paramArrayOfInt)
  {
    mFrames = paramArrayOfInt;
  }
  
  public int[] getFrames()
  {
    return mFrames;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.YelpLoadingSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */