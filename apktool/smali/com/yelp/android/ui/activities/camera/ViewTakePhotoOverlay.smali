.class public Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;
.super Landroid/view/View;
.source "ViewTakePhotoOverlay.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/camera/a;


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
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 55
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->setLayerType(ILandroid/graphics/Paint;)V

    .line 58
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->PREVIEW:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    return v0
.end method

.method private a(JJ)V
    .locals 7

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 172
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    .line 173
    new-instance v1, Lcom/yelp/android/ui/activities/camera/ac;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/ac;-><init>(Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;)V

    .line 186
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->e:Ljava/util/Timer;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 118
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

    .line 119
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

    .line 121
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

    .line 122
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

    .line 124
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

    .line 125
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

    .line 127
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

    .line 129
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

    .line 131
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 135
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->PREVIEW:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 136
    invoke-direct {p0, v2, v3, v2, v3}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(JJ)V

    .line 137
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x15e

    .line 149
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->AUTOFOCUS:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    .line 151
    invoke-direct {p0, v2, v3, v2, v3}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(JJ)V

    .line 152
    return-void
.end method

.method public d(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->SHUTTER:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    .line 157
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 97
    sget-object v0, Lcom/yelp/android/ui/activities/camera/ae;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->f:Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay$CameraState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 109
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

    .line 97
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
    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 81
    iput p1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    .line 82
    iput p2, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    .line 83
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->g:I

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    .line 84
    const/4 v0, 0x1

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->i:I

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->j:I

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->j:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yelp/android/ui/activities/camera/ViewTakePhotoOverlay;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    return-void
.end method
