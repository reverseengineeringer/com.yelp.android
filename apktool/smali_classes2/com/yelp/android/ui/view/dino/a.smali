.class public Lcom/yelp/android/ui/view/dino/a;
.super Landroid/widget/ImageView;
.source "LightningShaftView.java"


# static fields
.field private static final a:F

.field private static final b:F

.field private static final c:F


# instance fields
.field private d:Landroid/animation/ValueAnimator;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x44

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/yelp/android/ui/view/dino/a;->a:F

    .line 25
    const/16 v0, 0x73

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/yelp/android/ui/view/dino/a;->b:F

    .line 26
    const/16 v0, 0x6e

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/yelp/android/ui/view/dino/a;->c:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020215

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->e:Landroid/graphics/Bitmap;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020216

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->f:Landroid/graphics/Bitmap;

    .line 45
    iput-object p2, p0, Lcom/yelp/android/ui/view/dino/a;->g:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->h:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->i:Landroid/graphics/Paint;

    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/view/dino/a;->b()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/view/dino/a;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/view/dino/a;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->h:Landroid/graphics/Paint;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 74
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->d:Landroid/animation/ValueAnimator;

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->d:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/yelp/android/ui/view/dino/a$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/view/dino/a$1;-><init>(Lcom/yelp/android/ui/view/dino/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->d:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->d:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 90
    return-void

    .line 74
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 71
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->e:Landroid/graphics/Bitmap;

    sget v1, Lcom/yelp/android/ui/view/dino/a;->a:F

    sget v2, Lcom/yelp/android/ui/view/dino/a;->b:F

    iget-object v3, p0, Lcom/yelp/android/ui/view/dino/a;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/view/dino/a;->f:Landroid/graphics/Bitmap;

    sget v1, Lcom/yelp/android/ui/view/dino/a;->a:F

    sget v2, Lcom/yelp/android/ui/view/dino/a;->c:F

    iget-object v3, p0, Lcom/yelp/android/ui/view/dino/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/a;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/a;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/view/dino/a;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/yelp/android/ui/view/dino/a;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    return-void
.end method
