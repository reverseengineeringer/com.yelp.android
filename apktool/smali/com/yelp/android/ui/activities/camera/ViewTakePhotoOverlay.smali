.class public Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;
.super Landroid/view/View;
.source "ViewTakePhotoOverlay.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/camera/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$2;,
        Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:I

.field private e:Ljava/util/Timer;

.field private f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    .line 46
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->setLayerType(ILandroid/graphics/Paint;)V

    .line 48
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->PREVIEW:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;)I
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    return v0
.end method

.method private a(JJ)V
    .locals 7

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 171
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    .line 172
    new-instance v1, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$1;-><init>(Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;)V

    .line 187
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 108
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v1, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v2, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v1, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v2, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v3, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    iget v4, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v2, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v2, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    iget v4, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v1, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    iget v2, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    iget v4, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 116
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v1, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    iget v2, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    int-to-float v3, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    iget v4, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    iget v2, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    iget v4, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    iget v2, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v3, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    iget v4, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 134
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->PREVIEW:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 135
    invoke-direct {p0, v2, v3, v2, v3}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(JJ)V

    .line 136
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x15e

    .line 148
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->AUTOFOCUS:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    .line 150
    invoke-direct {p0, v2, v3, v2, v3}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(JJ)V

    .line 151
    return-void
.end method

.method public d(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->SHUTTER:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 156
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$2;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    int-to-float v3, v0

    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 71
    iput p1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    .line 72
    iput p2, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    .line 73
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    .line 74
    const/4 v0, 0x1

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->j:I

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->j:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    return-void
.end method
