.class public Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityAnimatedOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$9;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:[Lcom/yelp/android/analytics/iris/ViewIri;

.field private static final c:[Lcom/yelp/android/analytics/iris/EventIri;

.field private static final d:[Lcom/yelp/android/analytics/iris/EventIri;


# instance fields
.field private e:Z

.field private f:I

.field private g:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

.field private h:Landroid/support/v4/view/ViewPager;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:[Landroid/view/View;

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/Runnable;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/support/v4/view/ViewPager$h;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    sget v0, Lcom/yelp/android/ui/util/av;->a:I

    mul-int/lit8 v0, v0, 0x6

    sput v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a:I

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->AnimatedOnboardingPageOne:Lcom/yelp/android/analytics/iris/ViewIri;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->AnimatedOnboardingPageTwo:Lcom/yelp/android/analytics/iris/ViewIri;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->AnimatedOnboardingPageThree:Lcom/yelp/android/analytics/iris/ViewIri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->AnimatedOnboardingPageFour:Lcom/yelp/android/analytics/iris/ViewIri;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->SplashScreenLogin:Lcom/yelp/android/analytics/iris/ViewIri;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b:[Lcom/yelp/android/analytics/iris/ViewIri;

    .line 80
    new-array v0, v6, [Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSwipeForwardFromPage1:Lcom/yelp/android/analytics/iris/EventIri;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSwipeForwardFromPage2:Lcom/yelp/android/analytics/iris/EventIri;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSwipeForwardFromPage3:Lcom/yelp/android/analytics/iris/EventIri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSwipeForwardFromPage4:Lcom/yelp/android/analytics/iris/EventIri;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c:[Lcom/yelp/android/analytics/iris/EventIri;

    .line 87
    new-array v0, v6, [Lcom/yelp/android/analytics/iris/EventIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSwipeBackwardFromPage2:Lcom/yelp/android/analytics/iris/EventIri;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSwipeBackwardFromPage3:Lcom/yelp/android/analytics/iris/EventIri;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSwipeBackwardFromPage4:Lcom/yelp/android/analytics/iris/EventIri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->OnboardingSwipeBackwardFromSignUpLogIn:Lcom/yelp/android/analytics/iris/EventIri;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->d:[Lcom/yelp/android/analytics/iris/EventIri;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 285
    new-instance v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$4;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->q:Landroid/view/View$OnClickListener;

    .line 296
    new-instance v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$5;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->r:Landroid/support/v4/view/ViewPager$h;

    .line 491
    new-instance v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$6;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->s:Landroid/view/View$OnClickListener;

    .line 503
    new-instance v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$7;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->t:Landroid/view/View$OnClickListener;

    .line 515
    new-instance v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$8;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    const-class v1, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->h:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 480
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->k:[Landroid/view/View;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->k:[Landroid/view/View;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 486
    check-cast v0, Landroid/widget/ImageView;

    const v4, 0x7f020234

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->k:[Landroid/view/View;

    aget-object v0, v0, p1

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020232

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->p:Z

    return p1
.end method

.method static synthetic a()[Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->d:[Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Lcom/yelp/android/ui/activities/animatedonboarding/GifView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->g:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->o:Z

    return p1
.end method

.method static synthetic b()[Lcom/yelp/android/analytics/iris/EventIri;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->c:[Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->a:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->e:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->n:Z

    return p1
.end method

.method static synthetic d()[Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->b:[Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 470
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_dots_and_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_dots:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f:I

    return v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 475
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_dots_and_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->e:Z

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->o:Z

    return v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->j:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, v2}, Landroid/support/v4/view/ViewPager;->scrollBy(II)V

    .line 265
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 266
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 268
    new-instance v1, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$3;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 277
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 278
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    .line 256
    const-string/jumbo v1, "android_onboarding_experiment"

    sget-object v2, Lcom/yelp/android/appdata/experiment/e;->s:Lcom/yelp/android/appdata/experiment/OnboardingExperiment;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment;->b()Ljava/lang/Enum;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 229
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    sparse-switch p1, :sswitch_data_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 233
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 234
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->setResult(I)V

    .line 235
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->finish()V

    goto :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f8 -> :sswitch_0
        0x418 -> :sswitch_0
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->setResult(I)V

    .line 213
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->setContentView(I)V

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 124
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 127
    const v1, 0x7f0e0144

    invoke-static {p0, v1}, Landroid/support/v4/content/d;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 130
    :cond_0
    const v0, 0x7f0f00ea

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->h:Landroid/support/v4/view/ViewPager;

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->h:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/activities/animatedonboarding/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->s:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->t:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->u:Landroid/view/View$OnClickListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/yelp/android/ui/activities/animatedonboarding/a;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ac;)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->h:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->r:Landroid/support/v4/view/ViewPager$h;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager$e;)V

    .line 136
    const v0, 0x7f0f00eb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->i:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_1
    const v0, 0x7f0f00e5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->j:Landroid/view/View;

    .line 143
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    const v1, 0x7f0f00e6

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0f00e7

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const v2, 0x7f0f00e8

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0f00e9

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->k:[Landroid/view/View;

    .line 155
    const v0, 0x7f0f00e3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->g:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    .line 157
    if-eqz p1, :cond_3

    .line 158
    const-string/jumbo v0, "page_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->r:Landroid/support/v4/view/ViewPager$h;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager$h;->b(I)V

    .line 160
    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->g:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    sget-object v2, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->pages:[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    aget-object v0, v2, v0

    iget v0, v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->startFrame:I

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(I)V

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->h:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$1;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    iput-boolean v6, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->e:Z

    .line 179
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->g:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->b()V

    .line 225
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 219
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 530
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_2

    .line 531
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 533
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->F()V

    .line 536
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PermissionLocationAllowed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PermissionLocationDenied:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 542
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 183
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->f:I

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->g:Lcom/yelp/android/ui/activities/animatedonboarding/GifView;

    new-instance v1, Lcom/yelp/android/ui/activities/animatedonboarding/b;

    const/16 v2, 0xb

    const/16 v3, 0x70

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/animatedonboarding/b;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/animatedonboarding/GifView;->a(Lcom/yelp/android/ui/activities/animatedonboarding/b;)V

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->l:Landroid/os/Handler;

    .line 193
    new-instance v0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding$2;-><init>(Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->m:Ljava/lang/Runnable;

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 250
    const-string/jumbo v0, "page_number"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/ActivityAnimatedOnboarding;->h:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    return-void
.end method
