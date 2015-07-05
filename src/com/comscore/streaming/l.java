package com.comscore.streaming;

import com.comscore.utils.c;
import java.util.HashMap;
import java.util.TimerTask;

class l
  extends TimerTask
{
  l(StreamSenseVideoView paramStreamSenseVideoView, long paramLong, HashMap paramHashMap) {}
  
  public void run()
  {
    c.a("StreamSenseVideoView", "startEventTimer -> lastPosition:" + a + " currentPosition:" + StreamSenseVideoView.a(c));
    long l1 = Long.parseLong((String)b.get("ns_ts"));
    long l2 = StreamSenseVideoView.a(c) - a;
    long l3 = System.currentTimeMillis();
    if (l2 >= 500L)
    {
      l2 = l3 - l1 - l2;
      if (l2 > 0L)
      {
        StreamSenseVideoView.a(c, l2);
        c.a("StreamSenseVideoView", "addToBufferingTotal=" + l2);
        b.put("ns_ts", String.valueOf(l1 + l2));
      }
      b.put("ns_st_bt", String.valueOf(StreamSenseVideoView.b(c)));
      StreamSenseVideoView.c(c);
      StreamSenseVideoView.a(c, b, StreamSenseVideoView.a(c));
      StreamSenseVideoView.d(c);
      return;
    }
    StreamSenseVideoView.c(c);
    StreamSenseVideoView.a(c, b);
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */