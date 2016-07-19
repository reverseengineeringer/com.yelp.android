.class public Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMessageTheBusinessBulkCompose.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/appdata/webrequests/messaging/k;

.field private d:Lcom/yelp/android/appdata/webrequests/messaging/j;

.field private e:Z

.field private final f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->b:Ljava/util/Set;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->e:Z

    .line 197
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$1;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 213
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$2;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 241
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$3;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->h:Landroid/text/TextWatcher;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "recipient_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c:Lcom/yelp/android/appdata/webrequests/messaging/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c:Lcom/yelp/android/appdata/webrequests/messaging/k;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/k;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->enableLoading()V

    .line 168
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/k;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c:Lcom/yelp/android/appdata/webrequests/messaging/k;

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c:Lcom/yelp/android/appdata/webrequests/messaging/k;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/k;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->e:Z

    return p1
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    const v0, 0x7f0f037e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const v0, 0x7f07031e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->d:Lcom/yelp/android/appdata/webrequests/messaging/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->d:Lcom/yelp/android/appdata/webrequests/messaging/j;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/j;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->enableLoading()V

    .line 190
    const v0, 0x7f0f037e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/j;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->b:Ljava/util/Set;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "business_id"

    iget-object v5, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/messaging/j;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->d:Lcom/yelp/android/appdata/webrequests/messaging/j;

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->d:Lcom/yelp/android/appdata/webrequests/messaging/j;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/j;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x418

    if-ne p1, v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c()V

    .line 106
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->b:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "recipient_ids"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->a()V

    .line 78
    const v0, 0x7f0300f5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->setContentView(I)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string/jumbo v0, "is_first_message_change"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->e:Z

    .line 84
    :cond_0
    const v0, 0x7f0701fb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->setTitle(I)V

    .line 85
    const v0, 0x7f0f0379

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    const v1, 0x7f080024

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v0, 0x7f0f037e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->h:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 130
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100024

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 154
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 138
    :sswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    const v1, 0x7f070395

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x418

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 145
    :cond_0
    :goto_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessTapSend:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "source"

    const-string/jumbo v3, "unclaimed_widget"

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c()V

    goto :goto_1

    .line 151
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->finish()V

    goto :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0f0607 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 123
    const-string/jumbo v0, "info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c:Lcom/yelp/android/appdata/webrequests/messaging/k;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 124
    const-string/jumbo v0, "send_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->d:Lcom/yelp/android/appdata/webrequests/messaging/j;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 111
    const-string/jumbo v0, "info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c:Lcom/yelp/android/appdata/webrequests/messaging/k;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/messaging/k;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c:Lcom/yelp/android/appdata/webrequests/messaging/k;

    .line 112
    const-string/jumbo v0, "send_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->d:Lcom/yelp/android/appdata/webrequests/messaging/j;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/messaging/j;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->d:Lcom/yelp/android/appdata/webrequests/messaging/j;

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c:Lcom/yelp/android/appdata/webrequests/messaging/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->c:Lcom/yelp/android/appdata/webrequests/messaging/k;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/k;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->d:Lcom/yelp/android/appdata/webrequests/messaging/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->d:Lcom/yelp/android/appdata/webrequests/messaging/j;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/j;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->enableLoading()V

    .line 118
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    const-string/jumbo v0, "is_first_message_change"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method
