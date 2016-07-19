.class public Lcom/ooyala/android/OoyalaPlayer;
.super Ljava/util/Observable;
.source "OoyalaPlayer.java"

# interfaces
.implements Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/OoyalaPlayer$11;,
        Lcom/ooyala/android/OoyalaPlayer$Environment;,
        Lcom/ooyala/android/OoyalaPlayer$SeekStyle;,
        Lcom/ooyala/android/OoyalaPlayer$State;,
        Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;
    }
.end annotation


# static fields
.field public static final AD_COMPLETED_NOTIFICATION:Ljava/lang/String; = "adCompleted"

.field public static final AD_ERROR_NOTIFICATION:Ljava/lang/String; = "adError"

.field public static final AD_SKIPPED_NOTIFICATION:Ljava/lang/String; = "adSkipped"

.field public static final AD_STARTED_NOTIFICATION:Ljava/lang/String; = "adStarted"

.field public static final AUTHORIZATION_READY_NOTIFICATION:Ljava/lang/String; = "authorizationReady"

.field public static final BUFFER_CHANGED_NOTIFICATION:Ljava/lang/String; = "bufferChanged"

.field public static final CONTENT_TREE_READY_NOTIFICATION:Ljava/lang/String; = "contentTreeReady"

.field public static final CURRENT_ITEM_CHANGED_NOTIFICATION:Ljava/lang/String; = "currentItemChanged"

.field public static final DO_PAUSE:I = 0x1

.field public static final DO_PLAY:I = 0x0

.field public static final ERROR_NOTIFICATION:Ljava/lang/String; = "error"

.field public static final LIVE_CLOSED_CAPIONS_LANGUAGE:Ljava/lang/String; = "Closed Captions"

.field public static final METADATA_READY_NOTIFICATION:Ljava/lang/String; = "metadataReady"

.field public static final PLAYER_ANDROID:Ljava/lang/String; = "Android Default"

.field public static final PLAYER_VISUALON:Ljava/lang/String; = "VisualOn"

.field public static final PLAY_COMPLETED_NOTIFICATION:Ljava/lang/String; = "playCompleted"

.field public static final PLAY_STARTED_NOTIFICATION:Ljava/lang/String; = "playStarted"

.field public static final SEEK_COMPLETED_NOTIFICATION:Ljava/lang/String; = "seekCompleted"

.field public static final STATE_CHANGED_NOTIFICATION:Ljava/lang/String; = "stateChanged"

.field private static final TAG:Ljava/lang/String;

.field public static final TIME_CHANGED_NOTIFICATION:Ljava/lang/String; = "timeChanged"

.field public static enableCustomHLSPlayer:Z

.field public static enableHLS:Z

.field public static enableHighResHLS:Z


# instance fields
.field private _actionAtEnd:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

.field private _adPlayer:Lcom/ooyala/android/AdMoviePlayer;

.field private _adPlayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ooyala/android/AdSpot;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ooyala/android/AdMoviePlayer;",
            ">;>;"
        }
    .end annotation
.end field

.field private _adsSeekable:Z

.field private _analytics:Lcom/ooyala/android/Analytics;

.field private _authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

.field private _basePlayer:Lcom/ooyala/android/StreamPlayer;

.field private _closedCaptionsStyle:Lcom/ooyala/android/ClosedCaptionsStyle;

.field private _closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

.field private _currentItem:Lcom/ooyala/android/Video;

.field private _currentItemChangedCallback:Lcom/ooyala/android/CurrentItemChangedCallback;

.field private _error:Lcom/ooyala/android/OoyalaException;

.field private _handler:Landroid/os/Handler;

.field private _language:Ljava/lang/String;

.field private _lastAccountId:Ljava/lang/String;

.field private _lastPlayedTime:I

.field private _layoutController:Lcom/ooyala/android/LayoutController;

.field private _metadata:Lorg/json/JSONObject;

.field private final _openTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _playQueued:Z

.field private final _playedAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ooyala/android/AdSpot;",
            ">;"
        }
    .end annotation
.end field

.field private _player:Lcom/ooyala/android/MoviePlayer;

.field private _playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

.field private _queuedSeekTime:I

.field private _rootItem:Lcom/ooyala/android/ContentItem;

.field private _seekable:Z

.field private _state:Lcom/ooyala/android/OoyalaPlayer$State;

.field private _streamBasedCC:Z

.field private _suspendTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lcom/ooyala/android/OoyalaPlayer;->enableHLS:Z

    .line 83
    sput-boolean v0, Lcom/ooyala/android/OoyalaPlayer;->enableHighResHLS:Z

    .line 90
    sput-boolean v0, Lcom/ooyala/android/OoyalaPlayer;->enableCustomHLSPlayer:Z

    .line 106
    const-class v0, Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaAPIClient;)V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaAPIClient;->getPcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaAPIClient;->getDomain()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ooyala/android/OoyalaPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ooyala/android/OoyalaPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 163
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_handler:Landroid/os/Handler;

    .line 109
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    .line 110
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_rootItem:Lcom/ooyala/android/ContentItem;

    .line 111
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_metadata:Lorg/json/JSONObject;

    .line 112
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    .line 114
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    .line 115
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    .line 116
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    .line 117
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playedAds:Ljava/util/List;

    .line 119
    iput v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastPlayedTime:I

    .line 120
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_layoutController:Lcom/ooyala/android/LayoutController;

    .line 121
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    .line 122
    iput-boolean v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_streamBasedCC:Z

    .line 123
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    .line 124
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_language:Ljava/lang/String;

    .line 125
    iput-boolean v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_adsSeekable:Z

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_seekable:Z

    .line 127
    iput-boolean v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_playQueued:Z

    .line 129
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastAccountId:Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/ooyala/android/ClosedCaptionsStyle;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/android/ClosedCaptionsStyle;-><init>(IILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsStyle:Lcom/ooyala/android/ClosedCaptionsStyle;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_openTasks:Ljava/util/Map;

    .line 133
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItemChangedCallback:Lcom/ooyala/android/CurrentItemChangedCallback;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_suspendTime:J

    .line 136
    iput-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    .line 164
    new-instance v0, Lcom/ooyala/android/PlayerAPIClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/ooyala/android/PlayerAPIClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    .line 165
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->CONTINUE:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_actionAtEnd:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayers:Ljava/util/Map;

    .line 169
    const-class v0, Lcom/ooyala/android/OoyalaAdSpot;

    const-class v1, Lcom/ooyala/android/OoyalaAdPlayer;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->registerAdPlayer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 170
    const-class v0, Lcom/ooyala/android/VASTAdSpot;

    const-class v1, Lcom/ooyala/android/VASTAdPlayer;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->registerAdPlayer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ooyala SDK Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ooyala/android/OoyalaPlayer;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->taskCompleted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/ooyala/android/OoyalaPlayer;J)J
    .locals 1

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_suspendTime:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaException;)Lcom/ooyala/android/OoyalaException;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ooyala/android/OoyalaPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ooyala/android/OoyalaPlayer;)Lcom/ooyala/android/MoviePlayer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ooyala/android/OoyalaPlayer;)Lcom/ooyala/android/StreamPlayer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ooyala/android/OoyalaPlayer;)Lcom/ooyala/android/AdMoviePlayer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/ContentItem;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->reinitialize(Lcom/ooyala/android/ContentItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/ooyala/android/OoyalaPlayer;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItemAfterAuth()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/ooyala/android/OoyalaPlayer;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItemAfterFetch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/ooyala/android/OoyalaPlayer;)Lcom/ooyala/android/ContentItem;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_rootItem:Lcom/ooyala/android/ContentItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ooyala/android/OoyalaPlayer;)Lcom/ooyala/android/Video;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    return-object v0
.end method

.method private addClosedCaptionsView()V
    .locals 2

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->removeClosedCaptionsView()V

    .line 821
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->hasClosedCaptions()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_streamBasedCC:Z

    if-eqz v0, :cond_2

    .line 822
    :cond_1
    new-instance v0, Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ooyala/android/ClosedCaptionsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    .line 823
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsStyle:Lcom/ooyala/android/ClosedCaptionsStyle;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/ClosedCaptionsView;->setStyle(Lcom/ooyala/android/ClosedCaptionsStyle;)V

    .line 824
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 826
    :cond_2
    return-void
.end method

.method private cancelOpenTasks()V
    .locals 4

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_openTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1363
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayer;->_openTasks:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ooyala/android/PlayerAPIClient;->cancel(Ljava/lang/Object;)V

    goto :goto_0

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_openTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1366
    return-void
.end method

.method private changeCurrentItemAfterAuth()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 400
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v1}, Lcom/ooyala/android/Video;->getModuleData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v1}, Lcom/ooyala/android/Video;->getAuthCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    const-string/jumbo v1, "currentItemChanged"

    invoke-direct {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v1}, Lcom/ooyala/android/Video;->isAuthorized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-direct {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->getAuthError(Lcom/ooyala/android/Video;)Lcom/ooyala/android/OoyalaException;

    move-result-object v1

    iput-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    .line 408
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 409
    const-string/jumbo v1, "error"

    invoke-direct {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->isHeartbeatRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    if-nez v0, :cond_3

    .line 415
    new-instance v0, Lcom/ooyala/android/AuthHeartbeat;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-direct {v0, v1}, Lcom/ooyala/android/AuthHeartbeat;-><init>(Lcom/ooyala/android/PlayerAPIClient;)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    .line 416
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/AuthHeartbeat;->setAuthHeartbeatErrorListener(Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;)V

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    invoke-virtual {v0}, Lcom/ooyala/android/AuthHeartbeat;->start()V

    .line 421
    :cond_4
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cancelOpenTasks()V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "changeCurrentItemAfterAuth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    new-instance v2, Lcom/ooyala/android/OoyalaPlayer$5;

    invoke-direct {v2, p0, v0}, Lcom/ooyala/android/OoyalaPlayer$5;-><init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ooyala/android/Video;->fetchPlaybackInfo(Lcom/ooyala/android/FetchPlaybackInfoCallback;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->taskStarted(Ljava/lang/String;Ljava/lang/Object;)V

    .line 438
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeCurrentItemAfterFetch()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 446
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v2}, Lcom/ooyala/android/PlayerAPIClient;->getUserInfo()Lcom/ooyala/android/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ooyala/android/UserInfo;->getAccountId()Ljava/lang/String;

    move-result-object v4

    .line 451
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    if-nez v2, :cond_2

    move v3, v1

    .line 452
    :goto_0
    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastAccountId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    :goto_1
    or-int/2addr v3, v2

    .line 453
    if-nez v4, :cond_4

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastAccountId:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v1

    :goto_2
    or-int/2addr v2, v3

    .line 455
    if-eqz v2, :cond_0

    .line 456
    new-instance v2, Lcom/ooyala/android/Analytics;

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-direct {v2, v3, v4}, Lcom/ooyala/android/Analytics;-><init>(Landroid/content/Context;Lcom/ooyala/android/PlayerAPIClient;)V

    iput-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v2}, Lcom/ooyala/android/PlayerAPIClient;->getUserInfo()Lcom/ooyala/android/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ooyala/android/UserInfo;->getAccountId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastAccountId:Ljava/lang/String;

    .line 462
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v3}, Lcom/ooyala/android/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v4}, Lcom/ooyala/android/Video;->getDuration()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/ooyala/android/Analytics;->initializeVideo(Ljava/lang/String;D)V

    .line 463
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    invoke-virtual {v2}, Lcom/ooyala/android/Analytics;->reportPlayerLoad()V

    .line 466
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->isShowingAd()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v0}, Lcom/ooyala/android/OoyalaPlayer;->playAdsBeforeTime(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    move v2, v1

    .line 469
    :goto_3
    if-nez v2, :cond_7

    .line 470
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-direct {p0, v2}, Lcom/ooyala/android/OoyalaPlayer;->getCorrectMoviePlayer(Lcom/ooyala/android/Video;)Lcom/ooyala/android/MoviePlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    .line 471
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-direct {p0, v2, v3}, Lcom/ooyala/android/OoyalaPlayer;->initializePlayer(Lcom/ooyala/android/MoviePlayer;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Player;

    move-result-object v2

    if-nez v2, :cond_6

    .line 474
    :goto_4
    return v0

    :cond_2
    move v3, v0

    .line 451
    goto :goto_0

    :cond_3
    move v2, v0

    .line 452
    goto :goto_1

    :cond_4
    move v2, v0

    .line 453
    goto :goto_2

    :cond_5
    move v2, v0

    .line 466
    goto :goto_3

    .line 472
    :cond_6
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->dequeuePlay()V

    :cond_7
    move v0, v1

    .line 474
    goto :goto_4
.end method

.method private cleanupPlayer(Lcom/ooyala/android/Player;)V
    .locals 0

    .prologue
    .line 571
    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {p1, p0}, Lcom/ooyala/android/Player;->deleteObserver(Ljava/util/Observer;)V

    .line 573
    invoke-virtual {p1}, Lcom/ooyala/android/Player;->destroy()V

    .line 575
    :cond_0
    return-void
.end method

.method private cleanupPlayers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 560
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    invoke-virtual {v0}, Lcom/ooyala/android/AuthHeartbeat;->stop()V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayer(Lcom/ooyala/android/Player;)V

    .line 564
    iput-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    .line 565
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayer(Lcom/ooyala/android/Player;)V

    .line 566
    iput-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    .line 567
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->removeClosedCaptionsView()V

    .line 568
    return-void
.end method

.method private currentPlayer()Lcom/ooyala/android/MoviePlayer;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    goto :goto_0
.end method

.method private dequeuePlay()V
    .locals 1

    .prologue
    .line 1347
    iget-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playQueued:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playQueued:Z

    .line 1349
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 1351
    :cond_0
    return-void
.end method

.method private displayCurrentClosedCaption()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1389
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    if-nez v0, :cond_1

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    iget-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_streamBasedCC:Z

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_language:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->hasClosedCaptions()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->isShowingAd()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1394
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->currentTime()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 1395
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v2}, Lcom/ooyala/android/ClosedCaptionsView;->getCaption()Lcom/ooyala/android/Caption;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v2}, Lcom/ooyala/android/ClosedCaptionsView;->getCaption()Lcom/ooyala/android/Caption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ooyala/android/Caption;->getEnd()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v2}, Lcom/ooyala/android/ClosedCaptionsView;->getCaption()Lcom/ooyala/android/Caption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ooyala/android/Caption;->getBegin()D

    move-result-wide v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 1397
    :cond_2
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v2}, Lcom/ooyala/android/Video;->getClosedCaptions()Lcom/ooyala/android/ClosedCaptions;

    move-result-object v2

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayer;->_language:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/ooyala/android/ClosedCaptions;->getCaption(Ljava/lang/String;D)Lcom/ooyala/android/Caption;

    move-result-object v2

    .line 1398
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/ooyala/android/Caption;->getBegin()D

    move-result-wide v4

    cmpg-double v3, v4, v0

    if-gtz v3, :cond_3

    invoke-virtual {v2}, Lcom/ooyala/android/Caption;->getEnd()D

    move-result-wide v4

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_3

    .line 1399
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v0, v2}, Lcom/ooyala/android/ClosedCaptionsView;->setCaption(Lcom/ooyala/android/Caption;)V

    goto :goto_0

    .line 1401
    :cond_3
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v0, v6}, Lcom/ooyala/android/ClosedCaptionsView;->setCaption(Lcom/ooyala/android/Caption;)V

    goto :goto_0

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v0, v6}, Lcom/ooyala/android/ClosedCaptionsView;->setCaption(Lcom/ooyala/android/Caption;)V

    goto :goto_0
.end method

.method private fetchMoreChildren(Lcom/ooyala/android/PaginatedItemListener;)Z
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->getParent()Lcom/ooyala/android/Channel;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_1

    .line 909
    invoke-virtual {v0}, Lcom/ooyala/android/Channel;->getParent()Lcom/ooyala/android/ChannelSet;

    move-result-object v1

    .line 910
    invoke-virtual {v0}, Lcom/ooyala/android/Channel;->hasMoreChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 911
    invoke-virtual {v0, p1}, Lcom/ooyala/android/Channel;->fetchMoreChildren(Lcom/ooyala/android/PaginatedItemListener;)Z

    move-result v0

    .line 915
    :goto_0
    return v0

    .line 912
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ooyala/android/ChannelSet;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Lcom/ooyala/android/ChannelSet;->fetchMoreChildren(Lcom/ooyala/android/PaginatedItemListener;)Z

    move-result v0

    goto :goto_0

    .line 915
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAuthError(Lcom/ooyala/android/Video;)Lcom/ooyala/android/OoyalaException;
    .locals 4

    .prologue
    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Authorization Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ooyala/android/Video;->getAuthCode()I

    move-result v1

    invoke-static {v1}, Lcom/ooyala/android/ContentItem;->getAuthError(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "This video was not authorized! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    new-instance v1, Lcom/ooyala/android/OoyalaException;

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    return-object v1
.end method

.method private getCorrectMoviePlayer(Lcom/ooyala/android/Video;)Lcom/ooyala/android/MoviePlayer;
    .locals 3

    .prologue
    .line 510
    invoke-virtual {p1}, Lcom/ooyala/android/Video;->getStreams()Ljava/util/Set;

    move-result-object v0

    .line 513
    const-string/jumbo v1, "wv_wvm"

    invoke-static {v0, v1}, Lcom/ooyala/android/Stream;->streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "wv_hls"

    invoke-static {v0, v1}, Lcom/ooyala/android/Stream;->streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    :cond_0
    new-instance v0, Lcom/ooyala/android/WidevineOsPlayer;

    invoke-direct {v0}, Lcom/ooyala/android/WidevineOsPlayer;-><init>()V

    .line 528
    :goto_0
    return-object v0

    .line 517
    :cond_1
    const-string/jumbo v1, "wv_mp4"

    invoke-static {v0, v1}, Lcom/ooyala/android/Stream;->streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.ooyala.android.WidevineLibPlayer"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/MoviePlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_PLAYBACK_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Could not initialize Widevine Player"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    .line 523
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Please include the Widevine Library in your project"

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 528
    :cond_2
    new-instance v0, Lcom/ooyala/android/MoviePlayer;

    invoke-direct {v0}, Lcom/ooyala/android/MoviePlayer;-><init>()V

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1526
    const-string/jumbo v0, "2.2.0_RC12"

    return-object v0
.end method

.method private initializeAd(Lcom/ooyala/android/AdSpot;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 853
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Ooyala Player: Playing Ad"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->getBasePlayer()Lcom/ooyala/android/StreamPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->suspend()V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    if-eqz v0, :cond_2

    .line 860
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/AdMoviePlayer;->getAd()Lcom/ooyala/android/AdSpot;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Lcom/ooyala/android/AdSpot;->isReusable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playedAds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayer(Lcom/ooyala/android/Player;)V

    .line 865
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    .line 869
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 870
    if-eqz v0, :cond_3

    .line 871
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/AdMoviePlayer;

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    if-nez v0, :cond_4

    move v0, v1

    .line 888
    :goto_1
    return v0

    .line 881
    :cond_4
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    invoke-direct {p0, v0, p1}, Lcom/ooyala/android/OoyalaPlayer;->initializeAdPlayer(Lcom/ooyala/android/AdMoviePlayer;Lcom/ooyala/android/AdSpot;)Lcom/ooyala/android/Player;

    .line 882
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    iget-boolean v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_adsSeekable:Z

    invoke-virtual {v0, v2}, Lcom/ooyala/android/AdMoviePlayer;->setSeekable(Z)V

    .line 884
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->removeClosedCaptionsView()V

    .line 885
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    .line 887
    :cond_5
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->dequeuePlay()V

    .line 888
    const/4 v0, 0x1

    goto :goto_1

    .line 875
    :catch_0
    move-exception v0

    goto :goto_0

    .line 873
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private initializeAdPlayer(Lcom/ooyala/android/AdMoviePlayer;Lcom/ooyala/android/AdSpot;)Lcom/ooyala/android/Player;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p1, p0}, Lcom/ooyala/android/AdMoviePlayer;->addObserver(Ljava/util/Observer;)V

    .line 552
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {p1, v0}, Lcom/ooyala/android/AdMoviePlayer;->setBasePlayer(Lcom/ooyala/android/StreamPlayer;)V

    .line 555
    :cond_0
    invoke-virtual {p1, p0, p2}, Lcom/ooyala/android/AdMoviePlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AdSpot;)V

    .line 556
    return-object p1
.end method

.method private initializePlayer(Lcom/ooyala/android/MoviePlayer;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Player;
    .locals 2

    .prologue
    .line 532
    invoke-virtual {p2}, Lcom/ooyala/android/Video;->getStreams()Ljava/util/Set;

    move-result-object v0

    .line 535
    invoke-virtual {p1, p0}, Lcom/ooyala/android/MoviePlayer;->addObserver(Ljava/util/Observer;)V

    .line 536
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {p1, v1}, Lcom/ooyala/android/MoviePlayer;->setBasePlayer(Lcom/ooyala/android/StreamPlayer;)V

    .line 539
    :cond_0
    invoke-virtual {p1, p0, v0}, Lcom/ooyala/android/MoviePlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    .line 541
    invoke-virtual {p2}, Lcom/ooyala/android/Video;->isLive()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ooyala/android/MoviePlayer;->setLive(Z)V

    .line 543
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->addClosedCaptionsView()V

    .line 546
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ooyala/android/MoviePlayer;->getError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 548
    :goto_0
    return-object p1

    .line 547
    :cond_2
    iget-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_seekable:Z

    invoke-virtual {p1, v0}, Lcom/ooyala/android/MoviePlayer;->setSeekable(Z)V

    goto :goto_0
.end method

.method private millisToPercent(I)I
    .locals 2

    .prologue
    .line 1337
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 1338
    float-to-int v0, v0

    return v0
.end method

.method private onComplete()V
    .locals 2

    .prologue
    .line 993
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$11;->$SwitchMap$com$ooyala$android$OoyalaPlayer$ActionAtEnd:[I

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_actionAtEnd:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 995
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->nextVideo(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->reset()V

    .line 997
    const-string/jumbo v0, "playCompleted"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 1001
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->nextVideo(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->reset()V

    .line 1003
    const-string/jumbo v0, "playCompleted"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 1007
    :pswitch_2
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayers()V

    .line 1008
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 1009
    const-string/jumbo v0, "playCompleted"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    :pswitch_3
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->reset()V

    .line 1013
    const-string/jumbo v0, "playCompleted"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private percentToMillis(I)I
    .locals 2

    .prologue
    .line 1332
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1333
    float-to-int v0, v0

    return v0
.end method

.method private playAdsBeforeTime(IZ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 836
    iput p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastPlayedTime:I

    .line 837
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/AdSpot;

    .line 838
    invoke-virtual {v0}, Lcom/ooyala/android/AdSpot;->getTime()I

    move-result v2

    .line 840
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ooyala/android/Video;->getStreams()Ljava/util/Set;

    move-result-object v4

    const-string/jumbo v5, "hls"

    invoke-static {v4, v5}, Lcom/ooyala/android/Stream;->streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 841
    add-int/lit16 v2, v2, 0x1388

    div-int/lit16 v2, v2, 0x2710

    mul-int/lit16 v2, v2, 0x2710

    .line 843
    :cond_1
    if-gt v2, p1, :cond_0

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playedAds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playedAds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    if-nez p2, :cond_2

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->initializeAd(Lcom/ooyala/android/AdSpot;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 849
    :goto_0
    return v0

    .line 846
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->playAd(Lcom/ooyala/android/AdSpot;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 849
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queuePlay()V
    .locals 2

    .prologue
    .line 1342
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queuePlay()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playQueued:Z

    .line 1344
    return-void
.end method

.method private reinitialize(Lcom/ooyala/android/ContentItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 478
    if-nez p1, :cond_0

    .line 479
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_rootItem:Lcom/ooyala/android/ContentItem;

    .line 480
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    .line 481
    const/4 v0, 0x0

    .line 506
    :goto_0
    return v0

    .line 483
    :cond_0
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_rootItem:Lcom/ooyala/android/ContentItem;

    .line 484
    invoke-virtual {p1}, Lcom/ooyala/android/ContentItem;->firstVideo()Lcom/ooyala/android/Video;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    .line 485
    const-string/jumbo v0, "contentTreeReady"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ooyala/android/StreamPlayer;->defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    .line 490
    :goto_1
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cancelOpenTasks()V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reinitialize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    new-instance v3, Lcom/ooyala/android/OoyalaPlayer$6;

    invoke-direct {v3, p0, v1}, Lcom/ooyala/android/OoyalaPlayer$6;-><init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0, v3}, Lcom/ooyala/android/PlayerAPIClient;->authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ooyala/android/OoyalaPlayer;->taskStarted(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    const/4 v0, 0x1

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getPlayerInfo()Lcom/ooyala/android/PlayerInfo;

    move-result-object v0

    goto :goto_1
.end method

.method private removeClosedCaptionsView()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    .line 833
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->removeClosedCaptionsView()V

    .line 987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playQueued:Z

    .line 988
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->reset()V

    .line 989
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->addClosedCaptionsView()V

    .line 990
    return-void
.end method

.method private sendNotification(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->setChanged()V

    .line 1148
    invoke-virtual {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->notifyObservers(Ljava/lang/Object;)V

    .line 1149
    return-void
.end method

.method public static setEnvironment(Lcom/ooyala/android/OoyalaPlayer$Environment;)V
    .locals 0

    .prologue
    .line 103
    invoke-static {p0}, Lcom/ooyala/android/Constants;->setEnvironment(Lcom/ooyala/android/OoyalaPlayer$Environment;)V

    .line 104
    return-void
.end method

.method private setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq p1, v0, :cond_0

    .line 1141
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 1142
    const-string/jumbo v0, "stateChanged"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 1144
    :cond_0
    return-void
.end method

.method private taskCompleted(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_openTasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    return-void
.end method

.method private taskStarted(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1354
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_openTasks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    :cond_0
    return-void
.end method


# virtual methods
.method public adPlayerCompleted()V
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayer(Lcom/ooyala/android/Player;)V

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    .line 1095
    const-string/jumbo v0, "adCompleted"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 1097
    iget v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastPlayedTime:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->playAdsBeforeTime(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-nez v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->getCorrectMoviePlayer(Lcom/ooyala/android/Video;)Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    .line 1102
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->initializePlayer(Lcom/ooyala/android/MoviePlayer;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Player;

    .line 1103
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 1114
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_2

    .line 1108
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->onComplete()V

    goto :goto_0

    .line 1110
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->resume()V

    .line 1111
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->addClosedCaptionsView()V

    goto :goto_0
.end method

.method public changeCurrentItem(Lcom/ooyala/android/Video;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 335
    if-nez p1, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayers()V

    .line 391
    :goto_0
    return v0

    .line 339
    :cond_0
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 340
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayers()V

    .line 341
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_playedAds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 342
    iput v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastPlayedTime:I

    .line 343
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    .line 344
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItemChangedCallback:Lcom/ooyala/android/CurrentItemChangedCallback;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItemChangedCallback:Lcom/ooyala/android/CurrentItemChangedCallback;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-interface {v0, v1}, Lcom/ooyala/android/CurrentItemChangedCallback;->callback(Lcom/ooyala/android/Video;)V

    .line 347
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cancelOpenTasks()V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_rootItem:Lcom/ooyala/android/ContentItem;

    new-instance v3, Lcom/ooyala/android/OoyalaPlayer$3;

    invoke-direct {v3, p0, v0}, Lcom/ooyala/android/OoyalaPlayer$3;-><init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/ooyala/android/PlayerAPIClient;->metadata(Lcom/ooyala/android/ContentItem;Lcom/ooyala/android/MetadataFetchedCallback;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->taskStarted(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->getAuthCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 368
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-nez v0, :cond_2

    sget-object v0, Lcom/ooyala/android/StreamPlayer;->defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    .line 371
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeCurrentItem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    new-instance v4, Lcom/ooyala/android/OoyalaPlayer$4;

    invoke-direct {v4, p0, v1}, Lcom/ooyala/android/OoyalaPlayer$4;-><init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/ooyala/android/PlayerAPIClient;->authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ooyala/android/OoyalaPlayer;->taskStarted(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    const/4 v0, 0x1

    goto :goto_0

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->getBasePlayer()Lcom/ooyala/android/StreamPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getPlayerInfo()Lcom/ooyala/android/PlayerInfo;

    move-result-object v0

    goto :goto_1

    .line 390
    :cond_3
    const-string/jumbo v0, "authorizationReady"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItemAfterAuth()Z

    move-result v0

    goto/16 :goto_0
.end method

.method public changeCurrentItem(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_rootItem:Lcom/ooyala/android/ContentItem;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v0, p1, v1}, Lcom/ooyala/android/ContentItem;->videoFromEmbedCode(Ljava/lang/String;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItem(Lcom/ooyala/android/Video;)Z

    move-result v0

    return v0
.end method

.method public displayClosedCaptionText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_streamBasedCC:Z

    .line 1411
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    if-nez v0, :cond_0

    .line 1412
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->addClosedCaptionsView()V

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/ClosedCaptionsView;->setCaptionText(Ljava/lang/String;)V

    .line 1415
    return-void
.end method

.method public getActionAtEnd()Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_actionAtEnd:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0}, Lcom/ooyala/android/PlayerAPIClient;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableClosedCaptionsLanguages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->isLiveClosedCaptionsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1188
    const-string/jumbo v1, "Closed Captions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1192
    :goto_0
    return-object v0

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->getClosedCaptions()Lcom/ooyala/android/ClosedCaptions;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 1192
    :cond_2
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->getClosedCaptions()Lcom/ooyala/android/ClosedCaptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/ClosedCaptions;->getLanguages()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getBasePlayer()Lcom/ooyala/android/StreamPlayer;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    return-object v0
.end method

.method public getBitrate()D
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->getStreams()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/Stream;->bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1208
    :goto_0
    return-wide v0

    .line 1201
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 1203
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1204
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/Video;->getStreams()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/ooyala/android/Stream;->bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1205
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 1208
    :cond_2
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->getStreams()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/Stream;->bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getVideoBitrate()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 1256
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1257
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->buffer()I

    move-result v0

    goto :goto_0
.end method

.method public getClosedCaptionsLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getClosedCaptionsStyle()Lcom/ooyala/android/ClosedCaptionsStyle;
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsStyle:Lcom/ooyala/android/ClosedCaptionsStyle;

    return-object v0
.end method

.method public getCurrentItem()Lcom/ooyala/android/Video;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    return-object v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1244
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1248
    :cond_0
    :goto_0
    return v0

    .line 1245
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/MoviePlayer;->duration()I

    move-result v1

    .line 1246
    if-lez v1, :cond_2

    move v0, v1

    goto :goto_0

    .line 1247
    :cond_2
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_rootItem:Lcom/ooyala/android/ContentItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_rootItem:Lcom/ooyala/android/ContentItem;

    invoke-virtual {v0}, Lcom/ooyala/android/ContentItem;->getEmbedCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getError()Lcom/ooyala/android/OoyalaException;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    return-object v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_layoutController:Lcom/ooyala/android/LayoutController;

    invoke-interface {v0}, Lcom/ooyala/android/LayoutController;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_metadata:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getOoyalaAPIClient()Lcom/ooyala/android/OoyalaAPIClient;
    .locals 2

    .prologue
    .line 1136
    new-instance v0, Lcom/ooyala/android/OoyalaAPIClient;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-direct {v0, v1}, Lcom/ooyala/android/OoyalaAPIClient;-><init>(Lcom/ooyala/android/PlayerAPIClient;)V

    return-object v0
.end method

.method getPlayerAPIClient()Lcom/ooyala/android/PlayerAPIClient;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    return-object v0
.end method

.method public getPlayheadPercentage()I
    .locals 1

    .prologue
    .line 1265
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1266
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->currentTime()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->millisToPercent(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPlayheadTime()I
    .locals 1

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 785
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->currentTime()I

    move-result v0

    goto :goto_0
.end method

.method public getRootItem()Lcom/ooyala/android/ContentItem;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_rootItem:Lcom/ooyala/android/ContentItem;

    return-object v0
.end method

.method public getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;
    .locals 2

    .prologue
    .line 1501
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getBasePlayer()Lcom/ooyala/android/StreamPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getBasePlayer()Lcom/ooyala/android/StreamPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    move-result-object v0

    .line 1507
    :goto_0
    return-object v0

    .line 1503
    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1504
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    move-result-object v0

    goto :goto_0

    .line 1506
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "We are seeking without a player!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$SeekStyle;->NONE:Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    goto :goto_0
.end method

.method public getState()Lcom/ooyala/android/OoyalaPlayer$State;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    return-object v0
.end method

.method public getTopBarOffset()I
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_layoutController:Lcom/ooyala/android/LayoutController;

    check-cast v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;

    invoke-virtual {v0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->getControls()Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/ooyala/android/OoyalaPlayerControls;->topBarOffset()I

    move-result v0

    return v0
.end method

.method public isAdPlaying()Z
    .locals 2

    .prologue
    .line 1223
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_layoutController:Lcom/ooyala/android/LayoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_layoutController:Lcom/ooyala/android/LayoutController;

    invoke-interface {v0}, Lcom/ooyala/android/LayoutController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingAd()Z
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextVideo(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 949
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v1}, Lcom/ooyala/android/Video;->nextVideo()Lcom/ooyala/android/Video;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 950
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v1}, Lcom/ooyala/android/Video;->nextVideo()Lcom/ooyala/android/Video;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItem(Lcom/ooyala/android/Video;)Z

    .line 951
    if-nez p1, :cond_1

    .line 952
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 982
    :cond_0
    :goto_0
    return v0

    .line 953
    :cond_1
    if-ne p1, v0, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    goto :goto_0

    .line 957
    :cond_2
    if-nez p1, :cond_3

    new-instance v1, Lcom/ooyala/android/OoyalaPlayer$8;

    invoke-direct {v1, p0}, Lcom/ooyala/android/OoyalaPlayer$8;-><init>(Lcom/ooyala/android/OoyalaPlayer;)V

    invoke-direct {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->fetchMoreChildren(Lcom/ooyala/android/PaginatedItemListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 970
    :cond_3
    if-ne p1, v0, :cond_4

    new-instance v1, Lcom/ooyala/android/OoyalaPlayer$9;

    invoke-direct {v1, p0}, Lcom/ooyala/android/OoyalaPlayer$9;-><init>(Lcom/ooyala/android/OoyalaPlayer;)V

    invoke-direct {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->fetchMoreChildren(Lcom/ooyala/android/PaginatedItemListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 982
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAuthHeartbeatError(Lcom/ooyala/android/OoyalaException;)V
    .locals 1

    .prologue
    .line 1482
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayers()V

    .line 1483
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    .line 1484
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 1485
    const-string/jumbo v0, "error"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 1486
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playQueued:Z

    .line 638
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->pause()V

    .line 641
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->isAdPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    const-string/jumbo v0, "adStarted"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->play()V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->queuePlay()V

    goto :goto_0
.end method

.method public play(I)V
    .locals 0

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 663
    invoke-virtual {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->seek(I)V

    .line 664
    return-void
.end method

.method public playAd(Lcom/ooyala/android/AdSpot;)Z
    .locals 1

    .prologue
    .line 897
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->initializeAd(Lcom/ooyala/android/AdSpot;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 899
    :goto_0
    return v0

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 899
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public previousVideo(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 926
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v2}, Lcom/ooyala/android/Video;->previousVideo()Lcom/ooyala/android/Video;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 927
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-virtual {v1}, Lcom/ooyala/android/Video;->previousVideo()Lcom/ooyala/android/Video;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItem(Lcom/ooyala/android/Video;)Z

    .line 928
    if-nez p1, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 936
    :cond_0
    :goto_0
    return v0

    .line 930
    :cond_1
    if-ne p1, v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    goto :goto_0

    .line 935
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->seek(I)V

    move v0, v1

    .line 936
    goto :goto_0
.end method

.method public registerAdPlayer(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ooyala/android/AdSpot;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ooyala/android/AdMoviePlayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    return-void
.end method

.method public resetAds()V
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playedAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1297
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->isHeartbeatRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_suspendTime:J

    iget-object v4, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    iget v4, v4, Lcom/ooyala/android/PlayerAPIClient;->_heartbeatInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ooyala/android/StreamPlayer;->defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    .line 689
    :goto_0
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cancelOpenTasks()V

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeCurrentItem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 691
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    new-instance v4, Lcom/ooyala/android/OoyalaPlayer$7;

    invoke-direct {v4, p0, v1}, Lcom/ooyala/android/OoyalaPlayer$7;-><init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/ooyala/android/PlayerAPIClient;->authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ooyala/android/OoyalaPlayer;->taskStarted(Ljava/lang/String;Ljava/lang/Object;)V

    .line 737
    :goto_1
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getPlayerInfo()Lcom/ooyala/android/PlayerInfo;

    move-result-object v0

    goto :goto_0

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    if-nez v0, :cond_2

    .line 714
    new-instance v0, Lcom/ooyala/android/AuthHeartbeat;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-direct {v0, v1}, Lcom/ooyala/android/AuthHeartbeat;-><init>(Lcom/ooyala/android/PlayerAPIClient;)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    .line 716
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    invoke-virtual {v0}, Lcom/ooyala/android/AuthHeartbeat;->start()V

    .line 720
    :cond_3
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 721
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->resume()V

    .line 722
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->dequeuePlay()V

    .line 723
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->addClosedCaptionsView()V

    .line 724
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_1

    .line 726
    :cond_4
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    if-eqz v0, :cond_5

    .line 727
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->getCorrectMoviePlayer(Lcom/ooyala/android/Video;)Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    .line 728
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->initializePlayer(Lcom/ooyala/android/MoviePlayer;Lcom/ooyala/android/Video;)Lcom/ooyala/android/Player;

    .line 729
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->dequeuePlay()V

    goto :goto_1

    .line 732
    :cond_5
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_PLAYBACK_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Resuming video from an invalid state"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    .line 734
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Resuming video from an improper state"

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_1
.end method

.method public seek(I)V
    .locals 3

    .prologue
    .line 809
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seek()...: msec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->seekable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ooyala/android/MoviePlayer;->seekToTime(I)V

    .line 812
    const/4 v0, 0x0

    iput v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_queuedSeekTime:I

    .line 816
    :goto_0
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "...seek(): _queuedSeekTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_queuedSeekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void

    .line 814
    :cond_0
    iput p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_queuedSeekTime:I

    goto :goto_0
.end method

.method public seekToPercent(I)V
    .locals 3

    .prologue
    .line 1231
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekToPercent()...: percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->seekable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1234
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->percentToMillis(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->seek(I)V

    .line 1236
    :cond_2
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "...seekToPercent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public seekable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 800
    sget-object v3, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "seekable(): !null="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", seekable="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "false"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->seekable()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 800
    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->seekable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 801
    goto :goto_2
.end method

.method public setActionAtEnd(Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_actionAtEnd:Lcom/ooyala/android/OoyalaPlayer$ActionAtEnd;

    .line 1130
    return-void
.end method

.method public setAdsSeekable(Z)V
    .locals 2

    .prologue
    .line 1274
    iput-boolean p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_adsSeekable:Z

    .line 1275
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    iget-boolean v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_adsSeekable:Z

    invoke-virtual {v0, v1}, Lcom/ooyala/android/AdMoviePlayer;->setSeekable(Z)V

    .line 1278
    :cond_0
    return-void
.end method

.method public setBasePlayer(Lcom/ooyala/android/StreamPlayer;)V
    .locals 5

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    .line 1441
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getPlayerInfo()Lcom/ooyala/android/PlayerInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/ooyala/android/PlayerInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ooyala/android/Analytics;->setUserAgent(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1472
    :goto_1
    return-void

    .line 1441
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1445
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cancelOpenTasks()V

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBasePlayer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1448
    if-nez p1, :cond_2

    sget-object v0, Lcom/ooyala/android/StreamPlayer;->defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    .line 1449
    :goto_2
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    new-instance v4, Lcom/ooyala/android/OoyalaPlayer$10;

    invoke-direct {v4, p0, v1}, Lcom/ooyala/android/OoyalaPlayer$10;-><init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/ooyala/android/PlayerAPIClient;->authorize(Lcom/ooyala/android/AuthorizableItemInternal;Lcom/ooyala/android/PlayerInfo;Lcom/ooyala/android/AuthorizeCallback;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/ooyala/android/OoyalaPlayer;->taskStarted(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1448
    :cond_2
    invoke-virtual {p1}, Lcom/ooyala/android/StreamPlayer;->getPlayerInfo()Lcom/ooyala/android/PlayerInfo;

    move-result-object v0

    goto :goto_2
.end method

.method public setClosedCaptionsLanguage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_language:Ljava/lang/String;

    .line 1158
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-nez v0, :cond_0

    .line 1169
    :goto_0
    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_language:Ljava/lang/String;

    const-string/jumbo v1, "Closed Captions"

    if-ne v0, v1, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/MoviePlayer;->setLiveClosedCaptionsEnabled(Z)V

    goto :goto_0

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_language:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ooyala/android/MoviePlayer;->setLiveClosedCaptionsEnabled(Z)V

    .line 1167
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ooyala/android/ClosedCaptionsView;->setCaption(Lcom/ooyala/android/Caption;)V

    .line 1168
    :cond_3
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->displayCurrentClosedCaption()V

    goto :goto_0
.end method

.method public setClosedCaptionsStyle(Lcom/ooyala/android/ClosedCaptionsStyle;)V
    .locals 2

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsStyle:Lcom/ooyala/android/ClosedCaptionsStyle;

    .line 1381
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/ClosedCaptionsView;->setStyle(Lcom/ooyala/android/ClosedCaptionsStyle;)V

    .line 1383
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_closedCaptionsView:Lcom/ooyala/android/ClosedCaptionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ooyala/android/ClosedCaptionsView;->setCaption(Lcom/ooyala/android/Caption;)V

    .line 1385
    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->displayCurrentClosedCaption()V

    .line 1386
    return-void
.end method

.method public setCurrentItemChangedCallback(Lcom/ooyala/android/CurrentItemChangedCallback;)V
    .locals 0

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItemChangedCallback:Lcom/ooyala/android/CurrentItemChangedCallback;

    .line 1427
    return-void
.end method

.method public setCustomAnalyticsTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/Analytics;->setTags(Ljava/util/List;)V

    .line 1478
    :cond_0
    return-void
.end method

.method public setEmbedCode(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ooyala/android/OoyalaPlayer;->setEmbedCodeWithAdSetCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setEmbedCodeWithAdSetCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 225
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    .line 226
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0, v0, p2}, Lcom/ooyala/android/OoyalaPlayer;->setEmbedCodesWithAdSetCode(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setEmbedCodes(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ooyala/android/OoyalaPlayer;->setEmbedCodesWithAdSetCode(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setEmbedCodesWithAdSetCode(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 239
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cancelOpenTasks()V

    .line 241
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v1}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 242
    iput-boolean v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playQueued:Z

    .line 243
    iput v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_queuedSeekTime:I

    .line 244
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayers()V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEmbedCodes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    new-instance v2, Lcom/ooyala/android/OoyalaPlayer$1;

    invoke-direct {v2, p0, v0}, Lcom/ooyala/android/OoyalaPlayer$1;-><init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeWithAdSet(Ljava/util/List;Ljava/lang/String;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->taskStarted(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setExternalId(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 273
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    .line 274
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setExternalIds(Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public setExternalIds(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cancelOpenTasks()V

    .line 288
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 289
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayers()V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExternalIds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    new-instance v2, Lcom/ooyala/android/OoyalaPlayer$2;

    invoke-direct {v2, p0, v0}, Lcom/ooyala/android/OoyalaPlayer$2;-><init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/ooyala/android/PlayerAPIClient;->contentTreeByExternalIds(Ljava/util/List;Lcom/ooyala/android/ContentTreeCallback;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->taskStarted(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFullscreen(Z)V
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->removeClosedCaptionsView()V

    .line 761
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_layoutController:Lcom/ooyala/android/LayoutController;

    invoke-interface {v0, p1}, Lcom/ooyala/android/LayoutController;->setFullscreen(Z)V

    .line 762
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->addClosedCaptionsView()V

    .line 765
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->isShowingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getTopBarOffset()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/android/AdMoviePlayer;->updateLearnMoreButton(Landroid/widget/FrameLayout;I)V

    .line 769
    :cond_0
    return-void

    .line 758
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHook()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v0}, Lcom/ooyala/android/PlayerAPIClient;->setHook()V

    .line 187
    return-void
.end method

.method public setLayoutController(Lcom/ooyala/android/LayoutController;)V
    .locals 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_layoutController:Lcom/ooyala/android/LayoutController;

    .line 181
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_playerAPIClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PlayerAPIClient;->setContext(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public setPlayheadTime(I)V
    .locals 0

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->seek(I)V

    .line 794
    return-void
.end method

.method public setRootItem(Lcom/ooyala/android/ContentItem;)Z
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cancelOpenTasks()V

    .line 315
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 316
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayers()V

    .line 317
    invoke-direct {p0, p1}, Lcom/ooyala/android/OoyalaPlayer;->reinitialize(Lcom/ooyala/android/ContentItem;)Z

    move-result v0

    return v0
.end method

.method public setSeekable(Z)V
    .locals 2

    .prologue
    .line 1285
    iput-boolean p1, p0, Lcom/ooyala/android/OoyalaPlayer;->_seekable:Z

    .line 1286
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    iget-boolean v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_seekable:Z

    invoke-virtual {v0, v1}, Lcom/ooyala/android/MoviePlayer;->setSeekable(Z)V

    .line 1289
    :cond_0
    return-void
.end method

.method public skipAd()V
    .locals 2

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->isShowingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayer(Lcom/ooyala/android/Player;)V

    .line 1305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    .line 1306
    const-string/jumbo v0, "adSkipped"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-nez v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->getCorrectMoviePlayer(Lcom/ooyala/android/Video;)Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    .line 1309
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->play()V

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    iget v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastPlayedTime:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->playAdsBeforeTime(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_2

    .line 1315
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->onComplete()V

    goto :goto_0

    .line 1317
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->resume()V

    .line 1318
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->addClosedCaptionsView()V

    goto :goto_0
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->suspend()V

    .line 673
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->removeClosedCaptionsView()V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    if-eqz v0, :cond_1

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_suspendTime:J

    .line 677
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_authHeartbeat:Lcom/ooyala/android/AuthHeartbeat;

    invoke-virtual {v0}, Lcom/ooyala/android/AuthHeartbeat;->stop()V

    .line 679
    :cond_1
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 680
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1023
    check-cast p1, Lcom/ooyala/android/Player;

    .line 1024
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1026
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->currentPlayer()Lcom/ooyala/android/MoviePlayer;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    const-string/jumbo v1, "timeChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1029
    const-string/jumbo v0, "timeChanged"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-ne p1, v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/MoviePlayer;->currentTime()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/ooyala/android/Analytics;->reportPlayheadUpdate(D)V

    .line 1036
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/MoviePlayer;->currentTime()I

    move-result v0

    iput v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastPlayedTime:I

    .line 1037
    iget v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastPlayedTime:I

    invoke-direct {p0, v0, v4}, Lcom/ooyala/android/OoyalaPlayer;->playAdsBeforeTime(IZ)Z

    .line 1039
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->displayCurrentClosedCaption()V

    goto :goto_0

    .line 1041
    :cond_2
    const-string/jumbo v1, "stateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1042
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$11;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    invoke-virtual {p1}, Lcom/ooyala/android/Player;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1080
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/ooyala/android/Player;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0

    .line 1044
    :pswitch_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-ne p1, v0, :cond_4

    .line 1045
    const v0, 0x7ffffffe

    invoke-direct {p0, v0, v4}, Lcom/ooyala/android/OoyalaPlayer;->playAdsBeforeTime(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->onComplete()V

    goto :goto_0

    .line 1049
    :cond_4
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->adPlayerCompleted()V

    goto :goto_0

    .line 1053
    :pswitch_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_player:Lcom/ooyala/android/MoviePlayer;

    if-ne p1, v0, :cond_5

    .line 1054
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error recieved from content.  Cleaning up everything"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_PLAYBACK_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    invoke-virtual {p1}, Lcom/ooyala/android/Player;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;

    .line 1057
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayers()V

    .line 1058
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 1059
    const-string/jumbo v0, "error"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1061
    :cond_5
    const-string/jumbo v0, "adError"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayer;->adPlayerCompleted()V

    goto/16 :goto_0

    .line 1066
    :pswitch_2
    iget v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_lastPlayedTime:I

    if-nez v0, :cond_6

    .line 1067
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_analytics:Lcom/ooyala/android/Analytics;

    invoke-virtual {v0}, Lcom/ooyala/android/Analytics;->reportPlayStarted()V

    .line 1068
    const-string/jumbo v0, "playStarted"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    .line 1070
    :cond_6
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto/16 :goto_0

    .line 1073
    :pswitch_3
    iget v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_queuedSeekTime:I

    if-lez v0, :cond_3

    .line 1074
    iget v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_queuedSeekTime:I

    invoke-virtual {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->seek(I)V

    goto :goto_1

    .line 1085
    :cond_7
    const-string/jumbo v1, "adCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->cleanupPlayer(Lcom/ooyala/android/Player;)V

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayer;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    .line 1088
    const-string/jumbo v0, "adCompleted"

    invoke-direct {p0, v0}, Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1042
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
