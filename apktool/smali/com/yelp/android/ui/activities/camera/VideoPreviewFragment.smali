.class public Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "VideoPreviewFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

.field private b:Lcom/yelp/android/ui/activities/camera/ab;

.field private c:Lcom/yelp/android/ui/widgets/SquareTextureView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/view/TextureView$SurfaceTextureListener;

.field private final m:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 207
    new-instance v0, Lcom/yelp/android/ui/activities/camera/y;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/y;-><init>(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->l:Landroid/view/TextureView$SurfaceTextureListener;

    .line 225
    new-instance v0, Lcom/yelp/android/ui/activities/camera/z;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/z;-><init>(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->m:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 251
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;
    .locals 2

    .prologue
    .line 88
    invoke-static {p0}, Lcom/yelp/android/util/aj;->a(Ljava/lang/String;)I

    move-result v0

    .line 89
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;II)Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;-><init>()V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string/jumbo v2, "video_file_path"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v2, "video_start_time_ms"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string/jumbo v2, "video_end_time_ms"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Lcom/yelp/android/util/aj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/yelp/android/util/aj;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->d()I

    move-result v2

    .line 193
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->c()I

    move-result v1

    .line 194
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->e()Z

    move-result v3

    .line 195
    invoke-virtual {v0}, Lcom/yelp/android/util/aj;->release()V

    .line 201
    if-eqz v3, :cond_0

    if-gt v1, v2, :cond_1

    :cond_0
    if-nez v3, :cond_2

    if-le v2, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    move v3, v0

    .line 203
    :goto_0
    if-eqz v3, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->k:I

    .line 204
    if-eqz v3, :cond_4

    :goto_2
    iput v2, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->j:I

    .line 205
    return-void

    .line 201
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 203
    goto :goto_1

    :cond_4
    move v2, v1

    .line 204
    goto :goto_2
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/widgets/SquareTextureView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->c:Lcom/yelp/android/ui/widgets/SquareTextureView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->m:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->i:I

    return v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->h:I

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->g:I

    return v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoPreview:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    .line 122
    const v1, 0x7f070498

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->setTitle(I)V

    .line 123
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->d()V

    .line 124
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 147
    check-cast p1, Lcom/yelp/android/ui/activities/camera/ab;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->b:Lcom/yelp/android/ui/activities/camera/ab;

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "video_file_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->d:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "video_start_time_ms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->g:I

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "video_end_time_ms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->h:I

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->e:Ljava/lang/String;

    .line 99
    if-nez p1, :cond_0

    .line 100
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->g:I

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->i:I

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a()V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->setHasOptionsMenu(Z)V

    .line 106
    return-void

    .line 102
    :cond_0
    const-string/jumbo v0, "play_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->i:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 159
    const v0, 0x7f100025

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 111
    const v0, 0x7f0300c0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 112
    const v0, 0x7f0c01bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SquareTextureView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->c:Lcom/yelp/android/ui/widgets/SquareTextureView;

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->c:Lcom/yelp/android/ui/widgets/SquareTextureView;

    iget v2, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->j:I

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->k:I

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/widgets/SquareTextureView;->a(II)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->c:Lcom/yelp/android/ui/widgets/SquareTextureView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->l:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/SquareTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 115
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDetach()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->b:Lcom/yelp/android/ui/activities/camera/ab;

    .line 154
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 166
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->b:Lcom/yelp/android/ui/activities/camera/ab;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/camera/ab;->b()V

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x7f0c050c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->i:I

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->stop()V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->release()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->b:Lcom/yelp/android/ui/activities/camera/ab;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/camera/ab;->c()V

    .line 142
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->i:I

    .line 177
    :goto_0
    const-string/jumbo v1, "play_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method
