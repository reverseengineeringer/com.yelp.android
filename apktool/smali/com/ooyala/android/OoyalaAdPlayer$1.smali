.class Lcom/ooyala/android/OoyalaAdPlayer$1;
.super Ljava/lang/Object;
.source "OoyalaAdPlayer.java"

# interfaces
.implements Lcom/ooyala/android/AuthorizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/OoyalaAdPlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AdSpot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/OoyalaAdPlayer;

.field final synthetic val$parent:Lcom/ooyala/android/OoyalaPlayer;


# direct methods
.method constructor <init>(Lcom/ooyala/android/OoyalaAdPlayer;Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ooyala/android/OoyalaAdPlayer$1;->this$0:Lcom/ooyala/android/OoyalaAdPlayer;

    iput-object p2, p0, Lcom/ooyala/android/OoyalaAdPlayer$1;->val$parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ZLcom/ooyala/android/OoyalaException;)V
    .locals 2

    .prologue
    .line 52
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer$1;->this$0:Lcom/ooyala/android/OoyalaAdPlayer;

    # getter for: Lcom/ooyala/android/OoyalaAdPlayer;->_ad:Lcom/ooyala/android/OoyalaAdSpot;
    invoke-static {v0}, Lcom/ooyala/android/OoyalaAdPlayer;->access$000(Lcom/ooyala/android/OoyalaAdPlayer;)Lcom/ooyala/android/OoyalaAdSpot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaAdSpot;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer$1;->this$0:Lcom/ooyala/android/OoyalaAdPlayer;

    const-string/jumbo v1, "Error fetching VAST XML"

    iput-object v1, v0, Lcom/ooyala/android/OoyalaAdPlayer;->_error:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer$1;->this$0:Lcom/ooyala/android/OoyalaAdPlayer;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaAdPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/OoyalaAdPlayer$1;->this$0:Lcom/ooyala/android/OoyalaAdPlayer;

    iget-object v1, p0, Lcom/ooyala/android/OoyalaAdPlayer$1;->val$parent:Lcom/ooyala/android/OoyalaPlayer;

    # invokes: Lcom/ooyala/android/OoyalaAdPlayer;->initAfterFetch(Lcom/ooyala/android/OoyalaPlayer;)V
    invoke-static {v0, v1}, Lcom/ooyala/android/OoyalaAdPlayer;->access$100(Lcom/ooyala/android/OoyalaAdPlayer;Lcom/ooyala/android/OoyalaPlayer;)V

    goto :goto_0
.end method
