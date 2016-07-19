.class public Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityElitePrompt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 144
    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;Landroid/view/View;)I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    const-string/jumbo v0, "eliteprompt_user_name"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    return-void
.end method


# virtual methods
.method public continueButton(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewComplete;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->startActivity(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->finish()V

    .line 174
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewPostedEliteSplash:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public learnMoreButton(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 154
    const v0, 0x7f070285

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x7f070379

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewPostedEliteLearnMore:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->setContentView(I)V

    .line 49
    const v0, 0x7f07069c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->setTitle(I)V

    .line 51
    const v0, 0x7f0f017a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070284

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "eliteprompt_user_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 67
    const v0, 0x7f0f017c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt$1;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityElitePrompt;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 130
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 131
    return-void
.end method
