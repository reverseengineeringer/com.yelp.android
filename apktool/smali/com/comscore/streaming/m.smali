.class Lcom/comscore/streaming/m;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/comscore/streaming/StreamSenseVideoView;


# direct methods
.method constructor <init>(Lcom/comscore/streaming/StreamSenseVideoView;J)V
    .locals 0

    iput-object p1, p0, Lcom/comscore/streaming/m;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    iput-wide p2, p0, Lcom/comscore/streaming/m;->a:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/streaming/m;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->e(Lcom/comscore/streaming/StreamSenseVideoView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/streaming/m;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->a(Lcom/comscore/streaming/StreamSenseVideoView;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/comscore/streaming/m;->a:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/comscore/streaming/m;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v1}, Lcom/comscore/streaming/StreamSenseVideoView;->f(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/comscore/streaming/m;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->g(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/comscore/streaming/m;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->h(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    iget-object v0, p0, Lcom/comscore/streaming/m;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->i(Lcom/comscore/streaming/StreamSenseVideoView;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/comscore/streaming/m;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->h(Lcom/comscore/streaming/StreamSenseVideoView;)Z

    iget-object v0, p0, Lcom/comscore/streaming/m;->b:Lcom/comscore/streaming/StreamSenseVideoView;

    invoke-static {v0}, Lcom/comscore/streaming/StreamSenseVideoView;->d(Lcom/comscore/streaming/StreamSenseVideoView;)V

    goto :goto_1
.end method
