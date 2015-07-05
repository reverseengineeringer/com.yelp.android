package com.yelp.android.serializable;

public enum BusinessSearchResult$SearchActionType
{
  Platform("platform"),  Reservation("reservation");
  
  private String typeAsString;
  
  private BusinessSearchResult$SearchActionType(String paramString)
  {
    typeAsString = paramString;
  }
  
  private static SearchActionType parseSearchActionType(String paramString)
  {
    SearchActionType[] arrayOfSearchActionType = values();
    int j = arrayOfSearchActionType.length;
    int i = 0;
    while (i < j)
    {
      SearchActionType localSearchActionType = arrayOfSearchActionType[i];
      if (typeAsString.equalsIgnoreCase(paramString)) {
        return localSearchActionType;
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessSearchResult.SearchActionType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */