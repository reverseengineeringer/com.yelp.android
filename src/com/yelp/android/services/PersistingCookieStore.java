package com.yelp.android.services;

import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.util.YelpLog;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.security.GeneralSecurityException;
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
    a();
  }
  
  private ObjectInputStream a(File paramFile)
    throws GeneralSecurityException, IOException
  {
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    Cipher localCipher = Cipher.getInstance(b.getAlgorithm() + "/CBC/PKCS5Padding");
    localCipher.init(2, b, b(paramFile));
    return new ObjectInputStream(new CipherInputStream(localFileInputStream, localCipher));
  }
  
  private void a()
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
          if (arrayOfFile != null)
          {
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
                YelpLog.remoteError(localException);
                localFile.delete();
              }
            }
          }
        }
      }
      finally {}
      return;
      i += 1;
    }
  }
  
  private void a(Cookie paramCookie)
  {
    if (TextUtils.isEmpty(paramCookie.getValue()))
    {
      b(paramCookie);
      return;
    }
    try
    {
      Pair localPair = c(paramCookie);
      ((ObjectOutputStream)first).writeObject(new SerializableCookie(paramCookie));
      ((ObjectOutputStream)first).flush();
      ((FileDescriptor)second).sync();
      ((ObjectOutputStream)first).close();
      return;
    }
    catch (Exception localException)
    {
      YelpLog.remoteError(localException);
      b(paramCookie);
    }
  }
  
  private IvParameterSpec b(File paramFile)
  {
    byte[] arrayOfByte = new byte[16];
    paramFile = paramFile.getName().getBytes();
    System.arraycopy(paramFile, 0, arrayOfByte, 0, Math.min(paramFile.length, arrayOfByte.length));
    return new IvParameterSpec(arrayOfByte);
  }
  
  private void b(Cookie paramCookie)
  {
    paramCookie = new File(a, paramCookie.getName());
    if (!paramCookie.delete()) {
      paramCookie.deleteOnExit();
    }
  }
  
  private Pair<ObjectOutputStream, FileDescriptor> c(Cookie paramCookie)
    throws IOException, GeneralSecurityException
  {
    a.mkdirs();
    paramCookie = new File(a, paramCookie.getName());
    FileOutputStream localFileOutputStream = new FileOutputStream(paramCookie);
    Cipher localCipher = Cipher.getInstance(b.getAlgorithm() + "/CBC/PKCS5Padding");
    localCipher.init(1, b, b(paramCookie));
    return Pair.create(new ObjectOutputStream(new CipherOutputStream(localFileOutputStream, localCipher)), localFileOutputStream.getFD());
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
  
  private static class SerializableCookie
    implements Serializable, Cookie
  {
    private static final long serialVersionUID = 1L;
    private String mComment;
    private String mCommentUrl;
    private String mDomain;
    private Date mExpiryDate;
    private String mName;
    private String mPath;
    private int[] mPorts;
    private boolean mSecure;
    private String mValue;
    private int mVersion;
    
    public SerializableCookie() {}
    
    public SerializableCookie(String paramString1, String paramString2, int[] paramArrayOfInt, String paramString3, boolean paramBoolean, String paramString4, Date paramDate, String paramString5, int paramInt, String paramString6)
    {
      mName = paramString1;
      mComment = paramString2;
      mPorts = paramArrayOfInt;
      mDomain = paramString3;
      mSecure = paramBoolean;
      mPath = paramString4;
      mExpiryDate = paramDate;
      mValue = paramString5;
      mVersion = paramInt;
      mCommentUrl = paramString6;
    }
    
    public SerializableCookie(Cookie paramCookie)
    {
      this(paramCookie.getName(), paramCookie.getComment(), paramCookie.getPorts(), paramCookie.getDomain(), paramCookie.isSecure(), paramCookie.getPath(), paramCookie.getExpiryDate(), paramCookie.getValue(), paramCookie.getVersion(), paramCookie.getCommentURL());
    }
    
    public String getComment()
    {
      return mComment;
    }
    
    public String getCommentURL()
    {
      return mCommentUrl;
    }
    
    public String getDomain()
    {
      return mDomain;
    }
    
    public Date getExpiryDate()
    {
      return mExpiryDate;
    }
    
    public String getName()
    {
      return mName;
    }
    
    public String getPath()
    {
      return mPath;
    }
    
    public int[] getPorts()
    {
      return mPorts;
    }
    
    public String getValue()
    {
      return mValue;
    }
    
    public int getVersion()
    {
      return mVersion;
    }
    
    public boolean isExpired(Date paramDate)
    {
      return paramDate.after(mExpiryDate);
    }
    
    public boolean isPersistent()
    {
      return true;
    }
    
    public boolean isSecure()
    {
      return mSecure;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.PersistingCookieStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */