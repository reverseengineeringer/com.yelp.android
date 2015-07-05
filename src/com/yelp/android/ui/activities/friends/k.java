package com.yelp.android.ui.activities.friends;

import android.os.AsyncTask;
import com.yelp.android.util.ContactsFetcher;
import com.yelp.android.util.ContactsFetcher.Contact;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class k
  extends AsyncTask<Void, Void, Map<String, ContactsFetcher.Contact>>
{
  k(j paramj, Map paramMap, ArrayList paramArrayList) {}
  
  protected Map<String, ContactsFetcher.Contact> a(Void... paramVarArgs)
  {
    paramVarArgs = new HashSet(a.values());
    paramVarArgs = ContactsFetcher.b().a(c.a.getActivity(), paramVarArgs);
    HashMap localHashMap = new HashMap(paramVarArgs.size(), 1.0F);
    Iterator localIterator1 = a.entrySet().iterator();
    for (;;)
    {
      if (!localIterator1.hasNext()) {
        return localHashMap;
      }
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      Iterator localIterator2 = paramVarArgs.iterator();
      if (localIterator2.hasNext())
      {
        ContactsFetcher.Contact localContact = (ContactsFetcher.Contact)localIterator2.next();
        if (!localContact.getEmail(c.a.getActivity()).equalsIgnoreCase((String)localEntry.getValue())) {
          break;
        }
        localHashMap.put(localEntry.getKey(), localContact);
      }
    }
    return localHashMap;
  }
  
  protected void a(Map<String, ContactsFetcher.Contact> paramMap)
  {
    FindFriendsFBContactsFragment.a(c.a, b, paramMap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */