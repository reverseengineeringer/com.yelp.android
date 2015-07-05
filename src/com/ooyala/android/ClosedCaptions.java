package com.ooyala.android;

import android.annotation.SuppressLint;
import android.util.Log;
import java.io.PrintStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class ClosedCaptions
{
  protected Map<String, List<Caption>> _captions = new HashMap();
  protected String _defaultLanguage = null;
  protected Set<String> _languages = new HashSet();
  protected Map<String, String> _styles = new HashMap();
  protected URL _url = null;
  
  ClosedCaptions() {}
  
  ClosedCaptions(JSONObject paramJSONObject)
  {
    update(paramJSONObject);
  }
  
  private boolean parseBodyXML(Element paramElement)
  {
    if (!paramElement.getTagName().equals("body")) {
      return false;
    }
    NodeList localNodeList = paramElement.getElementsByTagName("div");
    int i = 0;
    if (i < localNodeList.getLength())
    {
      Object localObject = (Element)localNodeList.item(i);
      paramElement = ((Element)localObject).getAttribute("xml:lang");
      if (Utils.isNullOrEmpty(paramElement))
      {
        paramElement = null;
        label71:
        if ((Utils.isNullOrEmpty(((Element)localObject).getAttribute("begin"))) && (paramElement != null)) {
          break label114;
        }
      }
      for (;;)
      {
        i += 1;
        break;
        paramElement = (List)_captions.get(paramElement);
        break label71;
        label114:
        localObject = ((Element)localObject).getElementsByTagName("p");
        int j = 0;
        while (j < ((NodeList)localObject).getLength())
        {
          Caption localCaption = new Caption((Element)((NodeList)localObject).item(j));
          if (localCaption != null) {
            paramElement.add(localCaption);
          }
          j += 1;
        }
      }
    }
    return true;
  }
  
  private boolean parseHeadXML(Element paramElement)
  {
    return paramElement.getTagName().equals("head");
  }
  
  private boolean update(Element paramElement)
  {
    if (!paramElement.getTagName().equals("tt")) {
      return false;
    }
    NodeList localNodeList = paramElement.getElementsByTagName("head");
    if ((localNodeList != null) && (localNodeList.getLength() > 0) && (!parseHeadXML((Element)localNodeList.item(0)))) {
      return false;
    }
    paramElement = paramElement.getElementsByTagName("body");
    return (paramElement == null) || (paramElement.getLength() <= 0) || (parseBodyXML((Element)paramElement.item(0)));
  }
  
  @SuppressLint({"DefaultLocale"})
  public List<Caption> closedCaptionsForLanguage(String paramString)
  {
    return (List)_captions.get(paramString.toLowerCase());
  }
  
  public boolean fetchClosedCaptionsInfo()
  {
    try
    {
      boolean bool = update(DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(_url.openStream())).getDocumentElement());
      return bool;
    }
    catch (Exception localException)
    {
      Log.e(getClass().getName(), "ERROR: Unable to fetch closed captions info: " + localException);
    }
    return false;
  }
  
  public Caption getCaption(String paramString, double paramDouble)
  {
    paramString = closedCaptionsForLanguage(paramString);
    if ((paramString == null) || (paramString.size() == 0)) {
      return null;
    }
    int j = paramString.size() / 2;
    int k = paramString.size() - 1;
    int i = 0;
    int m = -1;
    Caption localCaption;
    if ((k >= 0) && (i < paramString.size()))
    {
      localCaption = (Caption)paramString.get(j);
      if ((localCaption.getBegin() <= paramDouble) && (paramDouble < localCaption.getEnd())) {
        i = 1;
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        return (Caption)paramString.get(j);
        if (m == j)
        {
          i = 0;
        }
        else if (k == i)
        {
          i = 0;
        }
        else
        {
          if (paramDouble < localCaption.getBegin()) {
            k = j - 1;
          }
          for (;;)
          {
            int n = (k - i) / 2;
            m = j;
            j = n + i;
            break;
            i = j + 1;
          }
        }
      }
      else
      {
        return null;
        i = 0;
      }
    }
  }
  
  public String getDefaultLanguage()
  {
    return _defaultLanguage;
  }
  
  public Set<String> getLanguages()
  {
    return _languages;
  }
  
  public URL getURL()
  {
    return _url;
  }
  
  Constants.ReturnState update(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return Constants.ReturnState.STATE_FAIL;
    }
    try
    {
      if (paramJSONObject.isNull("languages"))
      {
        System.out.println("ERROR: Fail to update closed captions because no languages exist!");
        return Constants.ReturnState.STATE_FAIL;
      }
      JSONArray localJSONArray = paramJSONObject.getJSONArray("languages");
      if (paramJSONObject.isNull("url"))
      {
        System.out.println("ERROR: Fail to update closed captions because no url exists!");
        return Constants.ReturnState.STATE_FAIL;
      }
      String str1 = paramJSONObject.getString("url");
      _languages.clear();
      int i = 0;
      while (i < localJSONArray.length())
      {
        String str2 = localJSONArray.getString(i);
        _languages.add(str2);
        _captions.put(str2, new ArrayList());
        i += 1;
      }
      try
      {
        _url = new URL(str1);
        if (!paramJSONObject.isNull("default_language")) {
          _defaultLanguage = paramJSONObject.getString("default_language");
        }
        return Constants.ReturnState.STATE_MATCHED;
      }
      catch (MalformedURLException paramJSONObject)
      {
        System.out.println("ERROR: Fail to update closed captions because url is invalid: " + str1);
        paramJSONObject = Constants.ReturnState.STATE_FAIL;
        return paramJSONObject;
      }
      return Constants.ReturnState.STATE_FAIL;
    }
    catch (JSONException paramJSONObject)
    {
      System.out.println("JSONException: " + paramJSONObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.ClosedCaptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */