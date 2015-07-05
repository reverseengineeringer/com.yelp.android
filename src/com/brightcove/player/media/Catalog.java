package com.brightcove.player.media;

import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventEmitterImpl;
import com.brightcove.player.event.ListensFor;
import java.util.HashMap;
import java.util.Map;

@Emits(events={"findPlaylist", "findVideo"})
@ListensFor(events={"error"})
public class Catalog
  implements Component
{
  public static final String PLAYLIST_ID = "playlistID";
  public static final String PLAYLIST_REFERENCE_ID = "playlistReferenceID";
  public static final String VIDEO_ID = "videoID";
  public static final String VIDEO_REFERENCE_ID = "videoReferenceID";
  private EventEmitter eventEmitter = new EventEmitterImpl();
  private MediaService mediaService;
  
  public Catalog(String paramString)
  {
    mediaService = new MediaService(eventEmitter, paramString);
  }
  
  public Catalog(String paramString1, String paramString2)
  {
    mediaService = new MediaService(eventEmitter, paramString1, paramString2);
  }
  
  public void findPlaylistByID(String paramString, PlaylistListener paramPlaylistListener)
  {
    findPlaylistByID(paramString, null, paramPlaylistListener);
  }
  
  public void findPlaylistByID(String paramString, Map<String, String> paramMap, PlaylistListener paramPlaylistListener)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("playlistID", paramString);
    if (paramMap != null) {
      localHashMap.put("options", paramMap);
    }
    eventEmitter.request("findPlaylist", localHashMap, new Catalog.OnFindPlaylistListener(this, paramPlaylistListener));
  }
  
  public void findPlaylistByReferenceID(String paramString, PlaylistListener paramPlaylistListener)
  {
    findPlaylistByReferenceID(paramString, null, paramPlaylistListener);
  }
  
  public void findPlaylistByReferenceID(String paramString, Map<String, String> paramMap, PlaylistListener paramPlaylistListener)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("playlistReferenceID", paramString);
    if (paramMap != null) {
      localHashMap.put("options", paramMap);
    }
    eventEmitter.request("findPlaylist", localHashMap, new Catalog.OnFindPlaylistListener(this, paramPlaylistListener));
  }
  
  public void findVideoByID(String paramString, VideoListener paramVideoListener)
  {
    findVideoByID(paramString, null, paramVideoListener);
  }
  
  public void findVideoByID(String paramString, Map<String, String> paramMap, VideoListener paramVideoListener)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("videoID", paramString);
    if (paramMap != null) {
      localHashMap.put("options", paramMap);
    }
    eventEmitter.request("findVideo", localHashMap, new Catalog.OnFindVideoListener(this, paramVideoListener));
  }
  
  public void findVideoByReferenceID(String paramString, VideoListener paramVideoListener)
  {
    findVideoByReferenceID(paramString, null, paramVideoListener);
  }
  
  public void findVideoByReferenceID(String paramString, Map<String, String> paramMap, VideoListener paramVideoListener)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("videoReferenceID", paramString);
    if (paramMap != null) {
      localHashMap.put("options", paramMap);
    }
    eventEmitter.request("findVideo", localHashMap, new Catalog.OnFindVideoListener(this, paramVideoListener));
  }
  
  public EventEmitter getEventEmitter()
  {
    return eventEmitter;
  }
  
  public void setEventEmitter(EventEmitter paramEventEmitter)
  {
    eventEmitter = paramEventEmitter;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.Catalog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */