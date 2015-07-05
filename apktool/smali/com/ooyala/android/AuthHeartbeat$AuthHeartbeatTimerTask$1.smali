.class Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask$1;
.super Ljava/lang/Object;
.source "AuthHeartbeat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;

.field final synthetic val$e:Lcom/ooyala/android/OoyalaException;


# direct methods
.method constructor <init>(Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;Lcom/ooyala/android/OoyalaException;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask$1;->this$1:Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;

    iput-object p2, p0, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask$1;->val$e:Lcom/ooyala/android/OoyalaException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask$1;->this$1:Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;

    iget-object v0, v0, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask;->this$0:Lcom/ooyala/android/AuthHeartbeat;

    # getter for: Lcom/ooyala/android/AuthHeartbeat;->_authHeartbeatErrorListener:Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;
    invoke-static {v0}, Lcom/ooyala/android/AuthHeartbeat;->access$100(Lcom/ooyala/android/AuthHeartbeat;)Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/AuthHeartbeat$AuthHeartbeatTimerTask$1;->val$e:Lcom/ooyala/android/OoyalaException;

    invoke-interface {v0, v1}, Lcom/ooyala/android/AuthHeartbeat$OnAuthHeartbeatErrorListener;->onAuthHeartbeatError(Lcom/ooyala/android/OoyalaException;)V

    .line 63
    return-void
.end method
