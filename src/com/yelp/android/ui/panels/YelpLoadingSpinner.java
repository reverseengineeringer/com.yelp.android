package com.yelp.android.ui.panels;

public enum YelpLoadingSpinner
  implements y
{
  FINDING_PLACES(new int[] { 2130837957, 2130837958, 2130837959, 2130837960, 2130837961, 2130837962, 2130837963, 2130837964, 2130837965, 2130837966, 2130837967, 2130837968, 2130837969, 2130837970, 2130837971, 2130837972, 2130837973, 2130837974, 2130837975, 2130837976, 2130837977, 2130837978, 2130837979 });
  
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