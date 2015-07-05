.class public Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "CommentOnCheckIn.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/widgets/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/an;",
        ">;",
        "Lcom/yelp/android/ui/widgets/j;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/serializable/YelpCheckIn;

.field protected b:Ljava/lang/Runnable;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/yelp/android/ui/activities/friendcheckins/c;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/String;

.field private l:Landroid/net/Uri;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/CheckInFeedback;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/yelp/android/serializable/YelpBusiness;

.field private o:Lcom/yelp/android/appdata/webrequests/am;

.field private p:Landroid/net/ConnectivityManager;

.field private q:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;

.field private r:Landroid/view/View;

.field private final s:Lcom/yelp/android/av/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 140
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/e;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    .line 412
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/f;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->s:Lcom/yelp/android/av/i;

    .line 609
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string/jumbo v1, "czech in?"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "boarding?"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;ZLandroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 113
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 115
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const-string/jumbo v1, "check_in_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string/jumbo v1, "boarding?"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->p:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;Lcom/yelp/android/appdata/webrequests/am;)Lcom/yelp/android/appdata/webrequests/am;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    return-object p1
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "czech in?"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Lcom/yelp/android/appdata/webrequests/am;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Ljava/util/List;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 429
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 430
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 431
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 435
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 436
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 437
    return-void
.end method


# virtual methods
.method protected a()Lcom/yelp/android/serializable/Comment;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    .line 219
    :cond_1
    return-object v0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friendcheckins/c;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/an;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/an;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 315
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/an;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/an;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/an;->c:Lcom/yelp/android/serializable/YelpCheckIn;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/an;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, v0, v1, v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/YelpBusiness;Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    :cond_1
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/an;->c:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/an;->c:Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/an;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/ExternalCheckIn;->updateCheckIn(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 327
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "czech in?"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 328
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->setResult(ILandroid/content/Intent;)V

    .line 331
    :cond_2
    new-instance v4, Ljava/util/LinkedList;

    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/an;->a:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Comment;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 338
    const v0, 0x7f0c01bf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    const/4 v0, 0x1

    .line 341
    instance-of v1, p1, Lcom/yelp/android/appdata/webrequests/ap;

    if-eqz v1, :cond_8

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/c;->a(Landroid/content/Context;)V

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/c;->getCount()I

    move-result v1

    .line 349
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_b

    .line 350
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    .line 351
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 355
    add-int v0, v1, v3

    .line 359
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/friendcheckins/c;->a(Ljava/util/Collection;)V

    .line 360
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friendcheckins/c;->notifyDataSetChanged()V

    .line 361
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    sget v3, Lcom/yelp/android/appdata/ao;->e:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 362
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e()V

    move v6, v2

    .line 367
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "boarding?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d()V

    .line 369
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "boarding?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getCommentsCount()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/friendcheckins/c;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->updateCommentCount(I)V

    .line 372
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->h:Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->i:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 374
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/c;->getCount()I

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 379
    add-int/lit8 v0, v0, 0x1

    .line 381
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getCommentsCount()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->isCommentable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    :cond_6
    :goto_3
    return-void

    .line 349
    :cond_7
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_0

    .line 363
    :cond_8
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 364
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/friendcheckins/c;->a(Ljava/util/Collection;)V

    .line 365
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friendcheckins/c;->notifyDataSetChanged()V

    :cond_9
    move v6, v0

    goto/16 :goto_2

    .line 386
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method

.method a(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/YelpBusiness;Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 448
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    aput-object p3, v0, v8

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    aput-object v1, v0, v11

    move-object v6, v0

    .line 453
    :goto_0
    array-length v9, v6

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v10, v6, v7

    .line 454
    const v0, 0x7f0c0246

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 455
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009b

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 456
    const v0, 0x7f0c0396

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 457
    const v1, 0x7f070688

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/util/StringUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    const v0, 0x7f0c009c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 461
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    const v0, 0x7f0c0391

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->g:Landroid/widget/TextView;

    .line 464
    const v0, 0x7f0c0398

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->i:Landroid/widget/ImageView;

    .line 465
    const v0, 0x7f0c0399

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->h:Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    .line 467
    const v0, 0x7f0c032d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 468
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0022

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v3

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/TextView;F)V

    .line 472
    const v0, 0x7f0c02eb

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 473
    sget-object v0, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getDateCreated()Ljava/util/Date;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->h:Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->i:Landroid/widget/ImageView;

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 477
    const v0, 0x7f0c0339

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    .line 479
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->setChecked(Z)V

    .line 480
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 481
    const v0, 0x7f0c0394

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/friendcheckins/g;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/activities/friendcheckins/g;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    .line 448
    :cond_0
    new-array v0, v11, [Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    aput-object v1, v0, v8

    move-object v6, v0

    goto/16 :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    const v1, 0x7f0c0392

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d:Landroid/widget/TextView;

    .line 491
    iput-object p2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 492
    return-void
.end method

.method public a(Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 496
    invoke-virtual {p5}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    invoke-virtual {p5}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a(ZLjava/util/List;I)V

    .line 498
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/h;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    invoke-virtual {p5}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p5}, Lcom/yelp/android/serializable/YelpCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 529
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->j:Landroid/view/View;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 530
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->q:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->a(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V

    .line 258
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/am;->is(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/am;->cancel(Z)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/am;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->q:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->a()V

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 571
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInCommentThread:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
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
    .line 591
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "czech in?"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 593
    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v0

    .line 598
    :goto_0
    const-string/jumbo v1, "check_in_id"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CheckableView:",
            "Landroid/view/View;",
            ":",
            "Landroid/widget/Checkable;",
            ">(TCheckableView;)V"
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c()V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v0

    .line 279
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 281
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 282
    const-string/jumbo v3, "business_id"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusinessId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v3, "check_in_id"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v3, "is_positive"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v3, "source"

    const-string/jumbo v4, "check_in_comments"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->CheckInFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v3, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 288
    new-instance v2, Lcom/yelp/android/appdata/webrequests/fo;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->s:Lcom/yelp/android/av/i;

    invoke-direct {v2, v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/fo;-><init>(Ljava/lang/String;ZLcom/yelp/android/av/i;)V

    .line 291
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/fo;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    .line 294
    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 296
    new-instance v0, Lcom/yelp/android/serializable/CheckInFeedback;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/CheckInFeedback;-><init>(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/User;)V

    .line 298
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "czech in?"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->setResult(ILandroid/content/Intent;)V

    .line 308
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->h:Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->i:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 310
    return-void

    .line 300
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/yelp/android/serializable/User;->getCurrentUserInCollection(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CheckInFeedback;

    .line 302
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 550
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/am;->is(Landroid/os/AsyncTask$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/am;->cancel(Z)V

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 563
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ap;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a()Lcom/yelp/android/serializable/Comment;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/yelp/android/appdata/webrequests/ap;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/Comment;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/am;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 566
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0c01bf

    const/4 v4, 0x0

    .line 157
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 158
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->setContentView(I)V

    .line 159
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->q:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;

    .line 160
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->p:Landroid/net/ConnectivityManager;

    .line 161
    const v0, 0x7f0c00df

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    const v0, 0x7f0c03ea

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0c03eb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->j:Landroid/view/View;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friendcheckins/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "czech in?"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    const-string/jumbo v2, "HEADER"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c01c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 175
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/YelpBusiness;Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 193
    const-string/jumbo v0, "We tried to load a comment thread without knowing which check-in"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->finish()V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "boarding?"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 205
    :cond_2
    return-void

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "check_in_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->l:Landroid/net/Uri;

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->l:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 520
    if-nez p2, :cond_0

    .line 521
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->onClick(Landroid/view/View;)V

    .line 522
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 393
    const/4 v2, 0x1

    .line 394
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ap;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 399
    :cond_0
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v3, 0x400

    if-ne v0, v3, :cond_2

    .line 401
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 402
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->finish()V

    move v0, v1

    .line 406
    :goto_0
    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 544
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 545
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/yelp/android/serializable/Comment;

    if-eqz v1, :cond_2

    .line 578
    check-cast v0, Lcom/yelp/android/serializable/Comment;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->startActivity(Landroid/content/Intent;)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 584
    :cond_2
    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 585
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c()V

    .line 249
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/c;->a(Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->l:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Checkin:Lcom/yelp/android/services/push/Notifier$NotificationType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->l:Landroid/net/Uri;

    invoke-static {v1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getNotificationIdFromUri(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/Integer;)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b()V

    .line 243
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/c;->b(Landroid/os/Bundle;)V

    .line 233
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p2, Lcom/yelp/android/appdata/webrequests/an;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/an;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 540
    return-void
.end method
