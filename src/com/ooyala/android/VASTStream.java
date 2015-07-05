package com.ooyala.android;

import org.w3c.dom.Element;

public class VASTStream
  extends Stream
{
  private String _apiFramework;
  private boolean _maintainAspectRatio;
  private boolean _scalable;
  private String _vastDeliveryType;
  
  VASTStream(Element paramElement)
  {
    if (!paramElement.getTagName().equals("MediaFile")) {
      return;
    }
    _vastDeliveryType = paramElement.getAttribute("delivery");
    _apiFramework = paramElement.getAttribute("apiFramework");
    String str = paramElement.getAttribute("scalable");
    if (!Utils.isNullOrEmpty(str)) {
      _scalable = Boolean.getBoolean(str);
    }
    str = paramElement.getAttribute("maintainAspectRatio");
    if (str != null) {
      _maintainAspectRatio = Boolean.getBoolean(str);
    }
    str = paramElement.getAttribute("type");
    if (str != null)
    {
      if (str.equals("application/x-mpegURL")) {
        _deliveryType = "hls";
      }
      if (!str.equals("video/mp4")) {
        break label220;
      }
    }
    label220:
    for (_deliveryType = "mp4";; _deliveryType = str)
    {
      str = paramElement.getAttribute("bitrate");
      if (!Utils.isNullOrEmpty(str)) {
        _videoBitrate = Integer.parseInt(str);
      }
      str = paramElement.getAttribute("width");
      if (!Utils.isNullOrEmpty(str)) {
        _width = Integer.parseInt(str);
      }
      str = paramElement.getAttribute("height");
      if (!Utils.isNullOrEmpty(str)) {
        _height = Integer.parseInt(str);
      }
      _urlFormat = "text";
      _url = paramElement.getTextContent();
      return;
    }
  }
  
  public String getApiFramework()
  {
    return _apiFramework;
  }
  
  public String getVastDeliveryType()
  {
    return _vastDeliveryType;
  }
  
  public boolean isMaintainAspectRatio()
  {
    return _maintainAspectRatio;
  }
  
  public boolean isScalable()
  {
    return _scalable;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VASTStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */