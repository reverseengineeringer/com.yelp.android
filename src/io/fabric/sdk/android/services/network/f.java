package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

class f
  implements X509TrustManager
{
  private final TrustManager[] a = a(paramg);
  private final g b;
  private final long c;
  private final List<byte[]> d = new LinkedList();
  private final Set<X509Certificate> e = Collections.synchronizedSet(new HashSet());
  
  public f(g paramg, e parame)
  {
    b = paramg;
    c = parame.d();
    paramg = parame.c();
    int j = paramg.length;
    int i = 0;
    while (i < j)
    {
      parame = paramg[i];
      d.add(a(parame));
      i += 1;
    }
  }
  
  private void a(X509Certificate[] paramArrayOfX509Certificate)
    throws CertificateException
  {
    if ((c != -1L) && (System.currentTimeMillis() - c > 15552000000L))
    {
      c.h().d("Fabric", "Certificate pins are stale, (" + (System.currentTimeMillis() - c) + " millis vs " + 15552000000L + " millis) " + "falling back to system trust.");
      return;
    }
    paramArrayOfX509Certificate = a.a(paramArrayOfX509Certificate, b);
    int j = paramArrayOfX509Certificate.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label120;
      }
      if (a(paramArrayOfX509Certificate[i])) {
        break;
      }
      i += 1;
    }
    label120:
    throw new CertificateException("No valid pins found in chain!");
  }
  
  private void a(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    TrustManager[] arrayOfTrustManager = a;
    int j = arrayOfTrustManager.length;
    int i = 0;
    while (i < j)
    {
      ((X509TrustManager)arrayOfTrustManager[i]).checkServerTrusted(paramArrayOfX509Certificate, paramString);
      i += 1;
    }
  }
  
  private boolean a(X509Certificate paramX509Certificate)
    throws CertificateException
  {
    try
    {
      paramX509Certificate = MessageDigest.getInstance("SHA1").digest(paramX509Certificate.getPublicKey().getEncoded());
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        boolean bool = Arrays.equals((byte[])localIterator.next(), paramX509Certificate);
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (NoSuchAlgorithmException paramX509Certificate)
    {
      throw new CertificateException(paramX509Certificate);
    }
  }
  
  private byte[] a(String paramString)
  {
    int j = paramString.length();
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    while (i < j)
    {
      arrayOfByte[(i / 2)] = ((byte)((Character.digit(paramString.charAt(i), 16) << 4) + Character.digit(paramString.charAt(i + 1), 16)));
      i += 2;
    }
    return arrayOfByte;
  }
  
  private TrustManager[] a(g paramg)
  {
    try
    {
      TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance("X509");
      localTrustManagerFactory.init(a);
      paramg = localTrustManagerFactory.getTrustManagers();
      return paramg;
    }
    catch (NoSuchAlgorithmException paramg)
    {
      throw new AssertionError(paramg);
    }
    catch (KeyStoreException paramg)
    {
      throw new AssertionError(paramg);
    }
  }
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    throw new CertificateException("Client certificates not supported!");
  }
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    throws CertificateException
  {
    if (e.contains(paramArrayOfX509Certificate[0])) {
      return;
    }
    a(paramArrayOfX509Certificate, paramString);
    a(paramArrayOfX509Certificate);
    e.add(paramArrayOfX509Certificate[0]);
  }
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.network.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */