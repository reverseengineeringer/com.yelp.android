package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest;

 enum MessagingRequestType$2
{
  MessagingRequestType$2()
  {
    super(paramString, paramInt, null);
  }
  
  void addParameter(ApiRequest<Void, Void, ?> paramApiRequest, String paramString)
  {
    paramApiRequest.a("newer_than", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.MessagingRequestType.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */