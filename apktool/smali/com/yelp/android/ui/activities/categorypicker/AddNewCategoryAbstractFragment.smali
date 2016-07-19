.class public abstract Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;
.super Lcom/yelp/android/ui/activities/support/YelpApiFragment;
.source "AddNewCategoryAbstractFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ApiResult::",
        "Lcom/yelp/android/serializable/CategorySuggestion;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpApiFragment;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$a",
            "<TApiResult;>;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/activities/categorypicker/b$a;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<TApiResult;>;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<TApiResult;>;>;"
        }
    .end annotation
.end field

.field private final i:Landroid/text/TextWatcher;

.field private final j:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpApiFragment;-><init>()V

    .line 144
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;-><init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 162
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;-><init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->i:Landroid/text/TextWatcher;

    .line 194
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$3;-><init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->j:Landroid/view/View$OnTouchListener;

    .line 206
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object p1
.end method

.method protected static a(ZLjava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    :cond_0
    const-string/jumbo v1, "args_show_header"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string/jumbo v1, "args_country_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/ui/activities/categorypicker/b$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->b:Lcom/yelp/android/ui/activities/categorypicker/b$a;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<TApiResult;>;>;)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<TApiResult;>;>;"
        }
    .end annotation
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TApiResult;>;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$a;->a(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget v0, Lcom/yelp/android/co/a$j;->no_matching_categories:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/b$b;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/categorypicker/b$b;->a()Lcom/yelp/android/ui/activities/categorypicker/b;

    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$a;

    .line 102
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/categorypicker/b;->a()Lcom/yelp/android/ui/activities/categorypicker/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->b:Lcom/yelp/android/ui/activities/categorypicker/b$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement CategoryPickerHelperInterface and the helper must implement AddCategoriesSuggestListener."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_country_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    sget v1, Lcom/yelp/android/co/a$h;->category_picker_add_category_fragment:I

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 80
    sget v1, Lcom/yelp/android/co/a$f;->error:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->f:Landroid/widget/TextView;

    .line 81
    sget v1, Lcom/yelp/android/co/a$f;->search_for_category:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->d:Landroid/widget/EditText;

    .line 82
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->i:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->j:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 85
    sget v1, Lcom/yelp/android/co/a$f;->search_loading_spinner:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->e:Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "args_show_header"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 88
    if-nez v1, :cond_0

    .line 89
    sget v1, Lcom/yelp/android/co/a$f;->header_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_0
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->onPause()V

    .line 119
    const-string/jumbo v0, "business_category_suggest_request_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->onResume()V

    .line 113
    const-string/jumbo v0, "business_category_suggest_request_tag"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 114
    return-void
.end method
