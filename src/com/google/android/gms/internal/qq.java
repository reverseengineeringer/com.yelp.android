package com.google.android.gms.internal;

public abstract class qq<M extends qq<M>>
  extends qw
{
  protected qs ayW;
  
  public final <T> T a(qr<M, T> paramqr)
  {
    if (ayW == null) {}
    qt localqt;
    do
    {
      return null;
      localqt = ayW.hh(qz.hl(tag));
    } while (localqt == null);
    return (T)localqt.b(paramqr);
  }
  
  public void a(qp paramqp)
  {
    if (ayW == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < ayW.size())
      {
        ayW.hi(i).a(paramqp);
        i += 1;
      }
    }
  }
  
  protected final boolean a(qo paramqo, int paramInt)
  {
    int i = paramqo.getPosition();
    if (!paramqo.gQ(paramInt)) {
      return false;
    }
    int j = qz.hl(paramInt);
    qy localqy = new qy(paramInt, paramqo.s(i, paramqo.getPosition() - i));
    paramqo = null;
    if (ayW == null) {
      ayW = new qs();
    }
    for (;;)
    {
      Object localObject = paramqo;
      if (paramqo == null)
      {
        localObject = new qt();
        ayW.a(j, (qt)localObject);
      }
      ((qt)localObject).a(localqy);
      return true;
      paramqo = ayW.hh(j);
    }
  }
  
  protected final boolean a(M paramM)
  {
    if ((ayW == null) || (ayW.isEmpty())) {
      return (ayW == null) || (ayW.isEmpty());
    }
    return ayW.equals(ayW);
  }
  
  protected int c()
  {
    int j = 0;
    if (ayW != null)
    {
      int i = 0;
      for (;;)
      {
        k = i;
        if (j >= ayW.size()) {
          break;
        }
        i += ayW.hi(j).c();
        j += 1;
      }
    }
    int k = 0;
    return k;
  }
  
  protected final int rQ()
  {
    if ((ayW == null) || (ayW.isEmpty())) {
      return 0;
    }
    return ayW.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */