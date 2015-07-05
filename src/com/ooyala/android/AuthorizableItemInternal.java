package com.ooyala.android;

import java.util.List;
import org.json.JSONObject;

abstract interface AuthorizableItemInternal
  extends AuthorizableItem
{
  public abstract List<String> embedCodesToAuthorize();
  
  public abstract boolean isHeartbeatRequired();
  
  public abstract Constants.ReturnState update(JSONObject paramJSONObject);
}

/* Location:
 * Qualified Name:     com.ooyala.android.AuthorizableItemInternal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */