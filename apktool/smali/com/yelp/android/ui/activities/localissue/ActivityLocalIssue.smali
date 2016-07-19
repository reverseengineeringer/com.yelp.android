.class public Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityLocalIssue.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;

.field private b:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

.field private c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/yelp/android/serializable/LocalIssue;

.field private h:Lcom/yelp/android/serializable/YelpBusiness;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Lcom/yelp/android/util/c;

.field private l:Lcom/yelp/android/ui/util/t;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;

.field private n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/LocalIssueResponse;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/serializable/LocalIssueResponse;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/view/View$OnClickListener;

.field private q:Lcom/yelp/android/util/c$a;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 356
    new-instance v0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$2;-><init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->m:Landroid/widget/AdapterView$OnItemClickListener;

    .line 374
    new-instance v0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$3;-><init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 388
    new-instance v0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$4;-><init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->o:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 420
    new-instance v0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;-><init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->p:Landroid/view/View$OnClickListener;

    .line 441
    new-instance v0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$6;-><init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->q:Lcom/yelp/android/util/c$a;

    .line 451
    new-instance v0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$7;-><init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;I)I
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->j:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/LocalIssue;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 114
    invoke-static {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "extra.local_issue"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    const-string/jumbo v1, "market_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/LocalIssueSponsor;)Landroid/view/View;
    .locals 4

    .prologue
    .line 312
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ee

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 316
    const v0, 0x7f0f036a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalIssueSponsor;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const v0, 0x7f0f036b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 319
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalIssueSponsor;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    :goto_0
    const v0, 0x7f0f001f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalIssueSponsor;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->l:Lcom/yelp/android/ui/util/t;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalIssueSponsor;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    const v0, 0x7f0f0113

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 332
    const v0, 0x7f0f0369

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$1;-><init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    return-object v1

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalIssueSponsor;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/serializable/LocalIssue;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->h:Lcom/yelp/android/serializable/YelpBusiness;

    return-object p1
.end method

.method private a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    const-string/jumbo v1, "market_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v1, "issue_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/LocalIssue;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-object v0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 411
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/LocalIssueResponse;)V
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalIssueResponse;->a()Lcom/yelp/android/serializable/LocalIssue;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->i:Ljava/lang/String;

    .line 416
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Z)V

    .line 417
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->disableLoading()V

    .line 418
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;Lcom/yelp/android/serializable/LocalIssueResponse;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/serializable/LocalIssueResponse;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->e:Landroid/view/View;

    const v1, 0x7f0f00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalIssue;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->e:Landroid/view/View;

    const v1, 0x7f0f0366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalIssue;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->e:Landroid/view/View;

    const v1, 0x7f0f0367

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalIssue;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->e:Landroid/view/View;

    const v1, 0x7f0f0368

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalIssue;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->e:Landroid/view/View;

    const v1, 0x7f0f0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->f:Landroid/widget/ImageView;

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->l:Lcom/yelp/android/ui/util/t;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalIssue;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 275
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalIssue;->k()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK_BUTTON:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->REVIEW_EXCERPT:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DIVIDER:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->m:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->b(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->i()Lcom/yelp/android/serializable/LocalIssueSponsor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalIssue;->i()Lcom/yelp/android/serializable/LocalIssueSponsor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/serializable/LocalIssueSponsor;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "FOOTER"

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 294
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->LocalIssueSponsor:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    :cond_1
    if-eqz p1, :cond_2

    .line 307
    invoke-static {p0, p0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 309
    :cond_2
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string/jumbo v1, "issue_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->j:I

    return v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->h:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/util/c;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->k:Lcom/yelp/android/util/c;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    if-eqz v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->LocalIssueUnavailable:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 243
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->LocalIssue:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->k:Lcom/yelp/android/util/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yelp/android/util/c;->a(IILcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->h:Lcom/yelp/android/serializable/YelpBusiness;

    .line 233
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->setContentView(I)V

    .line 123
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->l:Lcom/yelp/android/ui/util/t;

    .line 125
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    .line 126
    new-instance v0, Lcom/yelp/android/ui/widgets/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    const v2, 0x7f0300ed

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/widgets/e;-><init>(Landroid/widget/ListView;I)V

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/e;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->e:Landroid/view/View;

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->createErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 128
    const v1, 0x7f0703a6

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setText(I)V

    .line 129
    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.local_issue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalIssue;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->i:Ljava/lang/String;

    .line 137
    if-eqz p1, :cond_0

    .line 138
    const-string/jumbo v0, "local_issue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalIssue;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    .line 139
    const-string/jumbo v0, "business_to_bookmark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->h:Lcom/yelp/android/serializable/YelpBusiness;

    .line 142
    :cond_0
    new-instance v0, Lcom/yelp/android/util/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->q:Lcom/yelp/android/util/c$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/util/c;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/yelp/android/util/c$a;Lcom/yelp/android/serializable/YelpBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->k:Lcom/yelp/android/util/c;

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Z)V

    .line 147
    :cond_1
    return-void

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "market_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 152
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/yelp/android/services/LocalIssueShareFormatter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-direct {v0, v1}, Lcom/yelp/android/services/LocalIssueShareFormatter;-><init>(Lcom/yelp/android/serializable/LocalIssue;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->showShareSheet(Lcom/yelp/android/services/ShareFormatter;)V

    .line 220
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LocalIssueOpenShareSheet:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 221
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f05fa
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 207
    const-string/jumbo v0, "request_local_issue"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 208
    const-string/jumbo v0, "request_local_issue_from_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->b:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 209
    const-string/jumbo v0, "request_add_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->k:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->a()Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 210
    const-string/jumbo v0, "request_remove_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->k:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->b()Lcom/yelp/android/appdata/webrequests/dk;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->disableLoading()V

    .line 212
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 158
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 159
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "issue_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    if-nez v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    .line 165
    :cond_0
    const-string/jumbo v0, "request_local_issue"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v4, v2}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;

    if-nez v0, :cond_2

    .line 167
    new-instance v2, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;->MARKET_ID:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;

    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->i:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->i:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v2, v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;-><init>(Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 191
    :cond_3
    :goto_1
    const-string/jumbo v0, "request_remove_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->k:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->d()Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 193
    const-string/jumbo v0, "request_add_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->k:Lcom/yelp/android/util/c;

    invoke-virtual {v1}, Lcom/yelp/android/util/c;->c()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 194
    return-void

    .line 167
    :cond_4
    sget-object v0, Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;->ISSUE_ID:Lcom/yelp/android/appdata/webrequests/LocalIssueRequest$IdType;

    goto :goto_0

    .line 176
    :cond_5
    const-string/jumbo v0, "request_local_issue_from_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->o:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v4, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->b:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->b:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    if-nez v0, :cond_6

    .line 182
    new-instance v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->MENU:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->o:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;-><init>(Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->b:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->b:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;->a([Ljava/lang/Object;)V

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->b:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    const-string/jumbo v0, "local_issue"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g:Lcom/yelp/android/serializable/LocalIssue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 200
    const-string/jumbo v0, "business_to_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 201
    return-void
.end method
