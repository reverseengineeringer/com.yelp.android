.class public Lcom/yelp/android/ui/widgets/CompassIndicator;
.super Landroid/widget/ImageView;
.source "CompassIndicator.java"

# interfaces
.implements Lcom/yelp/android/appdata/e$a;


# static fields
.field private static final a:D

.field private static b:Landroid/graphics/Bitmap;


# instance fields
.field private c:D

.field private final d:Landroid/view/Display;

.field private final e:Landroid/location/Location;

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/Paint;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/ui/widgets/CompassIndicator;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/CompassIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/CompassIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget-object v0, Lcom/yelp/android/ui/widgets/CompassIndicator;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/CompassIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/widgets/CompassIndicator;->b:Landroid/graphics/Bitmap;

    .line 59
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->e:Landroid/location/Location;

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/CompassIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->d:Landroid/view/Display;

    .line 63
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->c:D

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->f:Landroid/graphics/Matrix;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->g:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 5

    .prologue
    .line 119
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-wide v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->c:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 130
    :cond_2
    iput-wide p1, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->c:D

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/CompassIndicator;->invalidate()V

    goto :goto_0
.end method

.method public a(DDLjava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->e:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->e:Landroid/location/Location;

    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 80
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    .line 84
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    .line 85
    if-nez v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-wide v2, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    sget-wide v2, Lcom/yelp/android/ui/widgets/CompassIndicator;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->e:Landroid/location/Location;

    invoke-virtual {v4, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 93
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->d:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 110
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->e:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v1

    add-float/2addr v1, v6

    rem-float/2addr v1, v6

    float-to-double v2, v1

    .line 111
    iget-wide v4, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->c:D

    sub-double/2addr v2, v4

    int-to-double v0, v0

    sub-double v0, v2, v0

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v2

    .line 112
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->f:Landroid/graphics/Matrix;

    double-to-float v0, v0

    sget-object v1, Lcom/yelp/android/ui/widgets/CompassIndicator;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget-object v3, Lcom/yelp/android/ui/widgets/CompassIndicator;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 113
    sget-object v0, Lcom/yelp/android/ui/widgets/CompassIndicator;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->f:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 100
    :pswitch_0
    const/16 v0, 0x5a

    .line 101
    goto :goto_1

    .line 103
    :pswitch_1
    const/16 v0, 0xb4

    .line 104
    goto :goto_1

    .line 106
    :pswitch_2
    const/16 v0, 0x10e

    goto :goto_1

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->h:Z

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->y()Lcom/yelp/android/appdata/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/e;->a(Lcom/yelp/android/appdata/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/CompassIndicator;->h:Z

    .line 75
    :cond_0
    return-void
.end method
