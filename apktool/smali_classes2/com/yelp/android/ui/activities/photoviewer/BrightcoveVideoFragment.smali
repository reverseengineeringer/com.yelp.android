.class public Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;
.super Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;
.source "BrightcoveVideoFragment.java"


# instance fields
.field private e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Video;)Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;-><init>()V

    .line 40
    invoke-static {p0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->b(Lcom/yelp/android/serializable/Video;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f0300da

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->start()V

    .line 138
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->pause()V

    .line 143
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->stopPlayback()V

    .line 148
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->seekTo(I)V

    .line 153
    return-void
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 48
    const v0, 0x7f0f0348

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    .line 49
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    const v0, 0x7f0f0347

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ShadowView;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->setShadowView(Lcom/yelp/android/ui/widgets/ShadowView;)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    .line 78
    const-string/jumbo v2, "didPlay"

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$3;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$3;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 88
    const-string/jumbo v2, "didPause"

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$4;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$4;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 98
    const-string/jumbo v2, "completed"

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$5;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$5;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 108
    new-instance v0, Lcom/brightcove/player/media/Catalog;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->r()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/brightcove/player/media/Catalog;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->q()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$6;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$6;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/brightcove/player/media/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/media/VideoListener;)V

    .line 127
    return-object v1
.end method
