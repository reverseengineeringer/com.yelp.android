.class public Lcom/yelp/android/appdata/webrequests/co;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/r;
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/co$b;,
        Lcom/yelp/android/appdata/webrequests/co$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/content/IntentFilter;

.field public static final b:Landroid/content/IntentFilter;

.field public static final c:Landroid/content/IntentFilter;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/yelp/android/serializable/j;

.field private f:Lcom/yelp/android/serializable/User;

.field private g:Z

.field private h:Z

.field private final i:Lcom/yelp/android/appdata/c;

.field private final j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/co$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/yelp/android/appdata/ApiPreferences;

.field private l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

.field private m:Lcom/yelp/android/appdata/webrequests/ApiRequest;

.field private n:Lcom/yelp/android/appdata/webrequests/ApiRequest;

.field private final o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/j;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.yelp.android.intent.new_account_config"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/co;->a:Landroid/content/IntentFilter;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "user_is_fetched"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/co;->b:Landroid/content/IntentFilter;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "user_failed_to_fetch"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/co;->c:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/ApiPreferences;Lcom/yelp/android/appdata/c;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance v0, Lcom/yelp/android/appdata/webrequests/co$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/co$3;-><init>(Lcom/yelp/android/appdata/webrequests/co;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 753
    new-instance v0, Lcom/yelp/android/appdata/webrequests/co$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/co$5;-><init>(Lcom/yelp/android/appdata/webrequests/co;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->p:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 796
    new-instance v0, Lcom/yelp/android/appdata/webrequests/co$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/co$6;-><init>(Lcom/yelp/android/appdata/webrequests/co;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->q:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 88
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/co;->k:Lcom/yelp/android/appdata/ApiPreferences;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    .line 90
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/co;->i:Lcom/yelp/android/appdata/c;

    .line 91
    invoke-virtual {p2}, Lcom/yelp/android/appdata/c;->w()Lcom/yelp/android/serializable/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/serializable/j;)V

    .line 95
    :cond_0
    return-void
.end method

.method private final a(Landroid/support/v4/app/l;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/l;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/UserLocation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 716
    new-instance v0, Lcom/yelp/android/appdata/webrequests/co$4;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/appdata/webrequests/co$4;-><init>(Lcom/yelp/android/appdata/webrequests/co;Landroid/support/v4/app/l;)V

    .line 750
    return-object v0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/co$a;

    .line 263
    invoke-interface {v0, p1}, Lcom/yelp/android/appdata/webrequests/co$a;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/co;->u()V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 267
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/co;->v()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/co;Ljava/lang/String;Lcom/yelp/android/serializable/j;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;Lcom/yelp/android/serializable/j;)V

    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/co$a;)V
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/co;->g:Z

    if-eqz v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 514
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/k;->a([Ljava/lang/Object;)V

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/co;->g:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/yelp/android/serializable/j;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->i:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/c;->c(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->i:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/serializable/j;)V

    .line 345
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cp;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/cp;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 349
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cp;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 350
    return-void
.end method

.method private b(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/co;->g:Z

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/co;->h:Z

    .line 275
    if-nez p1, :cond_0

    .line 276
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->l()Lcom/yelp/android/analytics/adjust/AdjustManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->LOG_IN:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/adjust/AdjustManager;->a(Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;)V

    .line 277
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->k:Lcom/yelp/android/appdata/ApiPreferences;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/co$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/webrequests/co$2;-><init>(Lcom/yelp/android/appdata/webrequests/co;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/ApiPreferences;->a(Lcom/yelp/android/appdata/ApiPreferences$a;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/co;->u()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/appdata/webrequests/co;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    invoke-static {}, Lcom/yelp/android/services/c;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    .line 244
    invoke-interface {v2}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 246
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move-object v1, v0

    .line 249
    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 251
    if-eqz v1, :cond_1

    .line 252
    invoke-interface {v2, v1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 254
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private u()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 675
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 676
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->p:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2, v2}, Lcom/yelp/android/appdata/webrequests/fn;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-nez v0, :cond_3

    .line 680
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/g;

    invoke-direct {p0, v2}, Lcom/yelp/android/appdata/webrequests/co;->a(Landroid/support/v4/app/l;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/g;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 683
    :cond_3
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fj;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->q:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/fj;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fj;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 690
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/co;->b(Landroid/content/Context;)V

    .line 160
    invoke-virtual {p0, v2}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/serializable/User;)V

    .line 163
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_json_string"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->i:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/serializable/j;)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->i:Lcom/yelp/android/appdata/c;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->c(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->e()V

    .line 171
    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/co;->d:Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/yelp/android/services/push/Notifier;->a(Landroid/content/Context;)V

    .line 174
    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/j;->h()V

    .line 177
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->b()V

    .line 178
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0706ef

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
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
    .line 642
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/cq;

    if-eqz v0, :cond_0

    .line 643
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UserLogout:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "request_id"

    check-cast p1, Lcom/yelp/android/appdata/webrequests/core/b;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/core/b;->i_()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 645
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->x()V

    .line 646
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FirstName:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v2, "cleared"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->ReviewDraftBusinessId:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v2, "cleared"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 653
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/co$a;)V
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/co;->g:Z

    if-eqz v0, :cond_0

    .line 328
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    return-void
.end method

.method protected a(Lcom/yelp/android/serializable/UserLocation;)V
    .locals 3

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p1}, Lcom/yelp/android/serializable/UserLocation;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->a(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/serializable/User;)V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/UserLocation;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/j;->a(Lcom/yelp/android/serializable/j;Ljava/lang/String;)Lcom/yelp/android/serializable/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/j;)V

    .line 704
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 705
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 706
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 707
    const v2, 0x7f0706fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/UserLocation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 711
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/j;)V
    .locals 1

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 429
    new-instance v0, Lcom/yelp/android/serializable/j;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/j;-><init>(Lcom/yelp/android/serializable/j;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/co$a;)V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/co;->g:Z

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/co;->g:Z

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->e()V

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;ZLcom/yelp/android/appdata/webrequests/co$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 471
    new-instance v2, Lcom/yelp/android/appdata/webrequests/d;

    new-instance v14, Lcom/yelp/android/appdata/webrequests/co$b;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v14, v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/co$b;-><init>(Lcom/yelp/android/appdata/webrequests/co;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/co$1;)V

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p11

    move-object/from16 v13, p10

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v2 .. v16}, Lcom/yelp/android/appdata/webrequests/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;Lcom/yelp/android/appdata/webrequests/k$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v2, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/co$a;)V

    .line 488
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/j;->a(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;Lcom/yelp/android/serializable/j;)V

    .line 124
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)Z
    .locals 1

    .prologue
    .line 301
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

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
    .line 320
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->e()Ljava/lang/String;

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

.method public b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 189
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    .line 191
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v0

    .line 192
    invoke-static {p1, v1, v0}, Lcom/yelp/android/services/c;->b(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/f;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 194
    invoke-static {}, Lcom/yelp/android/services/c;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 195
    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 196
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v3

    .line 197
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

    .line 198
    invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 203
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cq;

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/cq;-><init>(Lorg/apache/http/client/HttpClient;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 204
    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cq;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 207
    new-instance v0, Lcom/yelp/android/appdata/webrequests/co$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/co$1;-><init>(Lcom/yelp/android/appdata/webrequests/co;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/client/CookieStore;

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co$1;->b([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    .line 216
    return-void
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/co$a;)V
    .locals 1

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/User;)V
    .locals 3

    .prologue
    .line 611
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;

    .line 612
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "user_is_fetched"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->sendBroadcast(Landroid/content/Intent;)V

    .line 613
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/j;->a(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->i:Lcom/yelp/android/appdata/c;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->c(Ljava/lang/String;)V

    .line 417
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->f()Z

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->j:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/j;)V

    .line 222
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->k:Lcom/yelp/android/appdata/ApiPreferences;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ApiPreferences;->b()V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->k:Lcom/yelp/android/appdata/ApiPreferences;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ApiPreferences;->a()V

    .line 228
    const-string/jumbo v0, "api_dst"

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/webrequests/co;->c(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->e()Lcom/yelp/android/ca/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ca/a;->b()V

    .line 234
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->v()V

    .line 235
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->V()V

    .line 236
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->ag()V

    .line 239
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/co;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/debug/Debug;->c()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-nez v0, :cond_2

    .line 392
    const-string/jumbo v0, ""

    goto :goto_0

    .line 394
    :cond_2
    invoke-static {}, Lcom/yelp/android/services/c;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "api_s"

    invoke-static {v0, v1}, Lcom/yelp/android/util/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->g()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->i:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->v()Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->i()Z

    move-result v0

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

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
    .line 638
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method

.method public p()Lcom/yelp/android/serializable/User;
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 563
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v10

    .line 607
    :goto_0
    return-object v0

    .line 568
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 569
    const-string/jumbo v0, "fetch_user"

    const/4 v1, 0x1

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 570
    if-eqz v0, :cond_1

    .line 571
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/co;->u()V

    .line 572
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "fetch_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    :cond_1
    new-instance v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->o()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/j;->j()Z

    move-result v6

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->r()Ljava/lang/String;

    move-result-object v9

    move v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/serializable/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    const-string/jumbo v1, "user_json_string"

    invoke-interface {v11, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    if-eqz v1, :cond_3

    .line 595
    :try_start_0
    sget-object v2, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/a;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/User;

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;

    goto :goto_0

    .line 596
    :catch_0
    move-exception v1

    .line 597
    const-string/jumbo v2, "LoginManagerGetCurrentUser"

    invoke-static {v2, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 598
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;

    .line 600
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user_json_string"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 601
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/co;->u()V

    goto :goto_1

    .line 604
    :cond_3
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;

    goto :goto_1
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x0

    .line 622
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/j;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->e:Lcom/yelp/android/serializable/j;

    if-eqz v0, :cond_0

    .line 627
    new-instance v0, Lcom/yelp/android/services/h;

    const-string/jumbo v1, "user/profile/photo"

    invoke-direct {v0, v1}, Lcom/yelp/android/services/h;-><init>(Ljava/lang/String;)V

    .line 628
    const-string/jumbo v1, "session_token"

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/services/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/d;

    .line 629
    const-string/jumbo v1, "user_id"

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/services/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/d;

    .line 630
    invoke-virtual {v0}, Lcom/yelp/android/services/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->d:Ljava/lang/String;

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->d:Ljava/lang/String;

    return-object v0
.end method

.method public s()V
    .locals 4

    .prologue
    .line 657
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 658
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "fetch_user"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 660
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->f:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->A()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "user_json_string"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    const-string/jumbo v1, "LoginManagerAppEnteringBackground"

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
