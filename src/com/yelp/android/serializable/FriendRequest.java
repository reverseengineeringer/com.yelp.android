package com.yelp.android.serializable;

public class FriendRequest
  extends _FriendRequest
  implements DisplayableAsUserBadge
{
  public static final a<FriendRequest> CREATOR = new FriendRequest.1();
  
  public String a()
  {
    return j().ad();
  }
  
  public String c()
  {
    return j().c();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof FriendRequest)) {
          return false;
        }
        paramObject = (FriendRequest)paramObject;
        if (c != null) {
          break;
        }
      } while (c == null);
      return false;
    } while (c.equals(c));
    return false;
  }
  
  public boolean h()
  {
    return j().h();
  }
  
  public int hashCode()
  {
    if (c == null) {}
    for (int i = 0;; i = c.hashCode()) {
      return i + 31;
    }
  }
  
  public String i()
  {
    return j().i();
  }
  
  public int j_()
  {
    return j().j_();
  }
  
  public int k_()
  {
    return j().k_();
  }
  
  public int l_()
  {
    return j().M();
  }
  
  public int m_()
  {
    return j().m_();
  }
  
  public int n_()
  {
    return j().n_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.FriendRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */