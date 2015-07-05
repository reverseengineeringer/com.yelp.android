package com.ooyala.android;

import java.io.PrintStream;
import java.net.URL;
import java.util.Collections;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.InputSource;

public class VASTWrapperAd
  extends VASTAd
{
  private Node _childAdXML;
  
  VASTWrapperAd(Element paramElement)
  {
    super(paramElement);
  }
  
  Node getChildAdXML()
  {
    return _childAdXML;
  }
  
  boolean update(Element paramElement)
  {
    Node localNode1 = paramElement.getFirstChild();
    while (localNode1 != null) {
      if (!(localNode1 instanceof Element))
      {
        localNode1 = localNode1.getNextSibling();
      }
      else
      {
        Node localNode2 = localNode1.getFirstChild();
        paramElement = null;
        while (localNode2 != null) {
          if (!(localNode2 instanceof Element))
          {
            localNode2 = localNode2.getNextSibling();
          }
          else
          {
            Object localObject = localNode2.getTextContent().trim();
            int i;
            if (localObject != null)
            {
              i = 1;
              label82:
              if ((i == 0) || (!((Element)localNode2).getTagName().equals("AdSystem"))) {
                break label143;
              }
              _system = ((String)localObject);
              _systemVersion = ((Element)localNode2).getAttribute("version");
            }
            for (;;)
            {
              localNode2 = localNode2.getNextSibling();
              break;
              i = 0;
              break label82;
              label143:
              if ((i != 0) && (((Element)localNode2).getTagName().equals("AdTitle")))
              {
                _title = ((String)localObject);
              }
              else if ((i != 0) && (((Element)localNode2).getTagName().equals("Description")))
              {
                _description = ((String)localObject);
              }
              else if ((i != 0) && (((Element)localNode2).getTagName().equals("Survey")))
              {
                _surveyURLs.add(localObject);
              }
              else if ((i != 0) && (((Element)localNode2).getTagName().equals("Error")))
              {
                _errorURLs.add(localObject);
              }
              else if ((i != 0) && (((Element)localNode2).getTagName().equals("Impression")))
              {
                _impressionURLs.add(localObject);
              }
              else if (((Element)localNode2).getTagName().equals("Extensions"))
              {
                _extensions = ((Element)localNode2);
              }
              else if (((Element)localNode2).getTagName().equals("VASTAdTagURI"))
              {
                paramElement = (Element)localObject;
              }
              else if (((Element)localNode2).getTagName().equals("Creatives"))
              {
                for (localObject = localNode2.getFirstChild(); localObject != null; localObject = ((Node)localObject).getNextSibling()) {
                  if ((localObject instanceof Element)) {
                    addCreative((Element)localObject);
                  }
                }
                Collections.sort(_sequence);
              }
            }
          }
        }
        if (paramElement != null) {
          try
          {
            paramElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new URL(paramElement).openStream())).getDocumentElement();
            if (!paramElement.getTagName().equals("VAST")) {
              return false;
            }
            if (Double.parseDouble(paramElement.getAttribute("version")) < 2.0D) {
              return false;
            }
            for (paramElement = paramElement.getFirstChild(); paramElement != null; paramElement = paramElement.getNextSibling()) {
              if (((paramElement instanceof Element)) && (((Element)paramElement).getTagName().equals("Ad"))) {
                _childAdXML = paramElement;
              }
            }
            localNode1 = localNode1.getNextSibling();
          }
          catch (Exception paramElement)
          {
            System.out.println("ERROR: Unable to fetch VAST ad tag info: " + paramElement);
            return false;
          }
        }
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VASTWrapperAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */