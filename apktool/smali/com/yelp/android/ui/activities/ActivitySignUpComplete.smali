.class public Lcom/yelp/android/ui/activities/ActivitySignUpComplete;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivitySignUpComplete.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    const-string/jumbo v1, "signup_from_review"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 52
    const v0, 0x7f0c01af

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0c01b0

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0c01b1

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 55
    new-instance v3, Lcom/yelp/android/ui/activities/dx;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/dx;-><init>(Lcom/yelp/android/ui/activities/ActivitySignUpComplete;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/dc;->n()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f070676

    :goto_0
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-virtual {p0, v3, v5}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const v0, 0x7f070577

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 71
    const v0, 0x7f0700b5

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 72
    const v0, 0x7f0701cc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->setTitle(I)V

    .line 79
    :goto_1
    return-void

    .line 66
    :cond_0
    const v3, 0x7f070675

    goto :goto_0

    .line 74
    :cond_1
    const v3, 0x7f070579

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-virtual {p0, v3, v5}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f070578

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 76
    const v0, 0x7f07041c

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 77
    const v0, 0x7f070576

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->setTitle(I)V

    goto :goto_1
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SignUpComplete:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "signup_from_review"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "source"

    const-string/jumbo v1, "write_review"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivitySignUpComplete;->a()V

    .line 49
    return-void
.end method
