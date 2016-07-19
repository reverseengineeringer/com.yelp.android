package rx.subjects;

public final class SubjectSubscriptionManager$a<T>
{
  static final SubjectSubscriptionManager.b[] c = new SubjectSubscriptionManager.b[0];
  static final a d = new a(true, c);
  static final a e = new a(false, c);
  final boolean a;
  final SubjectSubscriptionManager.b[] b;
  
  public SubjectSubscriptionManager$a(boolean paramBoolean, SubjectSubscriptionManager.b[] paramArrayOfb)
  {
    a = paramBoolean;
    b = paramArrayOfb;
  }
  
  public a a(SubjectSubscriptionManager.b paramb)
  {
    int i = b.length;
    SubjectSubscriptionManager.b[] arrayOfb = new SubjectSubscriptionManager.b[i + 1];
    System.arraycopy(b, 0, arrayOfb, 0, i);
    arrayOfb[i] = paramb;
    return new a(a, arrayOfb);
  }
  
  public a b(SubjectSubscriptionManager.b paramb)
  {
    SubjectSubscriptionManager.b[] arrayOfb2 = b;
    int m = arrayOfb2.length;
    a locala;
    if ((m == 1) && (arrayOfb2[0] == paramb)) {
      locala = e;
    }
    SubjectSubscriptionManager.b[] arrayOfb1;
    int j;
    SubjectSubscriptionManager.b localb;
    do
    {
      do
      {
        return locala;
        locala = this;
      } while (m == 0);
      arrayOfb1 = new SubjectSubscriptionManager.b[m - 1];
      j = 0;
      i = 0;
      if (j >= m) {
        break;
      }
      localb = arrayOfb2[j];
      if (localb == paramb) {
        break label153;
      }
      locala = this;
    } while (i == m - 1);
    int k = i + 1;
    arrayOfb1[i] = localb;
    int i = k;
    label153:
    for (;;)
    {
      j += 1;
      break;
      if (i == 0) {
        return e;
      }
      if (i < m - 1)
      {
        paramb = new SubjectSubscriptionManager.b[i];
        System.arraycopy(arrayOfb1, 0, paramb, 0, i);
      }
      for (;;)
      {
        return new a(a, paramb);
        paramb = arrayOfb1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     rx.subjects.SubjectSubscriptionManager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */