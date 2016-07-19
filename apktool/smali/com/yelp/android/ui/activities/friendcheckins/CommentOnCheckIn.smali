.class public Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "CommentOnCheckIn.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
.implements Lcom/yelp/android/ui/widgets/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/am$a;",
        ">;",
        "Lcom/yelp/android/ui/widgets/c;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/serializable/YelpCheckIn;

.field protected b:Ljava/lang/Runnable;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/yelp/android/ui/activities/friendcheckins/b;

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

.field private final s:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 140
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$1;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    .line 420
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$2;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->s:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 629
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
    const-string/jumbo v1, "extra.check_in"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "keyboard"

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
    const-string/jumbo v1, "keyboard"

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
    const-string/jumbo v0, "extra.check_in"

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
    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 437
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 438
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 439
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 443
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 444
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 445
    return-void
.end method


# virtual methods
.method protected a()Lcom/yelp/android/serializable/Comment;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 220
    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    .line 223
    :cond_1
    return-object v0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friendcheckins/b;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/am$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/am$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 321
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/am$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/am$a;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/am$a;->c:Lcom/yelp/android/serializable/YelpCheckIn;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/am$a;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, v0, v1, v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/YelpBusiness;Landroid/view/View;)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    :cond_1
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/am$a;->c:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/am$a;->c:Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/am$a;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/ExternalCheckIn;->a(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 333
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.check_in"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 334
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->setResult(ILandroid/content/Intent;)V

    .line 337
    :cond_2
    new-instance v4, Ljava/util/LinkedList;

    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/am$a;->a:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Comment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 345
    const v0, 0x7f0f01ef

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    const/4 v0, 0x1

    .line 348
    instance-of v1, p1, Lcom/yelp/android/appdata/webrequests/am$c;

    if-eqz v1, :cond_8

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/b;->a(Landroid/content/Context;)V

    .line 354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/b;->getCount()I

    move-result v1

    .line 356
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_b

    .line 357
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->b()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 362
    add-int v0, v1, v3

    .line 366
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/friendcheckins/b;->a(Ljava/util/Collection;)V

    .line 367
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friendcheckins/b;->notifyDataSetChanged()V

    .line 368
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    sget v3, Lcom/yelp/android/appdata/n;->e:I

    invoke-virtual {v1, v0, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 369
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e()V

    move v6, v2

    .line 374
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "keyboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d()V

    .line 376
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "keyboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->u()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/friendcheckins/b;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->a(I)V

    .line 379
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->h:Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->i:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 381
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->h()V

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/b;->getCount()I

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 386
    add-int/lit8 v0, v0, 0x1

    .line 388
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->u()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    :cond_6
    :goto_3
    return-void

    .line 356
    :cond_7
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_0

    .line 370
    :cond_8
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 371
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/friendcheckins/b;->a(Ljava/util/Collection;)V

    .line 372
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friendcheckins/b;->notifyDataSetChanged()V

    :cond_9
    move v6, v0

    goto/16 :goto_2

    .line 393
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

    .line 456
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    aput-object p3, v0, v8

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    aput-object v1, v0, v11

    move-object v6, v0

    .line 457
    :goto_0
    array-length v9, v6

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_1

    aget-object v10, v6, v7

    .line 458
    const v0, 0x7f0f025a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 459
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 460
    const v0, 0x7f0f0472

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 461
    const v1, 0x7f070669

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/util/StringUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const v0, 0x7f0f00d4

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 467
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const v0, 0x7f0f046e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->g:Landroid/widget/TextView;

    .line 470
    const v0, 0x7f0f0474

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->i:Landroid/widget/ImageView;

    .line 471
    const v0, 0x7f0f0475

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->h:Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    .line 473
    const v0, 0x7f0f03cb

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 474
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v3

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 482
    const v0, 0x7f0f0360

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 483
    sget-object v0, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->e()Ljava/util/Date;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->h:Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->i:Landroid/widget/ImageView;

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 487
    const v0, 0x7f0f03de

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    .line 489
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->setChecked(Z)V

    .line 490
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/c;)V

    .line 491
    const v0, 0x7f0f0470

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$3;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$3;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    .line 456
    :cond_0
    new-array v0, v11, [Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    aput-object v1, v0, v8

    move-object v6, v0

    goto/16 :goto_0

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    const v1, 0x7f0f046f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d:Landroid/widget/TextView;

    .line 505
    iput-object p2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 506
    return-void
.end method

.method public a(Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-virtual {p5}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    invoke-virtual {p5}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a(ZLjava/util/List;I)V

    .line 518
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$4;-><init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    invoke-virtual {p5}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p5}, Lcom/yelp/android/serializable/YelpCheckIn;->A()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 539
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 552
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->j:Landroid/view/View;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 553
    return-void

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->q:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->a(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V

    .line 264
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/am;->a(Z)V

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/am;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->q:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;->a()V

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 591
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInCommentThread:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 2
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
    .line 611
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.check_in"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 613
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v0

    .line 618
    :goto_0
    const-string/jumbo v1, "check_in_id"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 616
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
    .line 282
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c()V

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v0

    .line 285
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    .line 287
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 288
    const-string/jumbo v3, "business_id"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpCheckIn;->k()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v3, "check_in_id"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string/jumbo v3, "is_positive"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v3, "source"

    const-string/jumbo v4, "check_in_comments"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->CheckInFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v3, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 294
    new-instance v2, Lcom/yelp/android/appdata/webrequests/ek;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->s:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v2, v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/ek;-><init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 297
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/yelp/android/appdata/webrequests/ek;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    .line 300
    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 302
    new-instance v0, Lcom/yelp/android/serializable/CheckInFeedback;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/CheckInFeedback;-><init>(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/User;)V

    .line 304
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.check_in"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 313
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->setResult(ILandroid/content/Intent;)V

    .line 314
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->h:Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->i:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 316
    return-void

    .line 306
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    invoke-static {v0}, Lcom/yelp/android/serializable/User;->a(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CheckInFeedback;

    .line 308
    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 568
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 569
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/am;->a(Landroid/os/AsyncTask$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/am;->a(Z)V

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 582
    new-instance v1, Lcom/yelp/android/appdata/webrequests/am$c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a()Lcom/yelp/android/serializable/Comment;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/yelp/android/appdata/webrequests/am$c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/Comment;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    .line 585
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/am;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 586
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->o:Lcom/yelp/android/appdata/webrequests/am;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0f01ef

    const/4 v4, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->setContentView(I)V

    .line 161
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->q:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn$ConnectivityReceiver;

    .line 162
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->p:Landroid/net/ConnectivityManager;

    .line 163
    const v0, 0x7f0f012b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    const v0, 0x7f0f04cd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f0f04ce

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->j:Landroid/view/View;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->m:Ljava/util/List;

    .line 168
    new-instance v0, Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friendcheckins/b;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    .line 169
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.check_in"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014f

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->r:Landroid/view/View;

    const-string/jumbo v2, "HEADER"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->y()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    .line 176
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f01f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 177
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/YelpBusiness;Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 195
    const-string/jumbo v0, "We tried to load a comment thread without knowing which check-in"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->finish()V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "keyboard"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 207
    :cond_2
    return-void

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    goto :goto_0

    .line 186
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "check_in_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->l:Landroid/net/Uri;

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->l:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 543
    if-nez p2, :cond_0

    .line 544
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->onClick(Landroid/view/View;)V

    .line 545
    const/4 v0, 0x1

    .line 547
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

    .line 399
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->h()V

    .line 400
    const/4 v2, 0x1

    .line 401
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/am$c;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 406
    :cond_0
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v3, 0x400

    if-ne v0, v3, :cond_2

    .line 409
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 410
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->finish()V

    move v0, v1

    .line 414
    :goto_0
    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 418
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 563
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

    .line 564
    return-void

    .line 563
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
    .line 596
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 597
    instance-of v1, v0, Lcom/yelp/android/serializable/Comment;

    if-eqz v1, :cond_2

    .line 598
    check-cast v0, Lcom/yelp/android/serializable/Comment;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Comment;->b()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->y()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->startActivity(Landroid/content/Intent;)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 604
    :cond_2
    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 605
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c()V

    .line 255
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/b;->a(Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 241
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->l:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->Checkin:Lcom/yelp/android/services/push/Notifier$NotificationType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->l:Landroid/net/Uri;

    invoke-static {v1}, Lcom/yelp/android/services/push/CheckInPushNotificationHandler$CheckInType;->getNotificationIdFromUri(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/Integer;)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b()V

    .line 249
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->e:Lcom/yelp/android/ui/activities/friendcheckins/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/b;->b(Landroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p2, Lcom/yelp/android/appdata/webrequests/am$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/am$a;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 559
    return-void
.end method
