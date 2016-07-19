.class public Lcom/ooyala/android/WidevineLibPlayer;
.super Lcom/ooyala/android/MoviePlayer;
.source "WidevineLibPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/widevine/drmapi/android/WVEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/WidevineLibPlayer$1;
    }
.end annotation


# static fields
.field private static final ERROR:I = -0x1

.field private static final INIT:I


# instance fields
.field private _handler:Landroid/os/Handler;

.field private _stream:Lcom/ooyala/android/Stream;

.field private _wvplayback:Lcom/widevine/drmapi/android/WVPlayback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ooyala/android/MoviePlayer;-><init>()V

    .line 24
    new-instance v0, Lcom/widevine/drmapi/android/WVPlayback;

    invoke-direct {v0}, Lcom/widevine/drmapi/android/WVPlayback;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_wvplayback:Lcom/widevine/drmapi/android/WVPlayback;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_handler:Landroid/os/Handler;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    return-void
.end method

.method private initializeWidevine()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ooyala/android/Constants;->DRM_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/sas/drm2/%s/%s/%s/%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ooyala/android/WidevineLibPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v4}, Lcom/ooyala/android/OoyalaPlayer;->getPlayerAPIClient()Lcom/ooyala/android/PlayerAPIClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ooyala/android/PlayerAPIClient;->getPcode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ooyala/android/WidevineLibPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v5}, Lcom/ooyala/android/OoyalaPlayer;->getEmbedCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "widevine"

    aput-object v5, v3, v4

    const-string/jumbo v4, "ooyala"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v2}, Lcom/ooyala/android/Stream;->getWidevineServerPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getWidevineServerPath()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    const-string/jumbo v2, "WVPortalKey"

    const-string/jumbo v3, "ooyala"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v2, "WVDRMServer"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v0, "WVLicenseTypeKey"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_wvplayback:Lcom/widevine/drmapi/android/WVPlayback;

    iget-object v2, p0, Lcom/ooyala/android/WidevineLibPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v2}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Lcom/widevine/drmapi/android/WVPlayback;->initializeSynchronous(Landroid/content/Context;Ljava/util/HashMap;Lcom/widevine/drmapi/android/WVEventListener;)Lcom/widevine/drmapi/android/WVStatus;

    move-result-object v0

    .line 120
    sget-object v2, Lcom/widevine/drmapi/android/WVStatus;->AlreadyInitialized:Lcom/widevine/drmapi/android/WVStatus;

    if-ne v0, v2, :cond_1

    .line 121
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_wvplayback:Lcom/widevine/drmapi/android/WVPlayback;

    invoke-virtual {v0}, Lcom/widevine/drmapi/android/WVPlayback;->terminateSynchronous()Lcom/widevine/drmapi/android/WVStatus;

    .line 122
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_wvplayback:Lcom/widevine/drmapi/android/WVPlayback;

    iget-object v2, p0, Lcom/ooyala/android/WidevineLibPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v2}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Lcom/widevine/drmapi/android/WVPlayback;->initializeSynchronous(Landroid/content/Context;Ljava/util/HashMap;Lcom/widevine/drmapi/android/WVEventListener;)Lcom/widevine/drmapi/android/WVStatus;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_wvplayback:Lcom/widevine/drmapi/android/WVPlayback;

    invoke-virtual {v0}, Lcom/widevine/drmapi/android/WVPlayback;->terminate()Lcom/widevine/drmapi/android/WVStatus;

    .line 152
    invoke-super {p0}, Lcom/ooyala/android/MoviePlayer;->destroy()V

    .line 153
    return-void
.end method

.method public getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$SeekStyle;->BASIC:Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 95
    :pswitch_1
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/WidevineLibPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V
    .locals 3
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
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    .line 31
    const-string/jumbo v0, "wv_mp4"

    invoke-static {p2, v0}, Lcom/ooyala/android/Stream;->streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "wv_mp4"

    invoke-static {p2, v0}, Lcom/ooyala/android/Stream;->getStreamWithDeliveryType(Ljava/util/Set;Ljava/lang/String;)Lcom/ooyala/android/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    if-nez v0, :cond_1

    .line 35
    const-string/jumbo v0, "Widevine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No available streams for the WidevineLib Player, Cannot continue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v0, "Invalid Stream"

    iput-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_error:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/WidevineLibPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_1
    iput-object p1, p0, Lcom/ooyala/android/WidevineLibPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    .line 43
    invoke-direct {p0}, Lcom/ooyala/android/WidevineLibPlayer;->initializeWidevine()V

    goto :goto_0
.end method

.method public onEvent(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)Lcom/widevine/drmapi/android/WVStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/widevine/drmapi/android/WVEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/widevine/drmapi/android/WVStatus;"
        }
    .end annotation

    .prologue
    .line 48
    const-string/jumbo v0, "Widevine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/widevine/drmapi/android/WVEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lcom/ooyala/android/WidevineLibPlayer$1;->$SwitchMap$com$widevine$drmapi$android$WVEvent:[I

    invoke-virtual {p1}, Lcom/widevine/drmapi/android/WVEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_error:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Widevine Initialization Failed"

    iput-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_error:Ljava/lang/String;

    .line 53
    :cond_0
    :pswitch_1
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_error:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "Widevine License Request Failed"

    iput-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_error:Ljava/lang/String;

    .line 55
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_error:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "Widevine Playback Failed"

    iput-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_error:Ljava/lang/String;

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    const-string/jumbo v0, "WVStatusKey"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WVStatusKey"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_0

    .line 58
    :cond_3
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_wvplayback:Lcom/widevine/drmapi/android/WVPlayback;

    iget-object v1, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->decodedURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/widevine/drmapi/android/WVPlayback;->registerAsset(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVStatus;

    .line 64
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_wvplayback:Lcom/widevine/drmapi/android/WVPlayback;

    iget-object v1, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->decodedURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/widevine/drmapi/android/WVPlayback;->requestLicense(Ljava/lang/String;)Lcom/widevine/drmapi/android/WVStatus;

    .line 65
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    iget-object v1, p0, Lcom/ooyala/android/WidevineLibPlayer;->_wvplayback:Lcom/widevine/drmapi/android/WVPlayback;

    iget-object v2, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v2}, Lcom/ooyala/android/Stream;->decodedURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/widevine/drmapi/android/WVPlayback;->play(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/Stream;->setUrl(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lcom/ooyala/android/Stream;->setUrlFormat(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/ooyala/android/WidevineLibPlayer;->_stream:Lcom/ooyala/android/Stream;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/ooyala/android/WidevineLibPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-super {p0, v1, v0}, Lcom/ooyala/android/MoviePlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    .line 81
    :pswitch_4
    sget-object v0, Lcom/widevine/drmapi/android/WVStatus;->OK:Lcom/widevine/drmapi/android/WVStatus;

    goto/16 :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/ooyala/android/MoviePlayer;->resume()V

    .line 142
    return-void
.end method

.method public resume(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/ooyala/android/WidevineLibPlayer;->initializeWidevine()V

    .line 147
    invoke-super {p0, p1, p2}, Lcom/ooyala/android/MoviePlayer;->resume(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 148
    return-void
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Lcom/ooyala/android/MoviePlayer;->suspend()V

    .line 136
    return-void
.end method

.method public suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ooyala/android/WidevineLibPlayer;->_wvplayback:Lcom/widevine/drmapi/android/WVPlayback;

    invoke-virtual {v0}, Lcom/widevine/drmapi/android/WVPlayback;->terminateSynchronous()Lcom/widevine/drmapi/android/WVStatus;

    .line 130
    invoke-super {p0, p1, p2}, Lcom/ooyala/android/MoviePlayer;->suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 131
    return-void
.end method
