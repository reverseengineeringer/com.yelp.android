.class Lcom/ooyala/android/StreamPlayer$1;
.super Ljava/util/TimerTask;
.source "StreamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/StreamPlayer;->startPlayheadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/StreamPlayer;


# direct methods
.method constructor <init>(Lcom/ooyala/android/StreamPlayer;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ooyala/android/StreamPlayer$1;->this$0:Lcom/ooyala/android/StreamPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ooyala/android/StreamPlayer$1;->this$0:Lcom/ooyala/android/StreamPlayer;

    # getter for: Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ooyala/android/StreamPlayer;->access$000(Lcom/ooyala/android/StreamPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    return-void
.end method
