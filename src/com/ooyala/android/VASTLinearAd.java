package com.ooyala.android;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class VASTLinearAd
  implements PlayableItem
{
  private String _clickThroughURL;
  private Set<String> _clickTrackingURLs = new HashSet();
  private Set<String> _customClickURLs = new HashSet();
  private double _duration;
  private String _parameters;
  private Set<Stream> _streams = new HashSet();
  private HashMap<String, Set<String>> _trackingEvents = new HashMap();
  
  VASTLinearAd(Element paramElement)
  {
    if (!paramElement.getTagName().equals("Linear")) {
      return;
    }
    paramElement = paramElement.getFirstChild();
    label70:
    while (paramElement != null) {
      if (!(paramElement instanceof Element))
      {
        paramElement = paramElement.getNextSibling();
      }
      else
      {
        if ((Utils.isNullOrEmpty(paramElement.getTextContent())) || (!((Element)paramElement).getTagName().equals("Duration"))) {
          break label143;
        }
        _duration = Utils.secondsFromTimeString(paramElement.getTextContent());
      }
    }
    for (;;)
    {
      paramElement = paramElement.getNextSibling();
      break label70;
      break;
      label143:
      if ((!Utils.isNullOrEmpty(paramElement.getTextContent())) && (((Element)paramElement).getTagName().equals("AdParameters")))
      {
        _parameters = paramElement.getTextContent();
      }
      else
      {
        Node localNode;
        label209:
        Object localObject1;
        if (((Element)paramElement).getTagName().equals("TrackingEvents"))
        {
          localNode = paramElement.getFirstChild();
          Object localObject2;
          while (localNode != null) {
            if ((!(localNode instanceof Element)) || (Utils.isNullOrEmpty(localNode.getTextContent())))
            {
              localNode = localNode.getNextSibling();
            }
            else
            {
              localObject1 = ((Element)localNode).getAttribute("event");
              localObject2 = (Set)_trackingEvents.get(localObject1);
              if (localObject2 == null) {
                break label296;
              }
              ((Set)localObject2).add(localNode.getTextContent());
            }
          }
          for (;;)
          {
            localNode = localNode.getNextSibling();
            break label209;
            break;
            label296:
            localObject2 = new HashSet();
            ((Set)localObject2).add(localNode.getTextContent());
            _trackingEvents.put(localObject1, localObject2);
          }
        }
        if (((Element)paramElement).getTagName().equals("VideoClicks"))
        {
          localNode = paramElement.getFirstChild();
          label357:
          while (localNode != null) {
            if ((!(localNode instanceof Element)) || (Utils.isNullOrEmpty(localNode.getTextContent())))
            {
              localNode = localNode.getNextSibling();
            }
            else
            {
              if (!((Element)localNode).getTagName().equals("ClickThrough")) {
                break label427;
              }
              _clickThroughURL = localNode.getTextContent();
            }
          }
          for (;;)
          {
            localNode = localNode.getNextSibling();
            break label357;
            break;
            label427:
            if (((Element)localNode).getTagName().equals("ClickTracking")) {
              _clickTrackingURLs.add(localNode.getTextContent());
            } else if (((Element)localNode).getTagName().equals("CustomClick")) {
              _customClickURLs.add(localNode.getTextContent());
            }
          }
        }
        if (((Element)paramElement).getTagName().equals("MediaFiles"))
        {
          localNode = paramElement.getFirstChild();
          while (localNode != null) {
            if (!(localNode instanceof Element))
            {
              localNode = localNode.getNextSibling();
            }
            else
            {
              localObject1 = new VASTStream((Element)localNode);
              _streams.add(localObject1);
              localNode = localNode.getNextSibling();
            }
          }
        }
      }
    }
  }
  
  public String getClickThroughURL()
  {
    return _clickThroughURL;
  }
  
  public Set<String> getClickTrackingURLs()
  {
    return _clickTrackingURLs;
  }
  
  public Set<String> getCustomClickURLs()
  {
    return _customClickURLs;
  }
  
  public double getDuration()
  {
    return _duration;
  }
  
  public String getParameters()
  {
    return _parameters;
  }
  
  public Stream getStream()
  {
    return Stream.bestStream(_streams);
  }
  
  public Set<Stream> getStreams()
  {
    return _streams;
  }
  
  public HashMap<String, Set<String>> getTrackingEvents()
  {
    return _trackingEvents;
  }
  
  public void updateClickTrackingURLs(Set<String> paramSet)
  {
    if (paramSet != null) {
      _clickTrackingURLs.addAll(paramSet);
    }
  }
  
  public void updateTrackingEvents(HashMap<String, Set<String>> paramHashMap)
  {
    Iterator localIterator = paramHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Set localSet = (Set)paramHashMap.get(str);
      Object localObject = (Set)_trackingEvents.get(str);
      if (localObject != null)
      {
        ((Set)localObject).addAll(localSet);
      }
      else
      {
        localObject = new HashSet();
        ((Set)localObject).addAll(localSet);
        _trackingEvents.put(str, localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VASTLinearAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */