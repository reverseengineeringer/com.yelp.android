.class public Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityOnboardingSearch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    const v0, 0x7f0c0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 101
    new-instance v0, Lcom/yelp/android/ui/activities/dc;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/dc;-><init>(Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->OnboardingFirstSearch:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->setContentView(I)V

    .line 79
    const v0, 0x7f0c0171

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 80
    sget-object v1, Lcom/yelp/android/appdata/experiment/c;->b:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment;->a()Ljava/lang/Enum;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;->search_step_ready:Lcom/yelp/android/appdata/experiment/FirstSearchExperiment$Cohort;

    if-ne v1, v2, :cond_0

    .line 81
    const v1, 0x7f0704b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    :goto_0
    const v0, 0x7f0c0172

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->RESTAURANTS:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->a(Landroid/view/View;Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;)V

    .line 87
    const v0, 0x7f0c0173

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->BARS:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->a(Landroid/view/View;Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;)V

    .line 88
    const v0, 0x7f0c0174

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->COFFEE:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->a(Landroid/view/View;Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;)V

    .line 89
    const v0, 0x7f04000b

    const v1, 0x7f04000a

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->overridePendingTransition(II)V

    .line 90
    return-void

    .line 83
    :cond_0
    const v1, 0x7f07047c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
