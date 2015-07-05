package com.ooyala.android;

import org.w3c.dom.Element;

public class VASTSequenceItem
  implements Comparable<VASTSequenceItem>
{
  private Element _companions = null;
  private VASTLinearAd _linear = null;
  private Element _nonLinears = null;
  private int _number = -1;
  
  public int compareTo(VASTSequenceItem paramVASTSequenceItem)
  {
    if (_number < paramVASTSequenceItem.getNumber()) {
      return -1;
    }
    if (_number > paramVASTSequenceItem.getNumber()) {
      return 1;
    }
    return 0;
  }
  
  public Element getCompanions()
  {
    return _companions;
  }
  
  public VASTLinearAd getLinear()
  {
    return _linear;
  }
  
  public Element getNonLinears()
  {
    return _nonLinears;
  }
  
  public int getNumber()
  {
    return _number;
  }
  
  public boolean hasLinear()
  {
    return _linear != null;
  }
  
  public void setCompanions(Element paramElement)
  {
    _companions = paramElement;
  }
  
  public void setLinear(VASTLinearAd paramVASTLinearAd)
  {
    _linear = paramVASTLinearAd;
  }
  
  public void setNonLinears(Element paramElement)
  {
    _nonLinears = paramElement;
  }
  
  public void setNumber(int paramInt)
  {
    _number = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VASTSequenceItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */