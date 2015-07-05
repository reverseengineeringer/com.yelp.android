.class Lcom/ooyala/android/OoyalaAdPlayer$2;
.super Ljava/lang/Object;
.source "OoyalaAdPlayer.java"

# interfaces
.implements Lcom/ooyala/android/AuthorizeCallback;


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/OoyalaAdPlayer;

.field final synthetic val$player:Lcom/ooyala/android/StreamPlayer;


# direct methods
.method constructor <init>(Lcom/ooyala/android/OoyalaAdPlayer;Lcom/ooyala/android/StreamPlayer;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ooyala/android/OoyalaAdPlayer$2;->this$0:Lcom/ooyala/android/OoyalaAdPlayer;

    iput-object p2, p0, Lcom/ooyala/android/OoyalaAdPlayer$2;->val$player:Lcom/ooyala/android/StreamPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ZLcom/ooyala/android/OoyalaException;)V
    .locals 2

    .prologue
    .line 102
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer$2;->this$0:Lcom/ooyala/android/OoyalaAdPlayer;

    # getter for: Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;
    invoke-static {v0}, Lcom/ooyala/android/OoyalaAdPlayer;->access$000(Lcom/ooyala/android/OoyalaAdPlayer;)Lcom/ooyala/android/OoyalaAdSpot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer$2;->this$0:Lcom/ooyala/android/OoyalaAdPlayer;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer$2;->val$player:Lcom/ooyala/android/StreamPlayer;

    # invokes: Lcom/ooyala/android/OoyalaAdPlayer;->setBasePlayer2(Lcom/ooyala/android/StreamPlayer;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaAdPlayer;->access$200(Lcom/ooyala/android/OoyalaAdPlayer;Lcom/ooyala/android/StreamPlayer;)V

    goto :goto_0
.end method
