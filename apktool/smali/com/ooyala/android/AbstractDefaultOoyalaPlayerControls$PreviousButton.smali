.class public Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;
.super Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;
.source "AbstractDefaultOoyalaPlayerControls.java"


# instance fields
.field final synthetic this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;->this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v0, 0x5

    .line 90
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    sget v4, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->SOFT_WHITE_COLOR:I

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;->getHeight()I

    move-result v6

    iget-boolean v8, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;->_touching:Z

    move-object v2, p1

    move v7, v0

    invoke-static/range {v0 .. v8}, Lcom/ooyala/android/Images;->drawImage(ILandroid/content/Context;Landroid/graphics/Canvas;IIIIIZ)V

    goto :goto_0
.end method
