.class public Lcom/yelp/android/util/m;
.super Lcom/yelp/android/ui/util/ad;
.source "OnScrollHideEditTextListener.java"


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/util/ad;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lcom/yelp/android/util/m;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 28
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/util/m;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/yelp/android/util/m;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/util/m;->p:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/av;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/m;->a:Landroid/view/animation/Animation;

    .line 34
    iget-object v0, p0, Lcom/yelp/android/util/m;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/util/m$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/util/m$1;-><init>(Lcom/yelp/android/util/m;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/m;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/yelp/android/util/m;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/util/m;->p:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/av;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/m;->b:Landroid/view/animation/Animation;

    .line 47
    iget-object v0, p0, Lcom/yelp/android/util/m;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/util/m$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/util/m$2;-><init>(Lcom/yelp/android/util/m;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/util/m;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yelp/android/util/m;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/util/m;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yelp/android/util/m;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/util/m;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yelp/android/util/m;->j:Z

    return p1
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/yelp/android/util/m;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/util/m;->d:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/util/m;->j:Z

    .line 62
    iget-object v0, p0, Lcom/yelp/android/util/m;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iget-object v1, p0, Lcom/yelp/android/util/m;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/util/m;->c()V

    .line 81
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/yelp/android/util/m;->a()V

    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/util/m;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/util/m;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/util/m;->d:Z

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/util/m;->j:Z

    .line 71
    iget-object v0, p0, Lcom/yelp/android/util/m;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/util/m;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iget-object v1, p0, Lcom/yelp/android/util/m;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/util/m;->b()V

    .line 88
    :cond_0
    return-void
.end method
