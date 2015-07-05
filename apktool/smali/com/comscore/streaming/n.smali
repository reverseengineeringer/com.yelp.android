.class Lcom/comscore/streaming/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/comscore/streaming/StreamSenseVideoView;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSenseVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/n;->a:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/streaming/n;->a:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0, p1}, Lcom/comscore/streaming/StreamSenseVideoView;->a(Lcom/comscore/streaming/StreamSenseVideoView;Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lcom/comscore/streaming/n;->a:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->j(Lcom/comscore/streaming/StreamSenseVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/n;->a:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->j(Lcom/comscore/streaming/StreamSenseVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
