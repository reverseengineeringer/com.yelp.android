package com.kahuna.sdk;

import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class l$11
  implements Runnable
{
  l$11(l paraml, i parami) {}
  
  public void run()
  {
    Object localObject2 = s.f(l.a(b));
    Object localObject1;
    if (a != null)
    {
      localObject1 = a.a();
      if (!((Map)localObject2).isEmpty()) {
        break label131;
      }
      if (!w.a(a)) {
        break label59;
      }
    }
    for (;;)
    {
      return;
      localObject1 = new HashMap();
      break;
      label59:
      if (l.a) {
        Log.d("Kahuna", "login() called and no previous credentials found. Storing new credentials: " + localObject1);
      }
      s.b((Map)localObject1, l.a(b));
      int i = 1;
      while (i != 0)
      {
        localObject2 = new Event("k_user_login");
        ((Event)localObject2).a((Map)localObject1);
        l.a(b, (Event)localObject2);
        return;
        label131:
        if (w.a(a))
        {
          if (l.a) {
            Log.d("Kahuna", "login() called with previous credentials but new credentials are empty. Triggering empty k_user_login.");
          }
          l.n(b);
          i = 1;
          localObject1 = null;
        }
        else if (!a.a(new v((Map)localObject2)))
        {
          if (w.a((Map)localObject2, (Map)localObject1))
          {
            localObject1 = ((Map)localObject1).entrySet().iterator();
            while (((Iterator)localObject1).hasNext())
            {
              Map.Entry localEntry = (Map.Entry)((Iterator)localObject1).next();
              if (((Map)localObject2).containsKey(localEntry.getKey())) {
                ((Set)((Map)localObject2).get(localEntry.getKey())).addAll((Collection)localEntry.getValue());
              } else {
                ((Map)localObject2).put(localEntry.getKey(), localEntry.getValue());
              }
            }
            if (l.a) {
              Log.d("Kahuna", "login() called with overlapping credentials. Merging all credentials: " + localObject2);
            }
            s.b((Map)localObject2, l.a(b));
            i = 1;
            localObject1 = localObject2;
          }
          else
          {
            if (l.a) {
              Log.d("Kahuna", "login() called with no overlapping credentials. Sending up only new credentials.");
            }
            l.n(b);
            s.b((Map)localObject1, l.a(b));
            i = 1;
          }
        }
        else
        {
          if (l.a) {
            Log.d("Kahuna", "login() called with no change in credentials.");
          }
          i = 0;
          localObject1 = null;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */