.class Lcom/ooyala/android/AuthHeartbeat;
.super Ljava/lang/Object;
.source "AuthHeartbeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;,
        Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;
    }
.end annotation


# instance fields
.field private _apiClient:Lcom/ooyala/android/PlayerAPIClient;

.field private _authHeartbeatErrorListener:Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;

.field private _handler:Landroid/os/Handler;

.field private _timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "AuthHeartbeat"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_timer:Ljava/util/Timer;

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_handler:Landroid/os/Handler;

    .line 16
    iput-object p1, p0, Lcom/ooyala/android/AuthHeartbeat;->_apiClient:Lcom/ooyala/android/PlayerAPIClient;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/ooyala/android/AuthHeartbeat;)Lcom/ooyala/android/PlayerAPIClient;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_apiClient:Lcom/ooyala/android/PlayerAPIClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ooyala/android/AuthHeartbeat;)Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_authHeartbeatErrorListener:Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ooyala/android/AuthHeartbeat;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public setAuthHeartbeatErrorListener(Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ooyala/android/AuthHeartbeat;->_authHeartbeatErrorListener:Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;

    .line 74
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 20
    invoke-virtual {p0}, Lcom/ooyala/android/AuthHeartbeat;->stop()V

    .line 21
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "AuthHeartbeat"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_timer:Ljava/util/Timer;

    .line 22
    iget-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_timer:Ljava/util/Timer;

    new-instance v1, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;

    invoke-direct {v1, p0}, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;-><init>(Lcom/ooyala/android/AuthHeartbeat;)V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 23
    iget-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_timer:Ljava/util/Timer;

    new-instance v1, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;

    invoke-direct {v1, p0}, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;-><init>(Lcom/ooyala/android/AuthHeartbeat;)V

    iget-object v4, p0, Lcom/ooyala/android/AuthHeartbeat;->_apiClient:Lcom/ooyala/android/PlayerAPIClient;

    invoke-virtual {v4}, Lcom/ooyala/android/PlayerAPIClient;->getHeartbeatInterval()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 24
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 30
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/AuthHeartbeat;->_timer:Ljava/util/Timer;

    .line 31
    return-void
.end method
