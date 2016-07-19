.class public Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityVideoTrim.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$b;


# instance fields
.field private a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

.field private b:Lcom/yelp/android/serializable/LocalVideo;

.field private c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

.field private d:Lcom/yelp/android/ui/widgets/SquareTextureView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/yelp/android/ui/panels/PanelLoading;

.field private final g:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 192
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;-><init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->g:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string/jumbo v1, "extra.video_file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v1, "extra.business_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/yelp/android/serializable/LocalVideo;
    .locals 3

    .prologue
    .line 138
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.video_file_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.business_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Lcom/yelp/android/serializable/LocalVideo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v0

    .line 148
    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->finish()V

    .line 151
    :cond_0
    return-object v0

    .line 138
    :cond_1
    const-string/jumbo v0, "extra.video_file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/serializable/LocalVideo;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/widgets/SquareTextureView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->d:Lcom/yelp/android/ui/widgets/SquareTextureView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->FROZEN_AND_WAITING:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 162
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/PanelLoading;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    if-lt v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$1;-><init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->post(Ljava/lang/Runnable;)Z

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$2;-><init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoTrim:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a(Landroid/os/Bundle;)Lcom/yelp/android/serializable/LocalVideo;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 61
    :cond_0
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->setContentView(I)V

    .line 63
    const v0, 0x7f0f01ea

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->setLocalVideo(Lcom/yelp/android/serializable/LocalVideo;)V

    .line 66
    const v0, 0x7f0f01eb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SquareTextureView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->d:Lcom/yelp/android/ui/widgets/SquareTextureView;

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->d:Lcom/yelp/android/ui/widgets/SquareTextureView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->b()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalVideo;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/SquareTextureView;->a(II)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->d:Lcom/yelp/android/ui/widgets/SquareTextureView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->g:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SquareTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 70
    const v0, 0x7f0f01ec

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->e:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0f01ed

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/PanelLoading;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f:Lcom/yelp/android/ui/panels/PanelLoading;

    sget-object v1, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->DEFAULT:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/c;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100022

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->stop()V

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->release()V

    .line 107
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 132
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 134
    :goto_0
    return v0

    .line 120
    :pswitch_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalVideo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->getTrimBegin()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->getTrimEnd()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;ZII)Landroid/content/Intent;

    move-result-object v1

    .line 128
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->setResult(ILandroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->finish()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f0f0607
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->pause()V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->start()V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    const-string/jumbo v0, "extra.video_file_path"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "extra.business_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
