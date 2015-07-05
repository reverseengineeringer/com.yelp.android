package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.b;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.f;
import com.yelp.android.ad.c;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

class n
  implements b
{
  private final String a;
  private final int b;
  private final int c;
  private final d d;
  private final d e;
  private final f f;
  private final e g;
  private final c h;
  private final a i;
  private final b j;
  private String k;
  private int l;
  private b m;
  
  public n(String paramString, b paramb, int paramInt1, int paramInt2, d paramd1, d paramd2, f paramf, e parame, c paramc, a parama)
  {
    a = paramString;
    j = paramb;
    b = paramInt1;
    c = paramInt2;
    d = paramd1;
    e = paramd2;
    f = paramf;
    g = parame;
    h = paramc;
    i = parama;
  }
  
  public b a()
  {
    if (m == null) {
      m = new s(a, j);
    }
    return m;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    Object localObject = ByteBuffer.allocate(8).putInt(b).putInt(c).array();
    j.a(paramMessageDigest);
    paramMessageDigest.update(a.getBytes("UTF-8"));
    paramMessageDigest.update((byte[])localObject);
    if (d != null)
    {
      localObject = d.a();
      paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
      if (e == null) {
        break label193;
      }
      localObject = e.a();
      label95:
      paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
      if (f == null) {
        break label199;
      }
      localObject = f.a();
      label122:
      paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
      if (g == null) {
        break label205;
      }
      localObject = g.a();
      label149:
      paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
      if (i == null) {
        break label211;
      }
    }
    label193:
    label199:
    label205:
    label211:
    for (localObject = i.a();; localObject = "")
    {
      paramMessageDigest.update(((String)localObject).getBytes("UTF-8"));
      return;
      localObject = "";
      break;
      localObject = "";
      break label95;
      localObject = "";
      break label122;
      localObject = "";
      break label149;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    int n;
    label117:
    label126:
    label180:
    label189:
    label243:
    label252:
    label306:
    label315:
    label369:
    label378:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            do
                            {
                              do
                              {
                                do
                                {
                                  do
                                  {
                                    return bool1;
                                    bool1 = bool2;
                                  } while (paramObject == null);
                                  bool1 = bool2;
                                } while (getClass() != paramObject.getClass());
                                paramObject = (n)paramObject;
                                bool1 = bool2;
                              } while (!a.equals(a));
                              bool1 = bool2;
                            } while (!j.equals(j));
                            bool1 = bool2;
                          } while (c != c);
                          bool1 = bool2;
                        } while (b != b);
                        if (f != null) {
                          break;
                        }
                        n = 1;
                        if (f != null) {
                          break label493;
                        }
                        i1 = 1;
                        bool1 = bool2;
                      } while ((n ^ i1) != 0);
                      if (f == null) {
                        break;
                      }
                      bool1 = bool2;
                    } while (!f.a().equals(f.a()));
                    if (e != null) {
                      break label498;
                    }
                    n = 1;
                    if (e != null) {
                      break label503;
                    }
                    i1 = 1;
                    bool1 = bool2;
                  } while ((n ^ i1) != 0);
                  if (e == null) {
                    break;
                  }
                  bool1 = bool2;
                } while (!e.a().equals(e.a()));
                if (d != null) {
                  break label508;
                }
                n = 1;
                if (d != null) {
                  break label513;
                }
                i1 = 1;
                bool1 = bool2;
              } while ((n ^ i1) != 0);
              if (d == null) {
                break;
              }
              bool1 = bool2;
            } while (!d.a().equals(d.a()));
            if (g != null) {
              break label518;
            }
            n = 1;
            if (g != null) {
              break label523;
            }
            i1 = 1;
            bool1 = bool2;
          } while ((n ^ i1) != 0);
          if (g == null) {
            break;
          }
          bool1 = bool2;
        } while (!g.a().equals(g.a()));
        if (h != null) {
          break label528;
        }
        n = 1;
        if (h != null) {
          break label533;
        }
        i1 = 1;
        bool1 = bool2;
      } while ((n ^ i1) != 0);
      if (h == null) {
        break;
      }
      bool1 = bool2;
    } while (!h.a().equals(h.a()));
    if (i == null)
    {
      n = 1;
      label432:
      if (i != null) {
        break label543;
      }
    }
    label493:
    label498:
    label503:
    label508:
    label513:
    label518:
    label523:
    label528:
    label533:
    label543:
    for (int i1 = 1;; i1 = 0)
    {
      bool1 = bool2;
      if ((n ^ i1) != 0) {
        break;
      }
      if (i != null)
      {
        bool1 = bool2;
        if (!i.a().equals(i.a())) {
          break;
        }
      }
      return true;
      n = 0;
      break label117;
      i1 = 0;
      break label126;
      n = 0;
      break label180;
      i1 = 0;
      break label189;
      n = 0;
      break label243;
      i1 = 0;
      break label252;
      n = 0;
      break label306;
      i1 = 0;
      break label315;
      n = 0;
      break label369;
      i1 = 0;
      break label378;
      n = 0;
      break label432;
    }
  }
  
  public int hashCode()
  {
    int i1 = 0;
    int i2;
    if (l == 0)
    {
      l = a.hashCode();
      l = (l * 31 + j.hashCode());
      l = (l * 31 + b);
      l = (l * 31 + c);
      i2 = l;
      if (d == null) {
        break label288;
      }
      n = d.a().hashCode();
      l = (n + i2 * 31);
      i2 = l;
      if (e == null) {
        break label293;
      }
      n = e.a().hashCode();
      label131:
      l = (n + i2 * 31);
      i2 = l;
      if (f == null) {
        break label298;
      }
      n = f.a().hashCode();
      label166:
      l = (n + i2 * 31);
      i2 = l;
      if (g == null) {
        break label303;
      }
      n = g.a().hashCode();
      label201:
      l = (n + i2 * 31);
      i2 = l;
      if (h == null) {
        break label308;
      }
    }
    label288:
    label293:
    label298:
    label303:
    label308:
    for (int n = h.a().hashCode();; n = 0)
    {
      l = (n + i2 * 31);
      i2 = l;
      n = i1;
      if (i != null) {
        n = i.a().hashCode();
      }
      l = (i2 * 31 + n);
      return l;
      n = 0;
      break;
      n = 0;
      break label131;
      n = 0;
      break label166;
      n = 0;
      break label201;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder;
    if (k == null)
    {
      localStringBuilder = new StringBuilder().append(a).append(j).append(b).append(c);
      if (d == null) {
        break label192;
      }
      str = d.a();
      localStringBuilder = localStringBuilder.append(str);
      if (e == null) {
        break label198;
      }
      str = e.a();
      label83:
      localStringBuilder = localStringBuilder.append(str);
      if (f == null) {
        break label204;
      }
      str = f.a();
      label106:
      localStringBuilder = localStringBuilder.append(str);
      if (g == null) {
        break label210;
      }
      str = g.a();
      label129:
      localStringBuilder = localStringBuilder.append(str);
      if (h == null) {
        break label216;
      }
      str = h.a();
      label152:
      localStringBuilder = localStringBuilder.append(str);
      if (i == null) {
        break label222;
      }
    }
    label192:
    label198:
    label204:
    label210:
    label216:
    label222:
    for (String str = i.a();; str = "")
    {
      k = str;
      return k;
      str = "";
      break;
      str = "";
      break label83;
      str = "";
      break label106;
      str = "";
      break label129;
      str = "";
      break label152;
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */