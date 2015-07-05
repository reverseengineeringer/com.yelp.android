package com.yelp.android.ay;

import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import com.yelp.android.database.aa;
import com.yelp.android.database.u;
import com.yelp.android.database.w;
import com.yelp.android.database.y;
import com.yelp.android.serializable.Conversation;

public class e
{
  private final AsyncTask<?, ?, SQLiteDatabase> a;
  private final aa b;
  
  public e(AsyncTask<?, ?, SQLiteDatabase> paramAsyncTask)
  {
    a = paramAsyncTask;
    b = a().a();
  }
  
  public static y a()
  {
    return new s();
  }
  
  public void a(r paramr, w paramw)
  {
    paramr = new p(paramr);
    new u(a, paramw, new g(this, paramr)).execute(new Void[0]);
  }
  
  public void a(Conversation paramConversation)
  {
    b(paramConversation, null);
  }
  
  public void a(Conversation paramConversation, w paramw)
  {
    new u(a, paramw, new f(this, paramConversation)).execute(new Void[0]);
  }
  
  public void b(Conversation paramConversation, w paramw)
  {
    new u(a, paramw, new h(this, paramConversation)).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */