.class public Lcom/yelp/android/ui/map/YelpMapWrapperLayout;
.super Landroid/widget/RelativeLayout;
.source "YelpMapWrapperLayout.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/google/android/gms/maps/c;

.field private d:Lcom/google/android/gms/maps/model/c;

.field private e:Landroid/view/View;

.field private f:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)I
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 106
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/c;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->d:Lcom/google/android/gms/maps/model/c;

    .line 55
    iput-object p2, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->e:Landroid/view/View;

    .line 56
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->d:Lcom/google/android/gms/maps/model/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->d:Lcom/google/android/gms/maps/model/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/c;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->c:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->c:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->d()Lcom/google/android/gms/maps/g;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->d:Lcom/google/android/gms/maps/model/c;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/c;->b()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/g;->a(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    .line 67
    iget v3, v0, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 68
    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    iget-object v4, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->a:I

    add-int/2addr v0, v4

    .line 69
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 70
    int-to-float v3, v3

    int-to-float v0, v0

    invoke-virtual {v4, v3, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 74
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->f:Landroid/view/MotionEvent;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 96
    :goto_0
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 100
    :goto_1
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->f:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->f:Landroid/view/MotionEvent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->f:Landroid/view/MotionEvent;

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)I

    move-result v0

    iget v3, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->b:I

    if-le v0, v3, :cond_5

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->f:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->f:Landroid/view/MotionEvent;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public setup(Lcom/google/android/gms/maps/c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->c:Lcom/google/android/gms/maps/c;

    .line 42
    iput-object v2, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->f:Landroid/view/MotionEvent;

    .line 45
    new-instance v0, Lcom/yelp/android/ui/map/l;

    invoke-virtual {p0}, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/map/l;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 46
    invoke-virtual {v0}, Lcom/yelp/android/ui/map/l;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->a:I

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/map/YelpMapWrapperLayout;->b:I

    .line 51
    return-void
.end method
