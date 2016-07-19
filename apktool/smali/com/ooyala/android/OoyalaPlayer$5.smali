.class Lcom/ooyala/android/OoyalaPlayer$5;
.super Ljava/lang/Object;
.source "OoyalaPlayer.java"

# interfaces
.implements Lcom/ooyala/android/FetchPlaybackInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItemAfterAuth()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/OoyalaPlayer;

.field final synthetic val$taskKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer$5;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    iput-object p2, p0, Lcom/ooyala/android/OoyalaPlayer$5;->val$taskKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Z)V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$5;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer$5;->val$taskKey:Ljava/lang/String;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->taskCompleted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$000(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    .line 427
    if-nez p1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$5;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    new-instance v1, Lcom/ooyala/android/OoyalaException;

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_PLAYBACK_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    invoke-direct {v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;)V

    # setter for: Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$102(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaException;)Lcom/ooyala/android/OoyalaException;

    .line 429
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$5;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$300(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$5;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItemAfterFetch()Z
    invoke-static {v0}, Lcom/ooyala/android/OoyalaPlayer;->access$700(Lcom/ooyala/android/OoyalaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$5;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    new-instance v1, Lcom/ooyala/android/OoyalaException;

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_PLAYBACK_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    invoke-direct {v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;)V

    # setter for: Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$102(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaException;)Lcom/ooyala/android/OoyalaException;

    .line 434
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$5;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$300(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method
