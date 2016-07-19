.class public Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ReportABugFragment.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/view/View;

.field private d:Lcom/yelp/android/appdata/webrequests/dl;

.field private e:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private f:Landroid/text/TextWatcher;

.field private g:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 165
    new-instance v0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$1;-><init>(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->e:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 186
    new-instance v0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$2;-><init>(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->f:Landroid/text/TextWatcher;

    .line 204
    new-instance v0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment$3;-><init>(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->g:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static a()Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->y()V

    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->H_()V

    .line 139
    new-instance v1, Lcom/yelp/android/appdata/webrequests/dl;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->e:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/dl;-><init>(Lcom/yelp/android/ui/activities/support/YelpActivity;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->d:Lcom/yelp/android/appdata/webrequests/dl;

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->d:Lcom/yelp/android/appdata/webrequests/dl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dl;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 146
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BugReportSent:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 149
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->y()V

    .line 150
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->y()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->y()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BugReport:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->setHasOptionsMenu(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "bug_reported_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f10001d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 69
    const v1, 0x7f0301db

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    const v0, 0x7f0f057d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->b:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->f:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    const v0, 0x7f0f0112

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->a:Landroid/widget/EditText;

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->f:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    const v0, 0x7f0f057c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->c:Landroid/view/View;

    .line 75
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 128
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->b()V

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0614
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 100
    const-string/jumbo v0, "report_a_bug_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->d:Lcom/yelp/android/appdata/webrequests/dl;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 101
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->d:Lcom/yelp/android/appdata/webrequests/dl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->d:Lcom/yelp/android/appdata/webrequests/dl;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dl;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 121
    :goto_0
    const v1, 0x7f0f0614

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 122
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 80
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 82
    const-string/jumbo v0, "report_a_bug_request"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->e:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dl;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->d:Lcom/yelp/android/appdata/webrequests/dl;

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->d:Lcom/yelp/android/appdata/webrequests/dl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->d:Lcom/yelp/android/appdata/webrequests/dl;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dl;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->H_()V

    .line 87
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bugreport/ReportABugFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
