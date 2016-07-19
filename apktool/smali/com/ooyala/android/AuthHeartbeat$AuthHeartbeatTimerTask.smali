.class Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;
.super Ljava/util/TimerTask;
.source "AuthHeartbeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/AuthHeartbeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthHeartbeatTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/AuthHeartbeat;


# direct methods
.method constructor <init>(Lcom/ooyala/android/AuthHeartbeat;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;->this$0:Lcom/ooyala/android/AuthHeartbeat;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private sendError(Lcom/ooyala/android/OoyalaException;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;->this$0:Lcom/ooyala/android/AuthHeartbeat;

    # getter for: Lcom/ooyala/android/AuthHeartbeat;->_handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ooyala/android/AuthHeartbeat;->access$200(Lcom/ooyala/android/AuthHeartbeat;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask$1;

    invoke-direct {v1, p0, p1}, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask$1;-><init>(Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;Lcom/ooyala/android/OoyalaException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method private tryHeartbeat(I)V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;->this$0:Lcom/ooyala/android/AuthHeartbeat;

    # getter for: Lcom/ooyala/android/AuthHeartbeat;->_apiClient:Lcom/ooyala/android/PlayerAPIClient;
    invoke-static {v1}, Lcom/ooyala/android/AuthHeartbeat;->access$000(Lcom/ooyala/android/AuthHeartbeat;)Lcom/ooyala/android/PlayerAPIClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/PlayerAPIClient;->authorizeHeartbeat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v0, Lcom/ooyala/android/OoyalaException;

    sget-object v1, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_HEARTBEAT_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    const-string/jumbo v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ooyala/android/OoyalaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 50
    if-lez p1, :cond_2

    .line 51
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;->tryHeartbeat(I)V

    .line 56
    :cond_1
    :goto_1
    return-void

    .line 53
    :cond_2
    invoke-direct {p0, v0}, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;->sendError(Lcom/ooyala/android/OoyalaException;)V

    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;->tryHeartbeat(I)V

    .line 38
    return-void
.end method
