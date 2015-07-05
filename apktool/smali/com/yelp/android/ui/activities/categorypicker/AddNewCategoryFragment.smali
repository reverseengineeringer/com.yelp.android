.class public Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "AddNewCategoryFragment.java"


# instance fields
.field private a:Z

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/yelp/android/appdata/webrequests/v;

.field private e:Lcom/yelp/android/serializable/YelpBusiness;

.field private g:Lcom/yelp/android/ui/activities/categorypicker/c;

.field private h:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 123
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/categorypicker/b;-><init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->h:Lcom/yelp/android/appdata/webrequests/m;

    .line 142
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/appdata/webrequests/v;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->d:Lcom/yelp/android/appdata/webrequests/v;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;Lcom/yelp/android/appdata/webrequests/v;)Lcom/yelp/android/appdata/webrequests/v;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->d:Lcom/yelp/android/appdata/webrequests/v;

    return-object p1
.end method

.method public static a(ZLcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string/jumbo v2, "args_categories_added"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string/jumbo v2, "args_business"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->e:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->h:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/ui/activities/categorypicker/c;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->g:Lcom/yelp/android/ui/activities/categorypicker/c;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/categorypicker/c;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->g:Lcom/yelp/android/ui/activities/categorypicker/c;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement the AddCategoriesSuggestListener interface."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_categories_added"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a:Z

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_business"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->e:Lcom/yelp/android/serializable/YelpBusiness;

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 71
    const v1, 0x7f030071

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 73
    const v1, 0x7f0c01bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->c:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0c0213

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->b:Landroid/widget/EditText;

    .line 75
    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->b:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a:Z

    if-eqz v1, :cond_1

    const v1, 0x7f070526

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 79
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/yelp/android/ui/activities/categorypicker/a;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/categorypicker/a;-><init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a:Z

    if-nez v1, :cond_0

    .line 105
    const v1, 0x7f0c0212

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_0
    return-object v0

    .line 75
    :cond_1
    const v1, 0x7f070087

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 120
    const-string/jumbo v0, "business_category_suggest_request_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->d:Lcom/yelp/android/appdata/webrequests/v;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 114
    const-string/jumbo v0, "business_category_suggest_request_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->d:Lcom/yelp/android/appdata/webrequests/v;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->h:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/v;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->d:Lcom/yelp/android/appdata/webrequests/v;

    .line 115
    return-void
.end method
