package com.yelp.android.services;

import java.io.Serializable;
import java.util.Date;
import org.apache.http.cookie.Cookie;

class PersistingCookieStore$SerializableCookie
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
  
  public PersistingCookieStore$SerializableCookie() {}
  
  public PersistingCookieStore$SerializableCookie(String paramString1, String paramString2, int[] paramArrayOfInt, String paramString3, boolean paramBoolean, String paramString4, Date paramDate, String paramString5, int paramInt, String paramString6)
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
  
  public PersistingCookieStore$SerializableCookie(Cookie paramCookie)
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

/* Location:
 * Qualified Name:     com.yelp.android.services.PersistingCookieStore.SerializableCookie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */