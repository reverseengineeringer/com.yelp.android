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
    .line 119
    const v0, 0x7f0300be

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->start()V

    .line 125
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->pause()V

    .line 130
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->stopPlayback()V

    .line 135
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->seekTo(I)V

    .line 140
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 47
    const v0, 0x7f0c02e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    .line 48
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    const v0, 0x7f0c02e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ShadowView;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->setShadowView(Lcom/yelp/android/ui/widgets/ShadowView;)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/m;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/photoviewer/m;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/n;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/photoviewer/n;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->e:Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->getEventEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    .line 73
    const-string/jumbo v2, "didPlay"

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/o;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/o;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 81
    const-string/jumbo v2, "didPause"

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/p;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/p;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 89
    const-string/jumbo v2, "completed"

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/q;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/q;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 97
    new-instance v0, Lcom/brightcove/player/media/Catalog;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getPlayerCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/brightcove/player/media/Catalog;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/r;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/r;-><init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/brightcove/player/media/Catalog;->findVideoByID(Ljava/lang/String;Lcom/brightcove/player/media/VideoListener;)V

    .line 114
    return-object v1
.end method
