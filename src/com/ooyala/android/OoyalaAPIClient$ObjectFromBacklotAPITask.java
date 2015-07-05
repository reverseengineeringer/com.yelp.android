package com.ooyala.android;

import android.os.AsyncTask;
import java.util.Map;
import org.json.JSONObject;

class OoyalaAPIClient$ObjectFromBacklotAPITask
  extends AsyncTask<Object, Integer, JSONObject>
{
  protected ObjectFromBacklotAPICallback _callback = null;
  
  public OoyalaAPIClient$ObjectFromBacklotAPITask(OoyalaAPIClient paramOoyalaAPIClient, ObjectFromBacklotAPICallback paramObjectFromBacklotAPICallback)
  {
    _callback = paramObjectFromBacklotAPICallback;
  }
  
  protected JSONObject doInBackground(Object... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length < 2) || (!(paramVarArgs[0] instanceof String)) || (!(paramVarArgs[0] instanceof Map))) {
      return null;
    }
    String str = (String)paramVarArgs[0];
    paramVarArgs = (Map)paramVarArgs[1];
    return this$0.objectFromBacklotAPI(str, paramVarArgs);
  }
  
  protected void onPostExecute(JSONObject paramJSONObject)
  {
    _callback.callback(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaAPIClient.ObjectFromBacklotAPITask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */