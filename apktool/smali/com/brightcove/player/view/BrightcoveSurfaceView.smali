.class public Lcom/brightcove/player/view/BrightcoveSurfaceView;
.super Landroid/view/SurfaceView;
.source "BrightcoveSurfaceView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout: changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 58
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 76
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 77
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 78
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 80
    sget-object v4, Lcom/brightcove/player/view/BrightcoveSurfaceView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMeasure: width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", videoWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", videoHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", widthMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/brightcove/player/view/LayoutUtil;->getSpecMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", heightMode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/brightcove/player/view/LayoutUtil;->getSpecMode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    if-lez v2, :cond_0

    .line 89
    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 91
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    div-int/2addr v0, v2

    .line 98
    :cond_0
    :goto_0
    sget-object v2, Lcom/brightcove/player/view/BrightcoveSurfaceView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMeasuredDimension: width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0, v1, v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->setMeasuredDimension(II)V

    .line 100
    return-void

    .line 92
    :cond_1
    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 94
    iget v1, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSizeChanged: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 64
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoWidth:I

    .line 45
    iput p2, p0, Lcom/brightcove/player/view/BrightcoveSurfaceView;->videoHeight:I

    .line 47
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 48
    invoke-super {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 49
    invoke-super {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 51
    :cond_0
    return-void
.end method
