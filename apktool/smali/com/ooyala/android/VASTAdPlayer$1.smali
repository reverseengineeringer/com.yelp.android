.class Lcom/ooyala/android/VASTAdPlayer$1;
.super Ljava/lang/Object;
.source "VASTAdPlayer.java"

# interfaces
.implements Lcom/ooyala/android/FetchPlaybackInfoCallback;


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/VASTAdPlayer;

.field final synthetic val$parent:Lcom/ooyala/android/OoyalaPlayer;


# direct methods
.method constructor <init>(Lcom/ooyala/android/VASTAdPlayer;Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ooyala/android/VASTAdPlayer$1;->this$0:Lcom/ooyala/android/VASTAdPlayer;

    iput-object p2, p0, Lcom/ooyala/android/VASTAdPlayer$1;->val$parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Z)V
    .locals 2

    .prologue
    .line 62
    if-nez p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer$1;->this$0:Lcom/ooyala/android/VASTAdPlayer;

    const-string/jumbo v1, "Could not fetch VAST Ad"

    iput-object v1, v0, Lcom/ooyala/android/VASTAdPlayer;->_error:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer$1;->this$0:Lcom/ooyala/android/VASTAdPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/VASTAdPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer$1;->this$0:Lcom/ooyala/android/VASTAdPlayer;

    iget-object v1, p0, Lcom/ooyala/android/VASTAdPlayer$1;->val$parent:Lcom/ooyala/android/OoyalaPlayer;

    # invokes: Lcom/ooyala/android/VASTAdPlayer;->initAfterFetch(Lcom/ooyala/android/OoyalaPlayer;)Z
    invoke-static {v0, v1}, Lcom/ooyala/android/VASTAdPlayer;->access$000(Lcom/ooyala/android/VASTAdPlayer;Lcom/ooyala/android/OoyalaPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer$1;->this$0:Lcom/ooyala/android/VASTAdPlayer;

    const-string/jumbo v1, "Bad VAST Ad"

    iput-object v1, v0, Lcom/ooyala/android/VASTAdPlayer;->_error:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/ooyala/android/VASTAdPlayer$1;->this$0:Lcom/ooyala/android/VASTAdPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/VASTAdPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method
