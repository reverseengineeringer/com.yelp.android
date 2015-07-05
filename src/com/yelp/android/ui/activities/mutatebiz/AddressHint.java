package com.yelp.android.ui.activities.mutatebiz;

public enum AddressHint
{
  HK(2131165925, 2131165926, 2131165923, 2131165924, 2131165921, 2131165922),  TW(2131166629, 2131166630, 2131166627, 2131166628, 2131166625, 2131166626);
  
  public final int address1;
  public final int address1Alt;
  public final int address1Primary;
  public final int address2;
  public final int address2Alt;
  public final int address2Primary;
  
  private AddressHint(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    address1Primary = paramInt1;
    address2Primary = paramInt2;
    address1Alt = paramInt3;
    address2Alt = paramInt4;
    address1 = paramInt5;
    address2 = paramInt6;
  }
  
  public static AddressHint getFromCountry(String paramString)
  {
    int i = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return null;
        if (paramString.equals("HK"))
        {
          i = 0;
          continue;
          if (paramString.equals("TW")) {
            i = 1;
          }
        }
        break;
      }
    }
    return HK;
    return TW;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.AddressHint
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */