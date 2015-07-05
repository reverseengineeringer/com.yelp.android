.class public Lcom/ooyala/android/AdsLearnMoreButton;
.super Landroid/widget/RelativeLayout;
.source "AdsLearnMoreButton.java"


# instance fields
.field private _adPlayer:Lcom/ooyala/android/AdMoviePlayer;

.field private _learnMore:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ooyala/android/AdMoviePlayer;I)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/4 v3, -0x2

    const/16 v2, 0x14

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    .line 26
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    const-string/jumbo v1, "Learn More"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 31
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_0

    .line 33
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    new-instance v1, Lcom/ooyala/android/AdsLearnMoreButton$1;

    invoke-direct {v1, p0}, Lcom/ooyala/android/AdsLearnMoreButton$1;-><init>(Lcom/ooyala/android/AdsLearnMoreButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45
    iget-object v1, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/ooyala/android/AdsLearnMoreButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p0, p3}, Lcom/ooyala/android/AdsLearnMoreButton;->setTopMargin(I)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/ooyala/android/AdsLearnMoreButton;)Lcom/ooyala/android/AdMoviePlayer;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_adPlayer:Lcom/ooyala/android/AdMoviePlayer;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/AdsLearnMoreButton;->removeView(Landroid/view/View;)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method public setTopMargin(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/ooyala/android/AdsLearnMoreButton;->_learnMore:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 55
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 56
    return-void
.end method
