package com.yelp.android.ui.activities.mutatebiz;

import com.yelp.android.database.m;
import com.yelp.android.serializable.Category;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

final class n
  implements ag<Category, Category>
{
  private final m a;
  private final Set<Category> b;
  
  public n(m paramm, String[] paramArrayOfString)
  {
    a = paramm;
    b = new HashSet();
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = paramArrayOfString[i];
      b.add(paramm.a(str));
      i += 1;
    }
  }
  
  public Category a(Category... paramVarArgs)
  {
    paramVarArgs = new LinkedList(Arrays.asList(paramVarArgs));
    while ((!paramVarArgs.isEmpty()) && (0 == 0))
    {
      Category localCategory = (Category)paramVarArgs.poll();
      if (b.contains(localCategory)) {
        return localCategory;
      }
      paramVarArgs.addAll(a.a(localCategory));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */