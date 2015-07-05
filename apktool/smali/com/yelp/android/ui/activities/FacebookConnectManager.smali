.class public Lcom/yelp/android/ui/activities/FacebookConnectManager;
.super Ljava/lang/Object;
.source "FacebookConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogActivity:",
        "Landroid/app/Activity;",
        ":",
        "Lcom/yelp/android/ui/activities/ez;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;


# instance fields
.field private b:Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDialogActivity;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/activities/fg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/fg",
            "<TDialogActivity;>;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:Lcom/yelp/android/serializable/FacebookUser;

.field private final h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

.field private final i:Lcom/facebook/Session$StatusCallback;

.field private final j:Lcom/facebook/Session$StatusCallback;

.field private final k:Lcom/yelp/android/av/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/fg;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDialogActivity;I",
            "Lcom/yelp/android/ui/activities/fg",
            "<TDialogActivity;>;",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Lcom/yelp/android/ui/activities/fd;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/fd;-><init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->i:Lcom/facebook/Session$StatusCallback;

    .line 461
    new-instance v0, Lcom/yelp/android/ui/activities/fe;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/fe;-><init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->j:Lcom/facebook/Session$StatusCallback;

    .line 486
    new-instance v0, Lcom/yelp/android/ui/activities/ff;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ff;-><init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->k:Lcom/yelp/android/av/i;

    .line 208
    invoke-virtual {p0, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/fg;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Landroid/app/Activity;)V

    .line 210
    iput p2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d:I

    .line 211
    iput p5, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e:I

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/yelp/android/serializable/FacebookUser;

    .line 213
    iput-object p4, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    .line 214
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Lcom/yelp/android/serializable/FacebookUser;)Lcom/yelp/android/serializable/FacebookUser;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/yelp/android/serializable/FacebookUser;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/fg;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c:Lcom/yelp/android/ui/activities/fg;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    if-nez p0, :cond_0

    .line 223
    const-string/jumbo v0, "FBConnect"

    const-string/jumbo v1, "Tried to get profile image URL for empty user"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 224
    const-string/jumbo v0, ""

    .line 226
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/facebook/Session;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Session;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 184
    if-eqz p0, :cond_1

    .line 185
    const-class v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    .line 186
    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->isGranted(Lcom/facebook/Session;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Z

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    check-cast v0, Lcom/yelp/android/ui/activities/ez;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/ez;->hideLoadingDialog()V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c:Lcom/yelp/android/ui/activities/fg;

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/ui/activities/fg;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    .line 334
    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    .line 343
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string/jumbo v2, "/me"

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/yelp/android/ui/activities/fc;

    invoke-direct {v5, p0, p1}, Lcom/yelp/android/ui/activities/fc;-><init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 374
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/av/i;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->k:Lcom/yelp/android/av/i;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->j()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->k()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->j:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/FacebookConnectManager;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e:I

    return v0
.end method

.method static synthetic h()[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 392
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->i:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 395
    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->j:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 397
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Z

    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c:Lcom/yelp/android/ui/activities/fg;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/fg;->b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 402
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    check-cast v0, Lcom/yelp/android/ui/activities/ez;

    iget v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d:I

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/ez;->showLoadingDialog(I)V

    .line 406
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Z)V

    .line 407
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/av/i;)Lcom/yelp/android/av/h;
    .locals 9

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/yelp/android/serializable/FacebookUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/yelp/android/serializable/FacebookUser;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    const-string/jumbo v0, "FBConnect"

    const-string/jumbo v1, "Tried to connect on empty user"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    .line 316
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-virtual {v1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 319
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cb;

    const-string/jumbo v2, ","

    invoke-static {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/facebook/Session;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/services/x;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/yelp/android/serializable/FacebookUser;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/FacebookUser;->getId()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/appdata/webrequests/cb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;JLcom/yelp/android/av/i;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cb;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/av/h;

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 266
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDialogActivity;)V"
        }
    .end annotation

    .prologue
    .line 232
    iput-object p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    .line 233
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/fg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/fg",
            "<TDialogActivity;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    iput-object p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c:Lcom/yelp/android/ui/activities/fg;

    .line 241
    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDialogActivity;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/FacebookUser;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/yelp/android/serializable/FacebookUser;

    return-object v0
.end method

.method public d()Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->i()V

    .line 283
    new-instance v0, Lcom/facebook/Session$Builder;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/yelp/android/services/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/fh;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/fh;-><init>(Lcom/yelp/android/ui/activities/fc;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/facebook/TokenCachingStrategy;)Lcom/facebook/Session$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v0

    .line 287
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 290
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget v2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e:I

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->getReadPermissions()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions([Ljava/lang/String;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->i:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Z

    .line 295
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Z

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->i()V

    .line 382
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 386
    :cond_0
    return-void
.end method
