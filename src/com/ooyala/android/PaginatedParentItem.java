package com.ooyala.android;

import org.json.JSONObject;

public abstract interface PaginatedParentItem
{
  public abstract int childrenCount();
  
  public abstract boolean fetchMoreChildren(PaginatedItemListener paramPaginatedItemListener);
  
  public abstract String getEmbedCode();
  
  public abstract String getNextChildren();
  
  public abstract boolean hasMoreChildren();
  
  public abstract Constants.ReturnState update(JSONObject paramJSONObject);
}

/* Location:
 * Qualified Name:     com.ooyala.android.PaginatedParentItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */