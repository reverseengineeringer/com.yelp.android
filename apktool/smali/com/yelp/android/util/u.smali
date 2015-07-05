.class public Lcom/yelp/android/util/u;
.super Lcom/yelp/android/ui/util/bh;
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
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/util/bh;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lcom/yelp/android/util/u;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 28
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/util/u;->a:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/yelp/android/util/u;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/util/u;->p:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cw;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/u;->a:Landroid/view/animation/Animation;

    .line 34
    iget-object v0, p0, Lcom/yelp/android/util/u;->a:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/util/v;

    invoke-direct {v1, p0}, Lcom/yelp/android/util/v;-><init>(Lcom/yelp/android/util/u;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/u;->b:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/yelp/android/util/u;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/util/u;->p:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cw;->b(Landroid/view/View;Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/u;->b:Landroid/view/animation/Animation;

    .line 45
    iget-object v0, p0, Lcom/yelp/android/util/u;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/util/w;

    invoke-direct {v1, p0}, Lcom/yelp/android/util/w;-><init>(Lcom/yelp/android/util/u;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/util/u;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yelp/android/util/u;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/util/u;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yelp/android/util/u;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/util/u;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/yelp/android/util/u;->j:Z

    return p1
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/yelp/android/util/u;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/util/u;->d:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/util/u;->j:Z

    .line 59
    iget-object v0, p0, Lcom/yelp/android/util/u;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iget-object v1, p0, Lcom/yelp/android/util/u;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/util/u;->c()V

    .line 78
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/util/u;->a()V

    .line 66
    iget-boolean v0, p0, Lcom/yelp/android/util/u;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/util/u;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/util/u;->d:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/util/u;->j:Z

    .line 68
    iget-object v0, p0, Lcom/yelp/android/util/u;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cp;->b(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/util/u;->c:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iget-object v1, p0, Lcom/yelp/android/util/u;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/yelp/android/util/u;->b()V

    .line 85
    :cond_0
    return-void
.end method
