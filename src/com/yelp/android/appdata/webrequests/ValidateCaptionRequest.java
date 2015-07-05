package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class ValidateCaptionRequest
  extends h
{
  public ValidateCaptionRequest(String paramString, ValidateCaptionRequest.ContentType paramContentType, i parami)
  {
    super(ApiRequest.RequestType.POST, paramContentType.getValidateUri(), parami);
    addPostParam("caption", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ValidateCaptionRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */