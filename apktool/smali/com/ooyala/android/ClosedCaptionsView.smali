.class public Lcom/ooyala/android/ClosedCaptionsView;
.super Landroid/widget/TextView;
.source "ClosedCaptionsView.java"


# instance fields
.field private _caption:Lcom/ooyala/android/Caption;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/ooyala/android/ClosedCaptionsView;->initStyle()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/ooyala/android/ClosedCaptionsView;->initStyle()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/ooyala/android/ClosedCaptionsView;->initStyle()V

    .line 29
    return-void
.end method


# virtual methods
.method public getCaption()Lcom/ooyala/android/Caption;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ooyala/android/ClosedCaptionsView;->_caption:Lcom/ooyala/android/Caption;

    return-object v0
.end method

.method public initStyle()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setMaxLines(I)V

    .line 70
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setTextColor(I)V

    .line 71
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setTextSize(F)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setBackgroundColor(I)V

    .line 73
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setGravity(I)V

    .line 74
    return-void
.end method

.method public setCaption(Lcom/ooyala/android/Caption;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ooyala/android/ClosedCaptionsView;->_caption:Lcom/ooyala/android/Caption;

    .line 37
    iget-object v0, p0, Lcom/ooyala/android/ClosedCaptionsView;->_caption:Lcom/ooyala/android/Caption;

    if-eqz v0, :cond_0

    .line 38
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setBackgroundColor(I)V

    .line 39
    invoke-virtual {p1}, Lcom/ooyala/android/Caption;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setBackgroundColor(I)V

    .line 42
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCaptionText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setBackgroundColor(I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/ooyala/android/ClosedCaptionsView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setBackgroundColor(I)V

    .line 53
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setStyle(Lcom/ooyala/android/ClosedCaptionsStyle;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/ooyala/android/ClosedCaptionsStyle;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setTextColor(I)V

    .line 59
    invoke-virtual {p1}, Lcom/ooyala/android/ClosedCaptionsStyle;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setBackgroundColor(I)V

    .line 60
    invoke-virtual {p1}, Lcom/ooyala/android/ClosedCaptionsStyle;->getFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    invoke-virtual {p0}, Lcom/ooyala/android/ClosedCaptionsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 62
    invoke-virtual {p1}, Lcom/ooyala/android/ClosedCaptionsStyle;->getBottomMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 63
    invoke-virtual {p0, v0}, Lcom/ooyala/android/ClosedCaptionsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-void
.end method
