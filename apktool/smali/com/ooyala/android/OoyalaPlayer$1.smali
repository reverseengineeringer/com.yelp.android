.class Lcom/ooyala/android/OoyalaPlayer$1;
.super Ljava/lang/Object;
.source "OoyalaPlayer.java"

# interfaces
.implements Lcom/ooyala/android/ContentTreeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/OoyalaPlayer;->setEmbedCodesWithAdSetCode(Ljava/util/List;Ljava/lang/String;)Z
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
    .line 248
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer$1;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    iput-object p2, p0, Lcom/ooyala/android/OoyalaPlayer$1;->val$taskKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ooyala/android/ContentItem;Lcom/ooyala/android/OoyalaException;)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$1;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer$1;->val$taskKey:Ljava/lang/String;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->taskCompleted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$000(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    .line 252
    if-eqz p2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$1;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    # setter for: Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;
    invoke-static {v0, p2}, Lcom/ooyala/android/OoyalaPlayer;->access$102(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaException;)Lcom/ooyala/android/OoyalaException;

    .line 254
    # getter for: Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ooyala/android/OoyalaPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Exception in setEmbedCodes!"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$1;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$300(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 256
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$1;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    const-string/jumbo v1, "error"

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$400(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$1;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->reinitialize(Lcom/ooyala/android/ContentItem;)Z
    invoke-static {v0, p1}, Lcom/ooyala/android/OoyalaPlayer;->access$500(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/ContentItem;)Z

    goto :goto_0
.end method
