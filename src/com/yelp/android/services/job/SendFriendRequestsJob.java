package com.yelp.android.services.job;

import com.path.android.jobqueue.c;
import com.path.android.jobqueue.h;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.f;
import java.util.ArrayList;

public class SendFriendRequestsJob
  extends YelpJob
{
  private final String mMessage;
  private final ArrayList<String> mUserIds;
  private final ArrayList<String> mUsersToIgnore;
  
  private SendFriendRequestsJob(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, String paramString)
  {
    super(new h(2).a().b());
    mUserIds = paramArrayList1;
    mUsersToIgnore = paramArrayList2;
    mMessage = paramString;
  }
  
  public static void launchJob(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, String paramString)
  {
    AppData.r().a(new SendFriendRequestsJob(paramArrayList1, paramArrayList2, paramString));
  }
  
  public void onCancel() {}
  
  public void onRun()
  {
    new f(mUserIds, mUsersToIgnore, mMessage, null).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.SendFriendRequestsJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */