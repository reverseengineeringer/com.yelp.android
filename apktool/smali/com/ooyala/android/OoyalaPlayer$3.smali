.class Lcom/ooyala/android/OoyalaPlayer$3;
.super Ljava/lang/Object;
.source "OoyalaPlayer.java"

# interfaces
.implements Lcom/ooyala/android/MetadataFetchedCallback;


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/OoyalaPlayer;

.field final synthetic val$metadataTaskKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayer$3;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    iput-object p2, p0, Lcom/ooyala/android/OoyalaPlayer$3;->val$metadataTaskKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ZLcom/ooyala/android/OoyalaException;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$3;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayer$3;->val$metadataTaskKey:Ljava/lang/String;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->taskCompleted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$000(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    .line 355
    if-eqz p2, :cond_0

    .line 356
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$3;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    # setter for: Lcom/ooyala/android/OoyalaPlayer;->_error:Lcom/ooyala/android/OoyalaException;
    invoke-static {v0, p2}, Lcom/ooyala/android/OoyalaPlayer;->access$102(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaException;)Lcom/ooyala/android/OoyalaException;

    .line 357
    # getter for: Lcom/ooyala/android/OoyalaPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ooyala/android/OoyalaPlayer;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Exception fetching metadata from setEmbedCodes!"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$3;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$300(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 359
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$3;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    const-string/jumbo v1, "error"

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$400(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$3;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    const-string/jumbo v1, "metadataReady"

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->sendNotification(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->access$400(Lcom/ooyala/android/OoyalaPlayer;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayer$3;->this$0:Lcom/ooyala/android/OoyalaPlayer;

    # invokes: Lcom/ooyala/android/OoyalaPlayer;->changeCurrentItemAfterAuth()Z
    invoke-static {v0}, Lcom/ooyala/android/OoyalaPlayer;->access$600(Lcom/ooyala/android/OoyalaPlayer;)Z

    goto :goto_0
.end method
