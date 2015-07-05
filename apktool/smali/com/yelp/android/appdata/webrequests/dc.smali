.class public Lcom/yelp/android/appdata/webrequests/dc;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/bc;
.implements Lcom/yelp/android/appdata/p;
.implements Lcom/yelp/android/av/i;


# static fields
.field public static final a:Landroid/content/IntentFilter;

.field public static final b:Landroid/content/IntentFilter;

.field public static final c:Landroid/content/IntentFilter;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/yelp/android/serializable/eq;

.field private f:Lcom/yelp/android/serializable/User;

.field private g:Z

.field private h:Z

.field private final i:Lcom/yelp/android/appdata/i;

.field private final j:Lcom/yelp/android/appdata/n;

.field private final k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/di;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Lcom/yelp/android/appdata/RemoteConfigPreferences;

.field private n:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/yelp/android/appdata/webrequests/ApiRequest;

.field private final p:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/eq;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.yelp.android.intent.new_account_config"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/dc;->a:Landroid/content/IntentFilter;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "user_is_fetched"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/dc;->b:Landroid/content/IntentFilter;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "user_failed_to_fetch"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/dc;->c:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/i;Lcom/yelp/android/appdata/n;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dd;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/dd;-><init>(Lcom/yelp/android/appdata/webrequests/dc;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->p:Lcom/yelp/android/appdata/webrequests/m;

    .line 355
    new-instance v0, Lcom/yelp/android/appdata/webrequests/df;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/df;-><init>(Lcom/yelp/android/appdata/webrequests/dc;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->q:Lcom/yelp/android/appdata/webrequests/m;

    .line 691
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dh;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/dh;-><init>(Lcom/yelp/android/appdata/webrequests/dc;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->r:Lcom/yelp/android/appdata/webrequests/m;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    .line 82
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dc;->i:Lcom/yelp/android/appdata/i;

    .line 83
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/dc;->j:Lcom/yelp/android/appdata/n;

    .line 84
    invoke-virtual {p1}, Lcom/yelp/android/appdata/i;->s()Lcom/yelp/android/serializable/eq;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/i;->a(Lcom/yelp/android/serializable/eq;)V

    .line 88
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/dc;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/yelp/android/appdata/webrequests/dc;->l:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/dc;Lcom/yelp/android/appdata/RemoteConfigPreferences;)Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dc;->m:Lcom/yelp/android/appdata/RemoteConfigPreferences;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->n:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/dc;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dc;->n:Lcom/yelp/android/appdata/webrequests/m;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/dc;Ljava/lang/String;Lcom/yelp/android/serializable/eq;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;Lcom/yelp/android/serializable/eq;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/dc;ZLcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(ZLcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/yelp/android/serializable/eq;)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->i:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/i;->b(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->i:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/i;->a(Lcom/yelp/android/serializable/eq;)V

    .line 347
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 350
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dj;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->j:Lcom/yelp/android/appdata/n;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/n;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/dc;->q:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/yelp/android/appdata/webrequests/dj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 352
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dj;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 353
    return-void
.end method

.method private a(ZLcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->g:Z

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->h:Z

    .line 265
    if-eqz p1, :cond_0

    .line 266
    const-string/jumbo v0, "dyael4"

    invoke-static {v0}, Lcom/adjust/sdk/e;->a(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->f()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/di;

    .line 272
    invoke-interface {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/di;->a(ZLcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/dc;->y()V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 276
    return-void
.end method

.method protected static a(J)Z
    .locals 8

    .prologue
    const-wide/16 v2, 0x14

    const/4 v0, 0x1

    .line 516
    const-wide/16 v4, 0x1

    cmp-long v1, p0, v4

    if-nez v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-wide v4, v2

    .line 521
    :goto_1
    cmp-long v1, v4, p0

    if-gtz v1, :cond_2

    .line 522
    cmp-long v1, v4, p0

    if-eqz v1, :cond_0

    .line 525
    add-long/2addr v4, v2

    .line 526
    const-wide/16 v6, 0x1e

    add-long/2addr v2, v6

    goto :goto_1

    .line 528
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/appdata/webrequests/dc;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->l:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/appdata/webrequests/dc;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/dc;->y()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/appdata/webrequests/dc;)I
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->l:I

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method private y()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 686
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gx;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->r:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v2, v2}, Lcom/yelp/android/appdata/webrequests/gx;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gx;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 689
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    const-string/jumbo v0, "Logged In: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 437
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    .line 438
    const-string/jumbo v0, "\nLoginName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string/jumbo v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string/jumbo v0, "\nConfirmed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->d()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 444
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dc;->b(Landroid/content/Context;)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/yelp/android/appdata/webrequests/dc;->b(Lcom/yelp/android/serializable/User;)V

    .line 200
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_json_string"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->i:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/i;->a(Lcom/yelp/android/serializable/eq;)V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->i:Lcom/yelp/android/appdata/i;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->b(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->i:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->x()V

    .line 208
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->g()V

    .line 209
    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/dc;->d:Ljava/lang/String;

    .line 211
    invoke-static {p1}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;)V

    .line 212
    invoke-static {}, Lcom/yelp/android/appdata/ab;->a()Lcom/yelp/android/appdata/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ab;->h()V

    .line 213
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 656
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/dk;

    if-eqz v0, :cond_0

    .line 657
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UserLogout:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "request_id"

    check-cast p1, Lcom/yelp/android/av/g;

    invoke-virtual {p1}, Lcom/yelp/android/av/g;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()V

    .line 660
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FirstName:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "cleared"

    invoke-static {v0, v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 661
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->ReviewDraftBusinessId:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v1, "cleared"

    invoke-static {v0, v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 663
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/di;)V
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->g:Z

    if-eqz v0, :cond_0

    .line 330
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dc;->n:Lcom/yelp/android/appdata/webrequests/m;

    .line 152
    new-instance v0, Lcom/yelp/android/appdata/webrequests/a;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->p:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/a;-><init>(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 153
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->s()V

    .line 154
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/a;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/eq;)V
    .locals 1

    .prologue
    .line 425
    if-eqz p1, :cond_0

    .line 426
    new-instance v0, Lcom/yelp/android/serializable/eq;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/eq;-><init>(Lcom/yelp/android/serializable/eq;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/di;)V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->g:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->g:Z

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->g()V

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZLcom/yelp/android/appdata/webrequests/di;)V
    .locals 14

    .prologue
    .line 465
    iget-boolean v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->g:Z

    if-eqz v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 469
    :cond_0
    if-eqz p12, :cond_1

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_1
    new-instance v1, Lcom/yelp/android/appdata/webrequests/c;

    new-instance v13, Lcom/yelp/android/appdata/webrequests/dg;

    move-object/from16 v0, p3

    invoke-direct {v13, p0, v0}, Lcom/yelp/android/appdata/webrequests/dg;-><init>(Lcom/yelp/android/appdata/webrequests/dc;Ljava/lang/String;)V

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v13}, Lcom/yelp/android/appdata/webrequests/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;Lcom/yelp/android/appdata/webrequests/j;)V

    .line 505
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/c;->executeWithLocation([Ljava/lang/Object;)V

    .line 506
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->g:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/eq;->a(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)Z
    .locals 1

    .prologue
    .line 302
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 321
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 220
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    .line 222
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v0

    .line 223
    invoke-static {p1, v1, v0}, Lcom/yelp/android/services/d;->b(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/n;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 225
    invoke-static {}, Lcom/yelp/android/services/d;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 226
    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 227
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v3

    .line 228
    invoke-interface {v3}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 229
    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 234
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dk;

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/dk;-><init>(Lorg/apache/http/client/HttpClient;Lcom/yelp/android/av/i;)V

    .line 235
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dk;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 238
    new-instance v0, Lcom/yelp/android/appdata/webrequests/de;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/de;-><init>(Lcom/yelp/android/appdata/webrequests/dc;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/client/CookieStore;

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/de;->b([Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 247
    return-void
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/di;)V
    .locals 1

    .prologue
    .line 337
    if-eqz p1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 340
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/User;)V
    .locals 3

    .prologue
    .line 612
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;

    .line 613
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "user_is_fetched"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->sendBroadcast(Landroid/content/Intent;)V

    .line 614
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->d()Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 159
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 253
    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->m:Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 254
    invoke-virtual {p0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/eq;)V

    .line 255
    invoke-static {}, Lcom/yelp/android/services/d;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 256
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()V

    .line 257
    return-void
.end method

.method public h()Lcom/yelp/android/appdata/RemoteConfigPreferences;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->m:Lcom/yelp/android/appdata/RemoteConfigPreferences;

    return-object v0
.end method

.method public i()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->m:Lcom/yelp/android/appdata/RemoteConfigPreferences;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->m:Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->DEFAULT_SCHEDULE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->g:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/debug/Debug;->f()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    :goto_0
    return-object v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_2

    .line 395
    invoke-static {}, Lcom/yelp/android/services/d;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    .line 396
    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 397
    const-string/jumbo v2, "api_s"

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->e()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->i:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->q()Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->g()Z

    move-result v0

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 536
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->g()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(J)Z

    move-result v0

    .line 538
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
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
    .line 652
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Lcom/yelp/android/serializable/User;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 573
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v8

    .line 608
    :goto_0
    return-object v0

    .line 578
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 579
    const-string/jumbo v0, "fetch_user"

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 580
    if-eqz v0, :cond_1

    .line 581
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/dc;->y()V

    .line 582
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "fetch_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 586
    :cond_1
    new-instance v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->u()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/eq;->h()Z

    move-result v4

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->v()Ljava/lang/String;

    move-result-object v7

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/serializable/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V

    .line 591
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    const-string/jumbo v1, "user_json_string"

    invoke-interface {v9, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_3

    .line 596
    :try_start_0
    sget-object v2, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/User;

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;

    goto :goto_0

    .line 597
    :catch_0
    move-exception v1

    .line 598
    const-string/jumbo v2, "LoginManagerGetCurrentUser"

    invoke-static {v2, v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 599
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;

    .line 601
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_json_string"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/dc;->y()V

    goto :goto_1

    .line 605
    :cond_3
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;

    goto :goto_1
.end method

.method public t()Ljava/lang/String;
    .locals 5

    .prologue
    .line 620
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-nez v0, :cond_0

    .line 621
    const/4 v0, 0x0

    .line 623
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0703cb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/eq;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/eq;->b()Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 635
    :cond_0
    return-object v0

    .line 631
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->e:Lcom/yelp/android/serializable/eq;

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Lcom/yelp/android/services/w;

    const-string/jumbo v1, "user/profile/photo"

    invoke-direct {v0, v1}, Lcom/yelp/android/services/w;-><init>(Ljava/lang/String;)V

    .line 642
    const-string/jumbo v1, "session_token"

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/services/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;

    .line 643
    const-string/jumbo v1, "user_id"

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/services/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;

    .line 644
    invoke-virtual {v0}, Lcom/yelp/android/services/w;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->d:Ljava/lang/String;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public w()V
    .locals 4

    .prologue
    .line 667
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 669
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "fetch_user"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 671
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->isFullUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dc;->f:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->writeJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "user_json_string"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    const-string/jumbo v1, "LoginManagerAppEnteringBackground"

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dc;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
