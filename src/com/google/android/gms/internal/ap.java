package com.google.android.gms.internal;

import android.util.Base64OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

public class ap
{
  private final int nT;
  private final int nU;
  private final ao nV = new ar();
  private Base64OutputStream nW;
  private ByteArrayOutputStream nX;
  
  public ap(int paramInt)
  {
    nU = paramInt;
    nT = 6;
  }
  
  private String m(String paramString)
  {
    paramString = paramString.split("\n");
    if ((paramString == null) || (paramString.length == 0)) {
      return "";
    }
    nX = new ByteArrayOutputStream();
    nW = new Base64OutputStream(nX, 10);
    Arrays.sort(paramString, new ap.1(this));
    int i = 0;
    if ((i < paramString.length) && (i < nU))
    {
      if (paramString[i].trim().length() == 0) {}
      for (;;)
      {
        i += 1;
        break;
        try
        {
          nW.write(nV.l(paramString[i]));
        }
        catch (IOException localIOException)
        {
          gr.b("Error while writing hash to byteStream", localIOException);
        }
      }
    }
    try
    {
      nW.flush();
      nW.close();
      paramString = nX.toString();
      return paramString;
    }
    catch (IOException paramString)
    {
      gr.b("HashManager: Unable to convert to base 64", paramString);
    }
    return "";
  }
  
  public String a(ArrayList<String> paramArrayList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      localStringBuffer.append(((String)paramArrayList.next()).toLowerCase(Locale.US));
      localStringBuffer.append('\n');
    }
    switch (0)
    {
    default: 
      return "";
    case 0: 
      return n(localStringBuffer.toString());
    }
    return m(localStringBuffer.toString());
  }
  
  String n(String paramString)
  {
    paramString = paramString.split("\n");
    if ((paramString == null) || (paramString.length == 0)) {
      return "";
    }
    nX = new ByteArrayOutputStream();
    nW = new Base64OutputStream(nX, 10);
    Object localObject = new PriorityQueue(nU, new ap.2(this));
    int i = 0;
    if (i < paramString.length)
    {
      String[] arrayOfString = aq.p(paramString[i]);
      if (arrayOfString.length < nT) {}
      for (;;)
      {
        i += 1;
        break;
        as.a(arrayOfString, nU, nT, (PriorityQueue)localObject);
      }
    }
    paramString = ((PriorityQueue)localObject).iterator();
    while (paramString.hasNext())
    {
      localObject = (as.a)paramString.next();
      try
      {
        nW.write(nV.l(oa));
      }
      catch (IOException localIOException)
      {
        gr.b("Error while writing hash to byteStream", localIOException);
      }
    }
    try
    {
      nW.flush();
      nW.close();
      paramString = nX.toString();
      return paramString;
    }
    catch (IOException paramString)
    {
      gr.b("HashManager: unable to convert to base 64", paramString);
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */