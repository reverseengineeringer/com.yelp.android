package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

class ao
  extends aj
{
  private static final String ID = a.ac.toString();
  private static final String arp = b.bw.toString();
  private static final String arr = b.de.toString();
  private static final String arv = b.bn.toString();
  
  public ao()
  {
    super(ID, new String[] { arp });
  }
  
  private byte[] d(String paramString, byte[] paramArrayOfByte)
  {
    paramString = MessageDigest.getInstance(paramString);
    paramString.update(paramArrayOfByte);
    return paramString.digest();
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    Object localObject = (d.a)paramMap.get(arp);
    if ((localObject == null) || (localObject == di.rb())) {
      return di.rb();
    }
    String str = di.j((d.a)localObject);
    localObject = (d.a)paramMap.get(arv);
    if (localObject == null)
    {
      localObject = "MD5";
      paramMap = (d.a)paramMap.get(arr);
      if (paramMap != null) {
        break label110;
      }
      paramMap = "text";
      label73:
      if (!"text".equals(paramMap)) {
        break label118;
      }
      paramMap = str.getBytes();
    }
    for (;;)
    {
      try
      {
        paramMap = di.u(j.d(d((String)localObject, paramMap)));
        return paramMap;
      }
      catch (NoSuchAlgorithmException paramMap)
      {
        label110:
        label118:
        bh.T("Hash: unknown algorithm: " + (String)localObject);
      }
      localObject = di.j((d.a)localObject);
      break;
      paramMap = di.j(paramMap);
      break label73;
      if ("base16".equals(paramMap))
      {
        paramMap = j.co(str);
      }
      else
      {
        bh.T("Hash: unknown input format: " + paramMap);
        return di.rb();
      }
    }
    return di.rb();
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */