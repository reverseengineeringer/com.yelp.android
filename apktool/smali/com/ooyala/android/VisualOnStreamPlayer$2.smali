.class Lcom/ooyala/android/VisualOnStreamPlayer$2;
.super Landroid/view/SurfaceView;
.source "VisualOnStreamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ooyala/android/VisualOnStreamPlayer;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/VisualOnStreamPlayer;


# direct methods
.method constructor <init>(Lcom/ooyala/android/VisualOnStreamPlayer;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/ooyala/android/VisualOnStreamPlayer$2;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 407
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MEASURE SPEC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 410
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 413
    const-string/jumbo v1, "VisualOnStreamPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MEASURE PARENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ooyala/android/VisualOnStreamPlayer$2;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget-object v4, v4, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v4}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ooyala/android/VisualOnStreamPlayer$2;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget-object v4, v4, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v4}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer$2;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget v1, v1, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoHeight:I

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/ooyala/android/VisualOnStreamPlayer$2;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget v3, v3, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoWidth:I

    div-int/2addr v1, v3

    .line 418
    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    .line 420
    if-gez v3, :cond_0

    .line 423
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer$2;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget v1, v1, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoWidth:I

    mul-int/2addr v1, v0

    iget-object v3, p0, Lcom/ooyala/android/VisualOnStreamPlayer$2;->this$0:Lcom/ooyala/android/VisualOnStreamPlayer;

    iget v3, v3, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoHeight:I

    div-int/2addr v1, v3

    .line 424
    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 427
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/ooyala/android/VisualOnStreamPlayer$2;->setMeasuredDimension(II)V

    .line 428
    const-string/jumbo v2, "VisualOnStreamPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MEASURED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    :cond_0
    move v0, v1

    move v1, v2

    goto :goto_0
.end method
