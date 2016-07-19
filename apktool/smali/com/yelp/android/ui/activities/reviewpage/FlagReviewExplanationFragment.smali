.class public Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "FlagReviewExplanationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/yelp/android/serializable/YelpBusinessReview;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/yelp/android/appdata/webrequests/dv;

.field private f:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$a;

.field private final g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 128
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;)Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->f:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$a;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string/jumbo v2, "flag_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    const-string/jumbo v2, "review"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dv;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dv;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/yelp/android/appdata/webrequests/dv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->e:Lcom/yelp/android/appdata/webrequests/dv;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dv;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 59
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->f:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The attached activity must implement the FlagDialogShower interface!"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "flag_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;

    .line 76
    iget v1, v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->hintResourceId:I

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->a:Ljava/lang/String;

    .line 77
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewReasonsFragment$FlagType;->requestParam:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->b:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "review"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->c:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->setHasOptionsMenu(Z)V

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 97
    const v0, 0x7f100012

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 86
    const v0, 0x7f0300cd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    const v0, 0x7f0f031e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->d:Landroid/widget/EditText;

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 91
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDetach()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->f:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$a;

    .line 70
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f060c

    if-ne v1, v2, :cond_1

    .line 103
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const v1, 0x7f0704f5

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 116
    :goto_0
    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->c:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->FlagReview:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment;->f:Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviewpage/FlagReviewExplanationFragment$a;->a()V

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
