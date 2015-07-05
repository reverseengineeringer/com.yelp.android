.class public Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;
.super Landroid/widget/ImageButton;
.source "AbstractDefaultOoyalaPlayerControls.java"


# instance fields
.field protected _touching:Z

.field final synthetic this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;->this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;

    .line 55
    invoke-direct {p0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;->_touching:Z

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iput-boolean v1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;->_touching:Z

    .line 63
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;->invalidate()V

    .line 68
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;->_touching:Z

    .line 66
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;->invalidate()V

    goto :goto_0
.end method
