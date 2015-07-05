package com.yelp.android.appdata.webrequests;

public enum ValidateCaptionRequest$ContentType
{
  PHOTO("/business/photo/caption/validate"),  VIDEO("/business/video/caption/validate");
  
  private final String mUri;
  
  private ValidateCaptionRequest$ContentType(String paramString)
  {
    mUri = paramString;
  }
  
  public String getValidateUri()
  {
    return mUri;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ValidateCaptionRequest.ContentType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */