package com.ooyala.android;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class VASTAd
{
  private String _adID;
  protected String _description;
  protected List<String> _errorURLs = new ArrayList();
  protected Element _extensions;
  protected List<String> _impressionURLs = new ArrayList();
  private int _numOfLinear = 0;
  protected List<VASTSequenceItem> _sequence = new ArrayList();
  protected List<String> _surveyURLs = new ArrayList();
  protected String _system;
  protected String _systemVersion;
  protected String _title;
  
  VASTAd(Element paramElement)
  {
    if (!paramElement.getTagName().equals("Ad")) {
      return;
    }
    _adID = paramElement.getAttribute("id");
    update(paramElement);
  }
  
  protected void addCreative(Element paramElement)
  {
    Node localNode = paramElement.getFirstChild();
    Object localObject;
    VASTLinearAd localVASTLinearAd;
    Element localElement1;
    Element localElement2;
    while (localNode != null) {
      if ((localNode == null) || (!(localNode instanceof Element)))
      {
        localNode = localNode.getNextSibling();
      }
      else
      {
        localObject = paramElement.getAttribute("sequence");
        if (!((Element)localNode).getTagName().equals("Linear")) {
          break label102;
        }
        localVASTLinearAd = new VASTLinearAd((Element)localNode);
        localElement1 = null;
        localElement2 = null;
      }
    }
    for (;;)
    {
      if ((localVASTLinearAd == null) && (localElement2 == null) && (localElement1 == null))
      {
        return;
        label102:
        if (((Element)localNode).getTagName().equals("NonLinearAds"))
        {
          localElement2 = (Element)localNode;
          localElement1 = null;
          localVASTLinearAd = null;
          continue;
        }
        if (((Element)localNode).getTagName().equals("CompanionAds"))
        {
          localElement1 = (Element)localNode;
          localElement2 = null;
          localVASTLinearAd = null;
        }
      }
      else
      {
        int j;
        VASTSequenceItem localVASTSequenceItem;
        if ((localObject != null) && (((String)localObject).length() > 0))
        {
          j = Integer.parseInt((String)localObject);
          localObject = _sequence.iterator();
          for (;;)
          {
            if (((Iterator)localObject).hasNext())
            {
              localVASTSequenceItem = (VASTSequenceItem)((Iterator)localObject).next();
              if (localVASTSequenceItem.getNumber() == j) {
                if (localVASTLinearAd != null) {
                  localVASTSequenceItem.setLinear(localVASTLinearAd);
                }
              }
            }
          }
        }
        label243:
        for (int i = 1;; i = 0)
        {
          if (i == 0)
          {
            localObject = new VASTSequenceItem();
            ((VASTSequenceItem)localObject).setNumber(j);
            if (localVASTLinearAd == null) {
              break label330;
            }
            ((VASTSequenceItem)localObject).setLinear(localVASTLinearAd);
            label276:
            _sequence.add(localObject);
          }
          for (;;)
          {
            localNode = localNode.getNextSibling();
            break;
            if (localElement2 != null)
            {
              localVASTSequenceItem.setNonLinears(localElement2);
              break label243;
            }
            if (localElement1 == null) {
              break label243;
            }
            localVASTSequenceItem.setCompanions(localElement1);
            break label243;
            label330:
            if (localElement2 != null)
            {
              ((VASTSequenceItem)localObject).setNonLinears(localElement2);
              break label276;
            }
            if (localElement1 == null) {
              break label276;
            }
            ((VASTSequenceItem)localObject).setCompanions(localElement1);
            break label276;
            localObject = new VASTSequenceItem();
            if (localVASTLinearAd != null)
            {
              if (_sequence.size() > _numOfLinear)
              {
                ((VASTSequenceItem)_sequence.get(_numOfLinear)).setLinear(localVASTLinearAd);
                _numOfLinear += 1;
              }
              else
              {
                _numOfLinear += 1;
                ((VASTSequenceItem)localObject).setNumber(_numOfLinear);
                ((VASTSequenceItem)localObject).setLinear(localVASTLinearAd);
                _sequence.add(localObject);
              }
            }
            else if (localElement2 != null)
            {
              if (_sequence.size() == 0)
              {
                ((VASTSequenceItem)localObject).setNumber(1);
                ((VASTSequenceItem)localObject).setNonLinears(localElement2);
                _sequence.add(localObject);
              }
              else
              {
                ((VASTSequenceItem)_sequence.get(_sequence.size() - 1)).setNonLinears(localElement2);
              }
            }
            else if (localElement1 != null) {
              if (_sequence.size() == 0)
              {
                ((VASTSequenceItem)localObject).setNumber(1);
                ((VASTSequenceItem)localObject).setCompanions(localElement1);
                _sequence.add(localObject);
              }
              else
              {
                ((VASTSequenceItem)_sequence.get(_sequence.size() - 1)).setCompanions(localElement1);
              }
            }
          }
        }
      }
      localElement1 = null;
      localElement2 = null;
      localVASTLinearAd = null;
    }
  }
  
  public String getAdID()
  {
    return _adID;
  }
  
  public String getDescription()
  {
    return _description;
  }
  
  public List<String> getErrorURLs()
  {
    return _errorURLs;
  }
  
  public Element getExtensions()
  {
    return _extensions;
  }
  
  public List<String> getImpressionURLs()
  {
    return _impressionURLs;
  }
  
  public List<VASTSequenceItem> getSequence()
  {
    return _sequence;
  }
  
  public List<String> getSurveyURLs()
  {
    return _surveyURLs;
  }
  
  public String getSystem()
  {
    return _system;
  }
  
  public String getSystemVersion()
  {
    return _systemVersion;
  }
  
  public String getTitle()
  {
    return _title;
  }
  
  boolean update(Element paramElement)
  {
    Node localNode = paramElement.getFirstChild();
    boolean bool1 = false;
    while (localNode != null) {
      if (!(localNode instanceof Element))
      {
        localNode = localNode.getNextSibling();
      }
      else
      {
        boolean bool2 = ((Element)localNode).getTagName().equals("InLine");
        Object localObject1;
        Object localObject2;
        int i;
        if (((Element)localNode).getTagName().equals("Wrapper"))
        {
          localObject1 = new VASTWrapperAd(paramElement);
          update((Element)((VASTWrapperAd)localObject1).getChildAdXML());
          _impressionURLs.addAll(((VASTWrapperAd)localObject1).getImpressionURLs());
          localObject2 = _sequence.iterator();
          while (((Iterator)localObject2).hasNext())
          {
            VASTSequenceItem localVASTSequenceItem1 = (VASTSequenceItem)((Iterator)localObject2).next();
            i = localVASTSequenceItem1.getNumber();
            Iterator localIterator = _sequence.iterator();
            while (localIterator.hasNext())
            {
              VASTSequenceItem localVASTSequenceItem2 = (VASTSequenceItem)localIterator.next();
              VASTLinearAd localVASTLinearAd = localVASTSequenceItem2.getLinear();
              int j = localVASTSequenceItem2.getNumber();
              if ((localVASTLinearAd != null) && (j == i))
              {
                localVASTSequenceItem1.getLinear().updateTrackingEvents(localVASTLinearAd.getTrackingEvents());
                localVASTSequenceItem1.getLinear().updateClickTrackingURLs(localVASTLinearAd.getClickTrackingURLs());
              }
            }
          }
          bool1 = true;
        }
        for (;;)
        {
          localNode = localNode.getNextSibling();
          break;
          if (bool2)
          {
            localObject1 = localNode.getFirstChild();
            while (localObject1 != null) {
              if (!(localObject1 instanceof Element))
              {
                localObject1 = ((Node)localObject1).getNextSibling();
              }
              else
              {
                localObject2 = ((Node)localObject1).getTextContent().trim();
                if (localObject2 != null)
                {
                  i = 1;
                  label307:
                  if ((i == 0) || (!((Element)localObject1).getTagName().equals("AdSystem"))) {
                    break label368;
                  }
                  _system = ((String)localObject2);
                  _systemVersion = ((Element)localObject1).getAttribute("version");
                }
                for (;;)
                {
                  localObject1 = ((Node)localObject1).getNextSibling();
                  break;
                  i = 0;
                  break label307;
                  label368:
                  if ((i != 0) && (((Element)localObject1).getTagName().equals("AdTitle")))
                  {
                    _title = ((String)localObject2);
                  }
                  else if ((i != 0) && (((Element)localObject1).getTagName().equals("Description")))
                  {
                    _description = ((String)localObject2);
                  }
                  else if ((i != 0) && (((Element)localObject1).getTagName().equals("Survey")))
                  {
                    _surveyURLs.add(localObject2);
                  }
                  else if ((i != 0) && (((Element)localObject1).getTagName().equals("Error")))
                  {
                    _errorURLs.add(localObject2);
                  }
                  else if ((i != 0) && (((Element)localObject1).getTagName().equals("Impression")))
                  {
                    _impressionURLs.add(localObject2);
                  }
                  else if (((Element)localObject1).getTagName().equals("Extensions"))
                  {
                    _extensions = ((Element)localObject1);
                  }
                  else if (((Element)localObject1).getTagName().equals("Creatives"))
                  {
                    for (localObject2 = ((Node)localObject1).getFirstChild(); localObject2 != null; localObject2 = ((Node)localObject2).getNextSibling()) {
                      if ((localObject2 instanceof Element)) {
                        addCreative((Element)localObject2);
                      }
                    }
                    Collections.sort(_sequence);
                  }
                }
              }
            }
            bool1 = true;
          }
          else
          {
            Log.e(VASTAd.class.getName(), "Error ad is not a wrapper or inline ad");
          }
        }
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VASTAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */