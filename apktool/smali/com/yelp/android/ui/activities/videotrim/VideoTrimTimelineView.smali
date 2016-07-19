.class public Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;
.super Landroid/view/View;
.source "VideoTrimTimelineView.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/videotrim/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private b:Lcom/yelp/android/serializable/LocalVideo;

.field private c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

.field private d:Lcom/yelp/android/ui/activities/videotrim/b;

.field private final e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/yelp/android/ui/activities/videotrim/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/drawable/NinePatchDrawable;

.field private final h:I

.field private i:Landroid/graphics/drawable/NinePatchDrawable;

.field private final j:Landroid/graphics/drawable/NinePatchDrawable;

.field private final k:Landroid/graphics/drawable/NinePatchDrawable;

.field private final l:I

.field private final m:I

.field private n:F

.field private o:F

.field private p:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->f:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->f:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 98
    const v0, 0x7f02058f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->k:Landroid/graphics/drawable/NinePatchDrawable;

    .line 99
    const v0, 0x7f020590

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->j:Landroid/graphics/drawable/NinePatchDrawable;

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->j:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->i:Landroid/graphics/drawable/NinePatchDrawable;

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->j:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 103
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->l:I

    .line 104
    iget v0, v2, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->m:I

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 107
    const v0, 0x7f02058e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->g:Landroid/graphics/drawable/NinePatchDrawable;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->g:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 109
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->h:I

    .line 111
    const v0, 0x7f02058d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a:Landroid/graphics/drawable/Drawable;

    .line 113
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->NONE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->p:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    .line 115
    new-instance v0, Lcom/yelp/android/ui/activities/videotrim/b;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/ui/activities/videotrim/b;-><init>(ILcom/yelp/android/ui/activities/videotrim/b$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->d:Lcom/yelp/android/ui/activities/videotrim/b;

    .line 116
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->e:Ljava/util/TreeMap;

    .line 117
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->getTrimBegin()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->q:I

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->q:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->seekTo(I)V

    .line 470
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->getTrimEnd()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->q:I

    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->q:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->seekTo(I)V

    .line 475
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->z:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 238
    iput-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    .line 240
    :cond_1
    return-void
.end method

.method public a(ILandroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    .line 442
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->y:F

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    sub-float/2addr v0, v1

    float-to-int v1, v0

    .line 443
    const/high16 v0, 0x44fa0000    # 2000.0f

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 444
    add-int/lit16 v2, p1, 0x7d0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 446
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 448
    :cond_0
    if-gtz v0, :cond_2

    .line 465
    :cond_1
    :goto_0
    return-void

    .line 451
    :cond_2
    int-to-float v0, v0

    int-to-float v2, v1

    const/4 v3, 0x1

    invoke-static {p2, v0, v2, v3}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->e:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/yelp/android/ui/activities/videotrim/a;

    int-to-float v5, p1

    iget v6, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    int-to-float v7, v1

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/yelp/android/ui/activities/videotrim/a;-><init>(Landroid/graphics/Bitmap;FFF)V

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    add-int/lit16 p1, p1, -0x7d0

    .line 464
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->e:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x21

    .line 214
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    .line 215
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c()V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->z:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 220
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->z:Ljava/util/Timer;

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->z:Ljava/util/Timer;

    new-instance v1, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$1;-><init>(Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 230
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v3, 0x2ee0

    const/16 v2, 0xbb8

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->p:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->LEFT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    if-ne v0, v1, :cond_8

    .line 252
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->n:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    .line 255
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_1

    .line 256
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    add-int/lit16 v0, v0, -0xbb8

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    .line 260
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    sub-int/2addr v0, v1

    if-le v0, v3, :cond_2

    .line 261
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    add-int/lit16 v0, v0, -0x2ee0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    .line 265
    :cond_2
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    if-gez v0, :cond_3

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    .line 270
    :cond_3
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    add-int/2addr v0, v1

    if-gez v0, :cond_4

    .line 271
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    neg-int v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    .line 273
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c()V

    .line 308
    :cond_5
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->n:F

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->q:I

    .line 311
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->q:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x64

    if-gt v0, v1, :cond_6

    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->q:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x64

    if-lt v0, v1, :cond_6

    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->q:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    if-le v0, v1, :cond_7

    .line 314
    :cond_6
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c()V

    .line 317
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->d:Lcom/yelp/android/ui/activities/videotrim/b;

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/b;->a(I)V

    .line 320
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->postInvalidate()V

    goto/16 :goto_0

    .line 274
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->p:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->RIGHT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    if-ne v0, v1, :cond_d

    .line 275
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->n:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    .line 278
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_9

    .line 279
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    add-int/lit16 v0, v0, 0xbb8

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    .line 283
    :cond_9
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    sub-int/2addr v0, v1

    if-le v0, v3, :cond_a

    .line 284
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    add-int/lit16 v0, v0, 0x2ee0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    .line 288
    :cond_a
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->u:I

    if-le v0, v1, :cond_b

    .line 289
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->u:I

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    .line 293
    :cond_b
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    .line 296
    :cond_c
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->d()V

    goto/16 :goto_1

    .line 297
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->p:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->PAN:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    if-ne v0, v1, :cond_5

    .line 298
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->n:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    .line 301
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v1

    if-le v0, v1, :cond_e

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    .line 304
    :cond_e
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    add-int/2addr v0, v1

    if-gez v0, :cond_5

    .line 305
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    neg-int v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    goto/16 :goto_1
.end method

.method public getTrimBegin()I
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTrimEnd()I
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->c:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 345
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->w:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->y:F

    iget-object v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 354
    const/4 v0, -0x2

    move v2, v0

    .line 355
    :goto_1
    add-int/lit8 v0, v2, -0x2

    mul-int/lit16 v0, v0, 0x7d0

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->u:I

    if-gt v0, v3, :cond_2

    .line 357
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    mul-int/lit16 v3, v2, 0x7d0

    add-int/2addr v0, v3

    .line 358
    iget-object v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->e:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/videotrim/a;

    .line 361
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/a;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/a;->b()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 356
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 364
    :cond_2
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->w:F

    neg-float v2, v2

    float-to-int v2, v2

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    float-to-int v3, v3

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    int-to-float v4, v4

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->y:F

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    int-to-float v2, v2

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->y:F

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->i:Landroid/graphics/drawable/NinePatchDrawable;

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    int-to-float v2, v2

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->l:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    float-to-int v3, v3

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->m:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->l:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->y:F

    float-to-int v5, v5

    iget v6, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->m:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->i:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->q:I

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->g:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    const/high16 v6, 0x44fa0000    # 2000.0f

    const v4, 0x3faaaaab

    const/high16 v5, 0x40000000    # 2.0f

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 125
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->l:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->w:F

    .line 126
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->h:I

    int-to-float v0, v0

    .line 132
    int-to-float v1, p2

    mul-float/2addr v0, v5

    sub-float v0, v1, v0

    .line 133
    div-float v1, v0, v4

    .line 135
    div-float/2addr v1, v6

    .line 138
    int-to-float v2, p1

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->w:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    const v3, 0x463b8000    # 12000.0f

    div-float/2addr v2, v3

    .line 140
    mul-float v3, v2, v6

    .line 141
    mul-float/2addr v3, v4

    .line 144
    cmpg-float v4, v0, v3

    if-gez v4, :cond_1

    .line 147
    iput v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    .line 148
    int-to-float v1, p2

    sub-float v0, v1, v0

    div-float/2addr v0, v5

    .line 149
    int-to-float v1, p1

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->w:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->u:I

    .line 158
    :goto_0
    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    .line 159
    int-to-float v1, p2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->y:F

    .line 163
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->y:F

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    sub-float/2addr v0, v1

    .line 164
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->g:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->g:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 170
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->g:Landroid/graphics/drawable/NinePatchDrawable;

    neg-float v2, v0

    float-to-int v2, v2

    iget v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    float-to-int v3, v3

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->h:I

    sub-int/2addr v3, v4

    float-to-int v0, v0

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->y:F

    float-to-int v4, v4

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->h:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 177
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->y:F

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    sub-float v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/videotrim/a;

    .line 180
    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->x:F

    invoke-virtual {v1, v0, v4, v2}, Lcom/yelp/android/ui/activities/videotrim/a;->a(FFF)V

    goto :goto_1

    .line 153
    :cond_1
    iput v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    .line 154
    int-to-float v0, p2

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    .line 155
    const/16 v1, 0x2ee0

    iput v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->u:I

    goto :goto_0

    .line 185
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_0
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->n:F

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->o:F

    sub-float/2addr v2, v3

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->n:F

    .line 435
    iput v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->o:F

    .line 436
    return v1

    .line 406
    :pswitch_0
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    int-to-float v0, v0

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->w:F

    add-float/2addr v0, v4

    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->l:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    .line 410
    iget v4, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    int-to-float v4, v4

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->v:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->w:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->l:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 412
    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->l:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    move v0, v1

    .line 413
    :goto_1
    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->l:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v1

    .line 415
    :cond_0
    iput v3, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->o:F

    .line 416
    if-eqz v0, :cond_2

    .line 417
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->LEFT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->p:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 412
    goto :goto_1

    .line 418
    :cond_2
    if-eqz v2, :cond_3

    .line 419
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->RIGHT_HANDLE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->p:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    goto :goto_0

    .line 421
    :cond_3
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->PAN:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->p:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    goto :goto_0

    .line 425
    :pswitch_1
    sget-object v0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;->NONE:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->p:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$TouchState;

    .line 426
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    sub-int/2addr v0, v2

    const/16 v2, 0xc1c

    if-gt v0, v2, :cond_4

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->k:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->i:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_0

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->j:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->i:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLocalVideo(Lcom/yelp/android/serializable/LocalVideo;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 200
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    .line 201
    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->r:I

    .line 202
    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->s:I

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalVideo;->c()I

    move-result v0

    const/16 v1, 0x2ee0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->t:I

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->d:Lcom/yelp/android/ui/activities/videotrim/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b:Lcom/yelp/android/serializable/LocalVideo;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/b;->a(Lcom/yelp/android/serializable/LocalVideo;)V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 207
    return-void
.end method
