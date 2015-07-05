package com.ooyala.android;

public class PaginatedItemResponse
{
  public int count = 0;
  public int firstIndex = -1;
  
  public PaginatedItemResponse(int paramInt1, int paramInt2)
  {
    firstIndex = paramInt1;
    count = paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.PaginatedItemResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */