package com.ooyala.android;

import android.os.AsyncTask;
import java.util.List;

class PlayerAPIClient$AuthorizeTask
  extends AsyncTask<Object, Integer, Boolean>
{
  protected AuthorizeCallback _callback = null;
  protected OoyalaException _error = null;
  
  public PlayerAPIClient$AuthorizeTask(PlayerAPIClient paramPlayerAPIClient, AuthorizeCallback paramAuthorizeCallback)
  {
    _callback = paramAuthorizeCallback;
  }
  
  protected Boolean doInBackground(Object... paramVarArgs)
  {
    if (paramVarArgs.length < 2) {
      return Boolean.valueOf(false);
    }
    if (!(paramVarArgs[0] instanceof List)) {
      return Boolean.valueOf(false);
    }
    List localList = (List)paramVarArgs[0];
    if ((paramVarArgs[1] instanceof AuthorizableItemInternal)) {}
    for (AuthorizableItemInternal localAuthorizableItemInternal = (AuthorizableItemInternal)paramVarArgs[1];; localAuthorizableItemInternal = null) {
      switch (paramVarArgs.length)
      {
      default: 
        return Boolean.valueOf(false);
      }
    }
    boolean bool;
    try
    {
      bool = this$0.authorizeEmbedCodes(localList, localAuthorizableItemInternal);
      return Boolean.valueOf(bool);
    }
    catch (OoyalaException paramVarArgs)
    {
      _error = paramVarArgs;
      return Boolean.valueOf(false);
    }
    if ((paramVarArgs[2] instanceof PlayerInfo)) {}
    for (paramVarArgs = (PlayerInfo)paramVarArgs[2];; paramVarArgs = null) {
      try
      {
        bool = this$0.authorizeEmbedCodes(localList, localAuthorizableItemInternal, paramVarArgs);
        return Boolean.valueOf(bool);
      }
      catch (OoyalaException paramVarArgs)
      {
        _error = paramVarArgs;
      }
    }
    return Boolean.valueOf(false);
  }
  
  protected void onPostExecute(Boolean paramBoolean)
  {
    _callback.callback(paramBoolean.booleanValue(), _error);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.PlayerAPIClient.AuthorizeTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */