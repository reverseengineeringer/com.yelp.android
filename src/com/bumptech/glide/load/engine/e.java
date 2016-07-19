package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.b;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.f;
import com.yelp.android.ai.c;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

class e
  implements b
{
  private final String a;
  private final int b;
  private final int c;
  private final d d;
  private final d e;
  private final f f;
  private final com.bumptech.glide.load.e g;
  private final c h;
  private final a i;
  private final b j;
  private String k;
  private int l;
  private b m;
  
  public e(String paramString, b paramb, int paramInt1, int paramInt2, d paramd1, d paramd2, f paramf, com.bumptech.glide.load.e parame, c paramc, a parama)
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
      m = new h(a, j);
    }
    return m;
  }
  
  public void a(MessageDigest paramMessageDigest)
    throws UnsupportedEncodingException
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
    label119:
    label128:
    label182:
    label191:
    label245:
    label254:
    label308:
    label317:
    label371:
    label380:
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
                                paramObject = (e)paramObject;
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
                          break label495;
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
                      break label500;
                    }
                    n = 1;
                    if (e != null) {
                      break label505;
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
                  break label510;
                }
                n = 1;
                if (d != null) {
                  break label515;
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
              break label520;
            }
            n = 1;
            if (g != null) {
              break label525;
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
          break label530;
        }
        n = 1;
        if (h != null) {
          break label535;
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
      label434:
      if (i != null) {
        break label545;
      }
    }
    label495:
    label500:
    label505:
    label510:
    label515:
    label520:
    label525:
    label530:
    label535:
    label545:
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
      break label119;
      i1 = 0;
      break label128;
      n = 0;
      break label182;
      i1 = 0;
      break label191;
      n = 0;
      break label245;
      i1 = 0;
      break label254;
      n = 0;
      break label308;
      i1 = 0;
      break label317;
      n = 0;
      break label371;
      i1 = 0;
      break label380;
      n = 0;
      break label434;
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
        break label290;
      }
      n = d.a().hashCode();
      l = (n + i2 * 31);
      i2 = l;
      if (e == null) {
        break label295;
      }
      n = e.a().hashCode();
      label133:
      l = (n + i2 * 31);
      i2 = l;
      if (f == null) {
        break label300;
      }
      n = f.a().hashCode();
      label168:
      l = (n + i2 * 31);
      i2 = l;
      if (g == null) {
        break label305;
      }
      n = g.a().hashCode();
      label203:
      l = (n + i2 * 31);
      i2 = l;
      if (h == null) {
        break label310;
      }
    }
    label290:
    label295:
    label300:
    label305:
    label310:
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
      break label133;
      n = 0;
      break label168;
      n = 0;
      break label203;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder;
    if (k == null)
    {
      localStringBuilder = new StringBuilder().append("EngineKey{").append(a).append('+').append(j).append("+[").append(b).append('x').append(c).append("]+").append('\'');
      if (d == null) {
        break label307;
      }
      str = d.a();
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (e == null) {
        break label313;
      }
      str = e.a();
      label128:
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (f == null) {
        break label319;
      }
      str = f.a();
      label166:
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (g == null) {
        break label325;
      }
      str = g.a();
      label204:
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (h == null) {
        break label331;
      }
      str = h.a();
      label242:
      localStringBuilder = localStringBuilder.append(str).append('\'').append('+').append('\'');
      if (i == null) {
        break label337;
      }
    }
    label307:
    label313:
    label319:
    label325:
    label331:
    label337:
    for (String str = i.a();; str = "")
    {
      k = (str + '\'' + '}');
      return k;
      str = "";
      break;
      str = "";
      break label128;
      str = "";
      break label166;
      str = "";
      break label204;
      str = "";
      break label242;
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */