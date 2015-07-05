.class public Lcom/yelp/android/ui/widgets/b;
.super Ljava/lang/Object;
.source "Darwin.java"


# instance fields
.field private a:Z

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/b;->a:Z

    .line 26
    iput-object v1, p0, Lcom/yelp/android/ui/widgets/b;->b:Landroid/view/animation/Animation;

    .line 27
    iput-object v1, p0, Lcom/yelp/android/ui/widgets/b;->c:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/b;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/b;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 58
    const v0, 0x7f040020

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/b;->c:Landroid/view/animation/Animation;

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/b;->c:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/b;->c:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/ui/widgets/d;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/widgets/d;-><init>(Lcom/yelp/android/ui/widgets/b;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 71
    const v0, 0x7f04001b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/b;->b:Landroid/view/animation/Animation;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/b;->b:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/b;->b:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/ui/widgets/e;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/widgets/e;-><init>(Lcom/yelp/android/ui/widgets/b;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/b;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/b;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/b;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/b;->c:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .locals 4

    .prologue
    const/4 v2, -0x2

    .line 30
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/b;->a:Z

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/b;->a:Z

    .line 35
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/b;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 48
    new-instance v1, Lcom/yelp/android/ui/widgets/c;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/widgets/c;-><init>(Lcom/yelp/android/ui/widgets/b;Landroid/widget/ImageView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
