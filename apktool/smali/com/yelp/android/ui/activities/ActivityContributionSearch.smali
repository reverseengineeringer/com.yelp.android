.class public Lcom/yelp/android/ui/activities/ActivityContributionSearch;
.super Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;
.source "ActivityContributionSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar",
        "<",
        "Lcom/yelp/android/ui/activities/ContributionSearchFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;-><init>()V

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    const-string/jumbo v1, "extra.contribution_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 40
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityContributionSearch;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityContributionSearch;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b()Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v1

    .line 129
    const v0, 0x7f0c016a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/yelp/android/ui/activities/bd;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/bd;-><init>(Lcom/yelp/android/ui/activities/ActivityContributionSearch;Lcom/yelp/android/appdata/BusinessContributionType;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    const v1, 0x7f0701d6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected a()Lcom/yelp/android/ui/activities/ContributionSearchFragment;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b()Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/appdata/BusinessContributionType;)Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    return-object v0
.end method

.method protected synthetic c()Lcom/yelp/android/ui/activities/support/YelpListFragment;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a()Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    move-result-object v0

    return-object v0
.end method

.method public enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 106
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 79
    sparse-switch p1, :sswitch_data_0

    .line 99
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    :cond_1
    :goto_1
    return-void

    .line 81
    :sswitch_0
    if-eq p2, v2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->finish()V

    goto :goto_1

    .line 86
    :sswitch_1
    if-eqz p3, :cond_0

    .line 87
    const-string/jumbo v0, "extra.search_text"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    if-ne p2, v2, :cond_0

    .line 91
    const-string/jumbo v0, "extra.search.launch_method"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :sswitch_data_0
    .sparse-switch
        0x413 -> :sswitch_0
        0x418 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    .line 48
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_3

    .line 49
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->setTitle(I)V

    .line 58
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->d()V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    const-string/jumbo v0, "previous_search"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "previous_location"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    .line 64
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const v0, 0x7f070355

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 66
    const/16 v1, 0x413

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    :cond_1
    return-void

    .line 52
    :cond_2
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->setTitle(I)V

    goto :goto_0

    .line 55
    :cond_3
    iget v0, v0, Lcom/yelp/android/appdata/BusinessContributionType;->titleRes:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->setTitle(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    const-string/jumbo v0, "previous_search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "previous_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
