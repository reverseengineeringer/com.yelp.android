package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest;

 enum MessagingRequestType$1
{
  MessagingRequestType$1()
  {
    super(paramString, paramInt, null);
  }
  
  void addParameter(ApiRequest<Void, Void, ?> paramApiRequest, String paramString)
  {
    paramApiRequest.a("older_than", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.MessagingRequestType.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */