package com.ooyala.android;

import java.util.Iterator;
import java.util.Set;

class Stream$DefaultStreamSelector
  implements StreamSelector
{
  public Stream bestStream(Set<Stream> paramSet)
  {
    Stream localStream = null;
    Iterator localIterator = null;
    Object localObject = localIterator;
    if (paramSet != null)
    {
      if (paramSet.size() != 0) {
        break label26;
      }
      localObject = localIterator;
    }
    label26:
    do
    {
      return (Stream)localObject;
      localIterator = paramSet.iterator();
      paramSet = localStream;
      localObject = paramSet;
    } while (!localIterator.hasNext());
    localStream = (Stream)localIterator.next();
    if ((localStream.getDeliveryType().equals("remote_asset")) || (localStream.getDeliveryType().equals("hls"))) {
      return localStream;
    }
    if ((Stream.isDeliveryTypePlayable(localStream)) && (Stream.isProfilePlayable(localStream)))
    {
      localObject = localStream;
      if (paramSet != null)
      {
        localObject = localStream;
        if (localStream.getCombinedBitrate() >= paramSet.getCombinedBitrate()) {
          if ((localStream.getCombinedBitrate() != paramSet.getCombinedBitrate()) || (localStream.getHeight() >= paramSet.getHeight())) {
            break label147;
          }
        }
      }
    }
    label147:
    for (localObject = localStream;; localObject = paramSet)
    {
      paramSet = (Set<Stream>)localObject;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.Stream.DefaultStreamSelector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */