.class public Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;
.super Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;
.source "OoyalaVideoFragment.java"


# instance fields
.field private e:Lcom/ooyala/android/OoyalaPlayer;

.field private g:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

.field private h:Lcom/yelp/android/ui/widgets/WebImageView;

.field private final i:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;-><init>()V

    .line 132
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/u;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/u;-><init>(Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->i:Ljava/util/Observer;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Video;)Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;-><init>()V

    .line 41
    invoke-static {p0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->b(Lcom/yelp/android/serializable/Video;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0300bf

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 82
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    .line 87
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    .line 92
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->seek(I)V

    .line 97
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getPlayheadTime()I

    move-result v0

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->k()V

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->h:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 118
    return-void
.end method

.method protected l()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->l()V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->h:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->m()V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->h:Lcom/yelp/android/ui/widgets/WebImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 48
    const v0, 0x7f0c02e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->g:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    .line 49
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->g:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    const v0, 0x7f0c02e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ShadowView;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;->setShadowView(Lcom/yelp/android/ui/widgets/ShadowView;)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->g:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;->getPlayerFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/t;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/photoviewer/t;-><init>(Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0c02e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->h:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->h:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/au;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->g:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Video;->getPlayerCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "https://www.ooyala.com"

    invoke-direct {v0, v2, v3, v4}, Lcom/yelp/android/ui/activities/photoviewer/au;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/au;->getPlayer()Lcom/ooyala/android/OoyalaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->i:Ljava/util/Observer;

    invoke-virtual {v0, v2}, Lcom/ooyala/android/OoyalaPlayer;->addObserver(Ljava/util/Observer;)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->getEmbedCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ooyala/android/OoyalaPlayer;->setEmbedCode(Ljava/lang/String;)Z

    .line 65
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->onDestroyView()V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->suspend()V

    .line 72
    return-void
.end method
