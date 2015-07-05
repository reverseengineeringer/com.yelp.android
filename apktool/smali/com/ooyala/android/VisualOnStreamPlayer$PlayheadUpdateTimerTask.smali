.class public Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;
.super Ljava/util/TimerTask;
.source "VisualOnStreamPlayer.java"


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/VisualOnStreamPlayer;


# direct methods
.method protected constructor <init>(Lcom/ooyala/android/VisualOnStreamPlayer;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget-object v0, v0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    # getter for: Lcom/ooyala/android/VisualOnStreamPlayer;->_lastPlayhead:I
    invoke-static {v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->access$000(Lcom/ooyala/android/VisualOnStreamPlayer;)I

    move-result v0

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget-object v1, v1, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    # getter for: Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->access$100(Lcom/ooyala/android/VisualOnStreamPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget-object v1, v1, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v1

    # setter for: Lcom/ooyala/android/VisualOnStreamPlayer;->_lastPlayhead:I
    invoke-static {v0, v1}, Lcom/ooyala/android/VisualOnStreamPlayer;->access$002(Lcom/ooyala/android/VisualOnStreamPlayer;I)I

    goto :goto_0
.end method
