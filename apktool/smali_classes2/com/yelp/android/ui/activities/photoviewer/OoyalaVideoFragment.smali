.class public Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;
.super Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;
.source "OoyalaVideoFragment.java"


# instance fields
.field private e:Lcom/ooyala/android/OoyalaPlayer;

.field private f:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

.field private g:Lcom/yelp/android/ui/widgets/WebImageView;

.field private final i:Ljava/util/Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;-><init>()V

    .line 136
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;)V

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
    .line 80
    const v0, 0x7f0300db

    return v0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 86
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    .line 91
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    .line 96
    return-void
.end method

.method protected g()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->seek(I)V

    .line 101
    return-void
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getPlayheadTime()I

    move-result v0

    return v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->m()V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->g:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 122
    return-void
.end method

.method protected n()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->n()V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->g:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 128
    return-void
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->o()V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->g:Lcom/yelp/android/ui/widgets/WebImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 49
    const v0, 0x7f0f0348

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->f:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    .line 50
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->f:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    const v0, 0x7f0f0347

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/ShadowView;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;->setShadowView(Lcom/yelp/android/ui/widgets/ShadowView;)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->f:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;->getPlayerFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0f034a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->g:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->g:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->f:Lcom/yelp/android/ui/widgets/ShadowOoyalaPlayerLayout;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Video;->r()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "https://www.ooyala.com"

    invoke-direct {v0, v2, v3, v4}, Lcom/yelp/android/ui/activities/photoviewer/b;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/b;->getPlayer()Lcom/ooyala/android/OoyalaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->i:Ljava/util/Observer;

    invoke-virtual {v0, v2}, Lcom/ooyala/android/OoyalaPlayer;->addObserver(Ljava/util/Observer;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->c:Lcom/yelp/android/serializable/Video;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ooyala/android/OoyalaPlayer;->setEmbedCode(Ljava/lang/String;)Z

    .line 69
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->onDestroyView()V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->e:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->suspend()V

    .line 76
    return-void
.end method
