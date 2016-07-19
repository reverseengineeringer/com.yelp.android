.class Lcom/ooyala/android/OoyalaPlayer$7;
.super Ljava/lang/Object;
.source "OoyalaPlayer.java"

# interfaces
.implements Lcom/ooyala/android/AuthorizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/OoyalaPlayer;->resume()V
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
    .line 691
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    iput-object p2, p0, Lcom/ooyala/android/OoyalaPlayer$7;->val$taskKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ZLcom/ooyala/android/OoyalaException;)V
    .locals 4

    .prologue
    .line 694
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer$7;->val$taskKey:Ljava/lang/String;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->taskCompleted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$000(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    .line 695
    if-eqz p2, :cond_0

    .line 696
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    # setter for: Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;
    invoke-static {v0, p2}, Lcom/ooyala/android/OoyalaPlayer;->access$102(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaException;)Lcom/ooyala/android/OoyalaException;

    .line 697
    # getter for: Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ooyala/android/OoyalaPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Error Reauthorizing Video"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$300(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 699
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    const-string/jumbo v1, "error"

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$400(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    .line 709
    :goto_0
    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    const-string/jumbo v1, "authorizationReady"

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$400(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    # getter for: Lcom/ooyala/android/OoyalaPlayer;->_currentItem:Lcom/ooyala/android/Video;
    invoke-static {v0}, Lcom/ooyala/android/OoyalaPlayer;->access$900(Lcom/ooyala/android/OoyalaPlayer;)Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    new-instance v1, Lcom/ooyala/android/OoyalaException;

    sget-object v2, Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;->ERROR_AUTHORIZATION_FAILED:Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;

    invoke-direct {v1, v2}, Lcom/ooyala/android/OoyalaException;-><init>(Lcom/ooyala/android/OoyalaException$OoyalaErrorCode;)V

    # setter for: Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$102(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaException;)Lcom/ooyala/android/OoyalaException;

    goto :goto_0

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/ooyala/android/OoyalaPlayer;->_suspendTime:J
    invoke-static {v0, v2, v3}, Lcom/ooyala/android/OoyalaPlayer;->access$1002(Lcom/ooyala/android/OoyalaPlayer;J)J

    .line 708
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$7;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->resume()V

    goto :goto_0
.end method
