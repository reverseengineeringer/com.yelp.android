.class public Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "BetterMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$b;,
        Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$c;,
        Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;,
        Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

.field private b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:I

.field private g:Landroid/view/TextureView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private j:Landroid/media/MediaPlayer$OnCompletionListener;

.field private k:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$b;

.field private l:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 51
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    .line 52
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l:Ljava/util/Timer;

    .line 53
    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->b:Z

    .line 54
    invoke-super {p0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->c:Z

    .line 55
    iput v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->e:F

    .line 56
    iput v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->d:F

    .line 60
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$1;-><init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 279
    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$c;-><init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$1;)V

    .line 280
    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/util/TimerTask;->run()V

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l:Ljava/util/Timer;

    .line 285
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l:Ljava/util/Timer;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$3;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$3;-><init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 248
    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    .line 270
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    .line 271
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->k:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$b;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->k:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$b;

    invoke-interface {v1, v0, p1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$b;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    .line 274
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;FF)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$4;-><init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 262
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;FF)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/view/TextureView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->g:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->e:F

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->d:F

    return v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->b()V

    return-void
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->i:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->b:Z

    return v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 225
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->g:Landroid/view/TextureView;

    .line 226
    iput-object p2, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->h:Landroid/widget/ImageView;

    .line 227
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$b;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->k:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$b;

    .line 266
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    .line 148
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 150
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    .line 93
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->b:Z

    .line 98
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 112
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 164
    iput p1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f:I

    .line 165
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;-><init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V

    invoke-super {p0, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_1

    .line 171
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 172
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 174
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->GETTING_FREEZE_PHOTO:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->g:Landroid/view/TextureView;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$2;-><init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 203
    add-int/lit8 v1, p1, 0x64

    if-gt v0, v1, :cond_2

    add-int/lit16 v1, p1, -0x7d0

    if-ge v0, v1, :cond_0

    .line 210
    :cond_2
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->LOOKING_FOR_KEYFRAME:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    .line 211
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->c:Z

    .line 117
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 138
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->i:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 133
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use setSurface(TextureView, ImageView) instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVolume(FF)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    .line 122
    invoke-super {p0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 126
    :cond_0
    iput p1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->e:F

    .line 127
    iput p2, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->d:F

    .line 128
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    .line 83
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->b:Z

    .line 88
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 103
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->b:Z

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 106
    return-void
.end method
