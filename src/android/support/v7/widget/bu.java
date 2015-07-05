package android.support.v7.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;

public class bu
{
  private SparseArray<ArrayList<ce>> a = new SparseArray();
  private SparseIntArray b = new SparseIntArray();
  private int c = 0;
  
  private ArrayList<ce> b(int paramInt)
  {
    ArrayList localArrayList2 = (ArrayList)a.get(paramInt);
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2 == null)
    {
      localArrayList2 = new ArrayList();
      a.put(paramInt, localArrayList2);
      localArrayList1 = localArrayList2;
      if (b.indexOfKey(paramInt) < 0)
      {
        b.put(paramInt, 5);
        localArrayList1 = localArrayList2;
      }
    }
    return localArrayList1;
  }
  
  public ce a(int paramInt)
  {
    ArrayList localArrayList = (ArrayList)a.get(paramInt);
    if ((localArrayList != null) && (!localArrayList.isEmpty()))
    {
      paramInt = localArrayList.size() - 1;
      ce localce = (ce)localArrayList.get(paramInt);
      localArrayList.remove(paramInt);
      return localce;
    }
    return null;
  }
  
  public void a()
  {
    a.clear();
  }
  
  void a(bi parambi)
  {
    c += 1;
  }
  
  void a(bi parambi1, bi parambi2, boolean paramBoolean)
  {
    if (parambi1 != null) {
      b();
    }
    if ((!paramBoolean) && (c == 0)) {
      a();
    }
    if (parambi2 != null) {
      a(parambi2);
    }
  }
  
  public void a(ce paramce)
  {
    int i = paramce.f();
    ArrayList localArrayList = b(i);
    if (b.get(i) <= localArrayList.size()) {
      return;
    }
    paramce.s();
    localArrayList.add(paramce);
  }
  
  void b()
  {
    c -= 1;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */