.class public Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityWeeklyIssue.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/hf;

.field private b:Lcom/yelp/android/appdata/webrequests/he;

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

.field private d:Lcom/yelp/android/ui/dialogs/bn;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/yelp/android/serializable/WeeklyIssue;

.field private i:Lcom/yelp/android/serializable/YelpBusiness;

.field private j:Landroid/graphics/Rect;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Landroid/widget/AbsListView$OnScrollListener;

.field private o:Landroid/widget/AdapterView$OnItemClickListener;

.field private p:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/WeeklyIssueResponse;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/serializable/WeeklyIssueResponse;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/view/View$OnClickListener;

.field private s:Lcom/yelp/android/av/i;

.field private t:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 243
    new-instance v0, Lcom/yelp/android/ui/activities/weekly/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/weekly/a;-><init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->n:Landroid/widget/AbsListView$OnScrollListener;

    .line 263
    new-instance v0, Lcom/yelp/android/ui/activities/weekly/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/weekly/b;-><init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->o:Landroid/widget/AdapterView$OnItemClickListener;

    .line 279
    new-instance v0, Lcom/yelp/android/ui/activities/weekly/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/weekly/c;-><init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->p:Lcom/yelp/android/appdata/webrequests/m;

    .line 293
    new-instance v0, Lcom/yelp/android/ui/activities/weekly/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/weekly/d;-><init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->q:Lcom/yelp/android/appdata/webrequests/j;

    .line 323
    new-instance v0, Lcom/yelp/android/ui/activities/weekly/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/weekly/e;-><init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->r:Landroid/view/View$OnClickListener;

    .line 366
    new-instance v0, Lcom/yelp/android/ui/activities/weekly/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/weekly/f;-><init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->s:Lcom/yelp/android/av/i;

    .line 381
    new-instance v0, Lcom/yelp/android/ui/activities/weekly/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/weekly/g;-><init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->t:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->l:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string/jumbo v1, "extra.market_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i:Lcom/yelp/android/serializable/YelpBusiness;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->d:Lcom/yelp/android/ui/dialogs/bn;

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Lcom/yelp/android/ui/dialogs/bn;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/bn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->d:Lcom/yelp/android/ui/dialogs/bn;

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->d:Lcom/yelp/android/ui/dialogs/bn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;->setCancelable(Z)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->d:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bn;->setMessage(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->d:Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->show()V

    .line 405
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 315
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/WeeklyIssueResponse;)V
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/yelp/android/serializable/WeeklyIssueResponse;->getWeeklyIssue()Lcom/yelp/android/serializable/WeeklyIssue;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Z)V

    .line 320
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->disableLoading()V

    .line 321
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Lcom/yelp/android/appdata/webrequests/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->t:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/d;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/m;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/d;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 358
    const v0, 0x7f0700a1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(I)V

    .line 359
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/serializable/WeeklyIssueResponse;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/serializable/WeeklyIssueResponse;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/WeeklyIssue;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->f:Landroid/view/View;

    const v1, 0x7f0c04d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/WeeklyIssue;->getHeadlinePhotoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->f:Landroid/view/View;

    const v1, 0x7f0c04d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/WeeklyIssue;->getPublishDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->f:Landroid/view/View;

    const v1, 0x7f0c04d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/WeeklyIssue;->getMarketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->f:Landroid/view/View;

    const v1, 0x7f0c04d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 209
    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/WeeklyIssue;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->f:Landroid/view/View;

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->g:Landroid/widget/ImageView;

    .line 212
    invoke-static {p0}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/WeeklyIssue;->getHeadlinePhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 216
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/WeeklyIssue;->getBusinesses()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    const/4 v1, 0x7

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

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DIVIDER:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->o:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->j:Landroid/graphics/Rect;

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e:Landroid/widget/ListView;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->n:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 238
    :cond_0
    if-nez p1, :cond_1

    .line 239
    invoke-static {p0, p0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z

    .line 241
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->m:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 410
    return-void
.end method

.method private b(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 362
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eg;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->s:Lcom/yelp/android/av/i;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/eg;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/av/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eg;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 363
    const v0, 0x7f0704ec

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(I)V

    .line 364
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->l:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->c:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->m:I

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/ui/dialogs/bn;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->d:Lcom/yelp/android/ui/dialogs/bn;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 2

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    if-eqz v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/WeeklyIssue;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 185
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->WeeklyUnavailable:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Weekly:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

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
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-string/jumbo v1, "market_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 165
    packed-switch p1, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 167
    :pswitch_0
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 172
    :pswitch_1
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->setContentView(I)V

    .line 102
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e:Landroid/widget/ListView;

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->createErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 104
    const v1, 0x7f07036c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setText(I)V

    .line 105
    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03018e

    iget-object v2, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->f:Landroid/view/View;

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.market_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->k:Ljava/lang/String;

    .line 111
    if-eqz p1, :cond_0

    .line 112
    const-string/jumbo v0, "weekly_issue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/WeeklyIssue;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    .line 113
    const-string/jumbo v0, "business_to_bookmark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i:Lcom/yelp/android/serializable/YelpBusiness;

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 156
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 158
    const-string/jumbo v0, "request_weekly_issue"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a:Lcom/yelp/android/appdata/webrequests/hf;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 159
    const-string/jumbo v0, "request_weekly_issue_from_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b:Lcom/yelp/android/appdata/webrequests/he;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->disableLoading()V

    .line 161
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->k:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 128
    const-string/jumbo v0, "request_weekly_issue_from_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->q:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/he;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b:Lcom/yelp/android/appdata/webrequests/he;

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b:Lcom/yelp/android/appdata/webrequests/he;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/yelp/android/appdata/webrequests/he;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->q:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/he;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b:Lcom/yelp/android/appdata/webrequests/he;

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b:Lcom/yelp/android/appdata/webrequests/he;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/he;->executeWithLocation([Ljava/lang/Object;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b:Lcom/yelp/android/appdata/webrequests/he;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    const-string/jumbo v0, "request_weekly_issue"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->p:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/hf;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a:Lcom/yelp/android/appdata/webrequests/hf;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a:Lcom/yelp/android/appdata/webrequests/hf;

    if-nez v0, :cond_3

    .line 139
    new-instance v0, Lcom/yelp/android/appdata/webrequests/hf;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->p:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/hf;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a:Lcom/yelp/android/appdata/webrequests/hf;

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a:Lcom/yelp/android/appdata/webrequests/hf;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/hf;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a:Lcom/yelp/android/appdata/webrequests/hf;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, "weekly_issue"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h:Lcom/yelp/android/serializable/WeeklyIssue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    const-string/jumbo v0, "business_to_bookmark"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->i:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method
