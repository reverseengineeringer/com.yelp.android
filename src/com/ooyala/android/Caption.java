package com.ooyala.android;

import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Caption
{
  protected double _begin = 0.0D;
  protected double _end = 0.0D;
  protected String _text = null;
  
  Caption() {}
  
  Caption(Element paramElement)
  {
    if (!paramElement.getTagName().equals("p")) {}
    label98:
    label294:
    for (;;)
    {
      return;
      Object localObject = paramElement.getAttribute("begin");
      String str1 = paramElement.getAttribute("dur");
      String str2 = paramElement.getAttribute("end");
      if (!Utils.isNullOrEmpty((String)localObject))
      {
        _begin = Utils.secondsFromTimeString((String)localObject);
        int i;
        if (!Utils.isNullOrEmpty(str2))
        {
          _end = Utils.secondsFromTimeString(str2);
          _text = "";
          i = 0;
        }
        for (;;)
        {
          if (i >= paramElement.getChildNodes().getLength()) {
            break label294;
          }
          localObject = paramElement.getChildNodes().item(i).getTextContent().split("[\r\n]");
          int k = localObject.length;
          int j = 0;
          for (;;)
          {
            if (j < k)
            {
              str1 = localObject[j];
              _text += str1.trim();
              j += 1;
              continue;
              if (Utils.isNullOrEmpty(str1)) {
                break;
              }
              double d = _begin;
              _end = (Utils.secondsFromTimeString(str1) + d);
              break label98;
            }
          }
          if (paramElement.getChildNodes().item(i).getNodeName().equals("br")) {
            _text += "\n";
          }
          i += 1;
        }
      }
    }
  }
  
  public double getBegin()
  {
    return _begin;
  }
  
  public double getEnd()
  {
    return _end;
  }
  
  public String getText()
  {
    return _text;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.Caption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */