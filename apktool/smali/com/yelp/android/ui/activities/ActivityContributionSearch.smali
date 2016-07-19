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
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;-><init>()V

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v1, p1, :cond_1

    .line 53
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_0
    :goto_0
    const-string/jumbo v1, "extra.contribution_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    return-object v0

    .line 54
    :cond_1
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v1, p1, :cond_0

    .line 55
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityContributionSearch;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityContributionSearch;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    return-object v0
.end method

.method private f()Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 2

    .prologue
    .line 199
    const-string/jumbo v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image/(.*)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 209
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/(.*)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/BusinessContributionType;

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b()Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v1

    .line 218
    const v0, 0x7f0f0589

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;-><init>(Lcom/yelp/android/ui/activities/ActivityContributionSearch;Lcom/yelp/android/appdata/BusinessContributionType;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    const v1, 0x7f070224

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method


# virtual methods
.method protected a()Lcom/yelp/android/ui/activities/ContributionSearchFragment;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b()Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/appdata/BusinessContributionType;Landroid/net/Uri;)Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->f()Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    goto :goto_0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->f()Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/yelp/android/cf/a;->a(Landroid/content/Intent;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic d()Lcom/yelp/android/ui/activities/support/YelpListFragment;
    .locals 1

    .prologue
    .line 29
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
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 153
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 123
    sparse-switch p1, :sswitch_data_0

    .line 146
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 125
    :sswitch_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->finish()V

    goto :goto_1

    .line 130
    :sswitch_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->finish()V

    goto :goto_0

    .line 133
    :cond_2
    if-eqz p3, :cond_0

    .line 134
    const-string/jumbo v0, "extra.search_text"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "extra.location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 138
    const-string/jumbo v0, "extra.search.launch_method"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x419 -> :sswitch_0
        0x41f -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f070113

    .line 64
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->finish()V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    .line 75
    if-nez v0, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->f()Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    .line 79
    :cond_2
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_5

    .line 80
    sget-object v1, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->setTitle(I)V

    .line 92
    :goto_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->g()V

    .line 93
    if-eqz p1, :cond_3

    .line 94
    const-string/jumbo v1, "previous_search"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    .line 95
    const-string/jumbo v1, "previous_location"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    .line 98
    :cond_3
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/yelp/android/appdata/BusinessContributionType;->isMedia()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f07038e

    .line 103
    :goto_2
    invoke-virtual {v0}, Lcom/yelp/android/appdata/BusinessContributionType;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0701ff

    .line 108
    :goto_3
    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x419

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 83
    :cond_4
    const v1, 0x7f070118

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->setTitle(I)V

    goto :goto_1

    .line 85
    :cond_5
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_6

    sget-object v1, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->setTitle(I)V

    goto :goto_1

    .line 89
    :cond_6
    invoke-virtual {v0}, Lcom/yelp/android/appdata/BusinessContributionType;->getTitleRes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->setTitle(I)V

    goto :goto_1

    .line 99
    :cond_7
    const v1, 0x7f070391

    goto :goto_2

    .line 103
    :cond_8
    const v0, 0x7f070202

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    const-string/jumbo v0, "previous_search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "previous_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
