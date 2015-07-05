package com.yelp.android.services;

import android.text.TextUtils;
import android.util.Pair;
import com.crashlytics.android.d;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Date;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.BasicCookieStore;

public class PersistingCookieStore
  extends BasicCookieStore
{
  private final File a;
  private final SecretKey b;
  
  public PersistingCookieStore(File paramFile, SecretKey paramSecretKey)
  {
    b = paramSecretKey;
    a = paramFile;
    new g(this).start();
  }
  
  ObjectInputStream a(File paramFile)
  {
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    Cipher localCipher = Cipher.getInstance(b.getAlgorithm() + "/CBC/PKCS5Padding");
    localCipher.init(2, b, b(paramFile));
    return new ObjectInputStream(new CipherInputStream(localFileInputStream, localCipher));
  }
  
  public void a()
  {
    for (;;)
    {
      int i;
      try
      {
        if ((a.mkdirs()) || (a.isDirectory()))
        {
          Date localDate = new Date();
          File[] arrayOfFile = a.listFiles();
          int j = arrayOfFile.length;
          i = 0;
          if (i < j)
          {
            File localFile = arrayOfFile[i];
            try
            {
              ObjectInputStream localObjectInputStream = a(localFile);
              Cookie localCookie = (Cookie)localObjectInputStream.readObject();
              localObjectInputStream.close();
              if (localCookie.isExpired(localDate)) {
                localFile.delete();
              } else {
                super.addCookie(localCookie);
              }
            }
            catch (Exception localException)
            {
              d.a(localException);
              localFile.delete();
            }
          }
        }
      }
      finally {}
      return;
      i += 1;
    }
  }
  
  void a(Cookie paramCookie)
  {
    if (TextUtils.isEmpty(paramCookie.getValue()))
    {
      b(paramCookie);
      return;
    }
    try
    {
      Pair localPair = c(paramCookie);
      ((ObjectOutputStream)first).writeObject(new PersistingCookieStore.SerializableCookie(paramCookie));
      ((ObjectOutputStream)first).flush();
      ((FileDescriptor)second).sync();
      ((ObjectOutputStream)first).close();
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
      b(paramCookie);
    }
  }
  
  public void addCookie(Cookie paramCookie)
  {
    try
    {
      if (paramCookie.isPersistent()) {
        a(paramCookie);
      }
      super.addCookie(paramCookie);
      return;
    }
    finally {}
  }
  
  public void addCookies(Cookie[] paramArrayOfCookie)
  {
    for (;;)
    {
      int i;
      try
      {
        int j = paramArrayOfCookie.length;
        i = 0;
        if (i < j)
        {
          Cookie localCookie = paramArrayOfCookie[i];
          if (localCookie.isPersistent()) {
            a(localCookie);
          }
        }
        else
        {
          super.addCookies(paramArrayOfCookie);
          return;
        }
      }
      finally {}
      i += 1;
    }
  }
  
  IvParameterSpec b(File paramFile)
  {
    byte[] arrayOfByte = new byte[16];
    paramFile = paramFile.getName().getBytes();
    System.arraycopy(paramFile, 0, arrayOfByte, 0, Math.min(paramFile.length, arrayOfByte.length));
    return new IvParameterSpec(arrayOfByte);
  }
  
  void b(Cookie paramCookie)
  {
    paramCookie = new File(a, paramCookie.getName());
    if (!paramCookie.delete()) {
      paramCookie.deleteOnExit();
    }
  }
  
  Pair<ObjectOutputStream, FileDescriptor> c(Cookie paramCookie)
  {
    a.mkdirs();
    paramCookie = new File(a, paramCookie.getName());
    FileOutputStream localFileOutputStream = new FileOutputStream(paramCookie);
    Cipher localCipher = Cipher.getInstance(b.getAlgorithm() + "/CBC/PKCS5Padding");
    localCipher.init(1, b, b(paramCookie));
    return Pair.create(new ObjectOutputStream(new CipherOutputStream(localFileOutputStream, localCipher)), localFileOutputStream.getFD());
  }
  
  public void clear()
  {
    for (;;)
    {
      int i;
      try
      {
        File[] arrayOfFile = a.listFiles();
        if (arrayOfFile != null)
        {
          int j = arrayOfFile.length;
          i = 0;
          if (i < j)
          {
            File localFile = arrayOfFile[i];
            if (localFile.delete()) {
              break label84;
            }
            localFile.deleteOnExit();
            break label84;
          }
        }
        if ((a.listFiles() == null) && (!a.delete())) {
          a.deleteOnExit();
        }
        super.clear();
        return;
      }
      finally {}
      label84:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.PersistingCookieStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */