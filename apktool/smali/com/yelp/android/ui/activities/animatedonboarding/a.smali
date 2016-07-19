.class Lcom/yelp/android/ui/activities/animatedonboarding/a;
.super Landroid/support/v4/view/ac;
.source "AnimatedOnboardingPagerAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/view/ac;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/a;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/ui/activities/animatedonboarding/a;->b:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p3, p0, Lcom/yelp/android/ui/activities/animatedonboarding/a;->c:Landroid/view/View$OnClickListener;

    .line 31
    iput-object p4, p0, Lcom/yelp/android/ui/activities/animatedonboarding/a;->d:Landroid/view/View$OnClickListener;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->values()[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    move-result-object v0

    aget-object v1, v0, p2

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/animatedonboarding/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    iget v2, v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->layoutRes:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    iget v0, v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->stringRes:I

    if-eqz v0, :cond_0

    .line 51
    const v0, 0x7f0f0174

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, v1, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->stringRes:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 53
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->PAGE_SIGN_UP:Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    if-ne v1, v0, :cond_1

    .line 54
    const v0, 0x7f0f03c0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/a;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0f03bf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/a;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0f03bd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/animatedonboarding/a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    return-object v2
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 41
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;->values()[Lcom/yelp/android/ui/activities/animatedonboarding/AnimatedOnboardingPageModel;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
