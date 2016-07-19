package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.f;
import com.facebook.internal.a;
import com.facebook.internal.n;
import com.facebook.internal.p;
import java.util.UUID;

class b$8
  extends h
{
  b$8(b paramb, f paramf, Bundle paramBundle)
  {
    super(paramf);
  }
  
  public void a(a parama)
  {
    a(parama, new FacebookOperationCanceledException());
  }
  
  public void a(a parama, Bundle paramBundle)
  {
    if ((paramBundle == null) || (!paramBundle.containsKey("object_is_liked"))) {
      return;
    }
    boolean bool = paramBundle.getBoolean("object_is_liked");
    Object localObject1 = b.b(b);
    String str1 = b.c(b);
    if (paramBundle.containsKey("like_count_string"))
    {
      str1 = paramBundle.getString("like_count_string");
      localObject1 = str1;
    }
    Object localObject2 = b.d(b);
    String str2 = b.e(b);
    if (paramBundle.containsKey("social_sentence"))
    {
      str2 = paramBundle.getString("social_sentence");
      localObject2 = str2;
    }
    if (paramBundle.containsKey("object_is_liked"))
    {
      paramBundle = paramBundle.getString("unlike_token");
      if (a != null) {
        break label189;
      }
    }
    label189:
    for (Bundle localBundle = new Bundle();; localBundle = a)
    {
      localBundle.putString("call_id", parama.c().toString());
      b.g(b).a("fb_like_control_dialog_did_succeed", null, localBundle);
      b.a(b, bool, (String)localObject1, str1, (String)localObject2, str2, paramBundle);
      return;
      paramBundle = b.f(b);
      break;
    }
  }
  
  public void a(a parama, FacebookException paramFacebookException)
  {
    n.a(LoggingBehavior.REQUESTS, b.f(), "Like Dialog failed with error : %s", new Object[] { paramFacebookException });
    if (a == null) {}
    for (Bundle localBundle = new Bundle();; localBundle = a)
    {
      localBundle.putString("call_id", parama.c().toString());
      b.a(b, "present_dialog", localBundle);
      b.b(b, "com.facebook.sdk.LikeActionController.DID_ERROR", p.a(paramFacebookException));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */