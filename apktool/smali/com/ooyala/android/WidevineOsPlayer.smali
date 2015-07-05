.class Lcom/ooyala/android/WidevineOsPlayer;
.super Lcom/ooyala/android/MoviePlayer;
.source "WidevineOsPlayer.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;
.implements Landroid/drm/DrmManagerClient$OnEventListener;
.implements Landroid/drm/DrmManagerClient$OnInfoListener;
.implements Lcom/ooyala/android/WidevineStuckMonitor$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidevineOsPlayer"

.field private static _drmClient:Landroid/drm/DrmManagerClient;


# instance fields
.field private _live:Z

.field private _stuckMonitor:Lcom/ooyala/android/WidevineStuckMonitor;

.field private isSeeking:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/ooyala/android/MoviePlayer;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->_live:Z

    .line 32
    iput-boolean v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->isSeeking:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ooyala/android/WidevineOsPlayer;)Lcom/ooyala/android/WidevineStuckMonitor;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->_stuckMonitor:Lcom/ooyala/android/WidevineStuckMonitor;

    return-object v0
.end method

.method private static eventToString(Landroid/drm/DrmEvent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/drm/DrmEvent;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 220
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 188
    :sswitch_0
    const-string/jumbo v0, "All Rights Removed"

    goto :goto_0

    .line 190
    :sswitch_1
    const-string/jumbo v0, "DRM Info Processed"

    goto :goto_0

    .line 192
    :sswitch_2
    const-string/jumbo v0, "Account Already Registered"

    goto :goto_0

    .line 194
    :sswitch_3
    const-string/jumbo v0, "Already Registered by Another Account"

    goto :goto_0

    .line 196
    :sswitch_4
    const-string/jumbo v0, "Remove Rights"

    goto :goto_0

    .line 198
    :sswitch_5
    const-string/jumbo v0, "Rights Installed"

    goto :goto_0

    .line 200
    :sswitch_6
    const-string/jumbo v0, "Rights Removed"

    goto :goto_0

    .line 202
    :sswitch_7
    const-string/jumbo v0, "Wait for Rights"

    goto :goto_0

    .line 204
    :sswitch_8
    const-string/jumbo v0, "Acquire DRM Info Failed"

    goto :goto_0

    .line 206
    :sswitch_9
    const-string/jumbo v0, "No Internet Connection"

    goto :goto_0

    .line 208
    :sswitch_a
    const-string/jumbo v0, "Type Not Supported"

    goto :goto_0

    .line 210
    :sswitch_b
    const-string/jumbo v0, "Out of Memory"

    goto :goto_0

    .line 212
    :sswitch_c
    const-string/jumbo v0, "DRM Info Request Failed"

    goto :goto_0

    .line 214
    :sswitch_d
    const-string/jumbo v0, "Remove All Rights Failed"

    goto :goto_0

    .line 216
    :sswitch_e
    const-string/jumbo v0, "Rights Not Installed"

    goto :goto_0

    .line 218
    :sswitch_f
    const-string/jumbo v0, "Rights Renewal Not Allowed"

    goto :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_7
        0x5 -> :sswitch_2
        0x6 -> :sswitch_6
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
        0x7d1 -> :sswitch_e
        0x7d2 -> :sswitch_f
        0x7d3 -> :sswitch_a
        0x7d4 -> :sswitch_b
        0x7d5 -> :sswitch_9
        0x7d6 -> :sswitch_c
        0x7d7 -> :sswitch_d
        0x7d8 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->_stuckMonitor:Lcom/ooyala/android/WidevineStuckMonitor;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->_stuckMonitor:Lcom/ooyala/android/WidevineStuckMonitor;

    invoke-virtual {v0}, Lcom/ooyala/android/WidevineStuckMonitor;->destroy()V

    .line 125
    :cond_0
    invoke-super {p0}, Lcom/ooyala/android/MoviePlayer;->destroy()V

    .line 126
    return-void
.end method

.method public getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$SeekStyle;->BASIC:Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    return-object v0
.end method

.method public init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ooyala/android/OoyalaPlayer;",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 38
    const/4 v0, 0x0

    .line 39
    const-string/jumbo v1, "wv_wvm"

    invoke-static {p2, v1}, Lcom/ooyala/android/Stream;->streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v0, "wv_wvm"

    invoke-static {p2, v0}, Lcom/ooyala/android/Stream;->getStreamWithDeliveryType(Ljava/util/Set;Ljava/lang/String;)Lcom/ooyala/android/Stream;

    move-result-object v0

    move-object v1, v0

    .line 44
    :goto_0
    if-nez v1, :cond_1

    .line 45
    const-string/jumbo v0, "WidevineOsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No available streams for the Widevine Lib Player, Cannot continue. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v0, "Invalid Stream"

    iput-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->_error:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/WidevineOsPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 108
    :goto_1
    return-void

    .line 41
    :cond_0
    const-string/jumbo v1, "wv_hls"

    invoke-static {p2, v1}, Lcom/ooyala/android/Stream;->streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 42
    const-string/jumbo v0, "wv_hls"

    invoke-static {p2, v0}, Lcom/ooyala/android/Stream;->getStreamWithDeliveryType(Ljava/util/Set;Ljava/lang/String;)Lcom/ooyala/android/Stream;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lcom/ooyala/android/WidevineOsPlayer;->_drmClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_2

    .line 53
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ooyala/android/WidevineOsPlayer;->_drmClient:Landroid/drm/DrmManagerClient;

    .line 54
    sget-object v0, Lcom/ooyala/android/WidevineOsPlayer;->_drmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 55
    sget-object v0, Lcom/ooyala/android/WidevineOsPlayer;->_drmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 56
    sget-object v0, Lcom/ooyala/android/WidevineOsPlayer;->_drmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V

    .line 61
    :cond_2
    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->decodedURL()Ljava/net/URL;

    move-result-object v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    const-string/jumbo v0, "WidevineOsPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid stream, Malformed URL, Cannot continue. URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string/jumbo v0, "Invalid Stream"

    iput-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->_error:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/WidevineOsPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".m3u8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 72
    iput-boolean v7, p0, Lcom/ooyala/android/WidevineOsPlayer;->_live:Z

    .line 74
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "widevine"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ooyala/android/Stream;->setUrl(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "text"

    invoke-virtual {v1, v0}, Lcom/ooyala/android/Stream;->setUrlFormat(Ljava/lang/String;)V

    .line 77
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const-string/jumbo v0, "video/wvm"

    invoke-direct {v2, v8, v0}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ooyala/android/Constants;->DRM_HOST:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/sas/drm2/%s/%s/%s/%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getPlayerAPIClient()Lcom/ooyala/android/PlayerAPIClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ooyala/android/PlayerAPIClient;->getPcode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getEmbedCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "widevine"

    aput-object v6, v4, v5

    const-string/jumbo v5, "ooyala"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->getWidevineServerPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 85
    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->getWidevineServerPath()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_5
    :goto_2
    const-string/jumbo v3, "WVDRMServerKey"

    invoke-virtual {v2, v3, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string/jumbo v0, "WVAssetURIKey"

    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string/jumbo v0, "WVPortalKey"

    const-string/jumbo v3, "ooyala"

    invoke-virtual {v2, v0, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v0, "WVDeviceIDKey"

    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string/jumbo v0, "WVLicenseTypeKey"

    const-string/jumbo v3, "3"

    invoke-virtual {v2, v0, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/ooyala/android/WidevineOsPlayer;->_drmClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, v2}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 104
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-super {p0, p1, v0}, Lcom/ooyala/android/MoviePlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    .line 107
    new-instance v0, Lcom/ooyala/android/WidevineStuckMonitor;

    invoke-direct {v0, p1, p0, p0}, Lcom/ooyala/android/WidevineStuckMonitor;-><init>(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/Player;Lcom/ooyala/android/WidevineStuckMonitor$Listener;)V

    iput-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->_stuckMonitor:Lcom/ooyala/android/WidevineStuckMonitor;

    goto/16 :goto_1

    .line 88
    :cond_6
    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getPlayerAPIClient()Lcom/ooyala/android/PlayerAPIClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ooyala/android/PlayerAPIClient;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    .line 89
    if-eqz v3, :cond_5

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "?auth_token="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 3

    .prologue
    .line 147
    const-string/jumbo v0, "WidevineOsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WidevineError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/ooyala/android/WidevineOsPlayer;->eventToString(Landroid/drm/DrmEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->_error:Ljava/lang/String;

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ooyala/android/WidevineOsPlayer$2;

    invoke-direct {v1, p0}, Lcom/ooyala/android/WidevineOsPlayer$2;-><init>(Lcom/ooyala/android/WidevineOsPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .locals 3

    .prologue
    .line 161
    const-string/jumbo v0, "WidevineOsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WidevineEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/ooyala/android/WidevineOsPlayer;->eventToString(Landroid/drm/DrmEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public onFrozen()V
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "WidevineOsPlayer"

    const-string/jumbo v1, "onFrozen(): posting the runnable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ooyala/android/WidevineOsPlayer$1;

    invoke-direct {v1, p0}, Lcom/ooyala/android/WidevineOsPlayer$1;-><init>(Lcom/ooyala/android/WidevineOsPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V
    .locals 3

    .prologue
    .line 166
    const-string/jumbo v0, "WidevineOsPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WidevineInfoEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/ooyala/android/WidevineOsPlayer;->eventToString(Landroid/drm/DrmEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public seekToTime(I)V
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->_live:Z

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->isSeeking:Z

    if-nez v0, :cond_1

    .line 177
    const-string/jumbo v0, "WidevineOsPlayer"

    const-string/jumbo v1, "Seek started. Disabling seeking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-super {p0, p1}, Lcom/ooyala/android/MoviePlayer;->seekToTime(I)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->isSeeking:Z

    goto :goto_0

    .line 181
    :cond_1
    const-string/jumbo v0, "WidevineOsPlayer"

    const-string/jumbo v1, "Trying to seek while already seeking, dropping the incoming seek"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "seekCompleted"

    if-ne p2, v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/WidevineOsPlayer;->isSeeking:Z

    .line 115
    const-string/jumbo v0, "WidevineOsPlayer"

    const-string/jumbo v1, "Seek completed. Re-enabling seeking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ooyala/android/MoviePlayer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 118
    return-void
.end method
