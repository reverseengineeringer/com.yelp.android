.class public Lcom/yelp/android/ui/activities/FacebookConnectManager;
.super Ljava/lang/Object;
.source "FacebookConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/FacebookConnectManager$a;,
        Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;,
        Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DialogActivity:",
        "Landroid/app/Activity;",
        ":",
        "Lcom/yelp/android/ui/activities/b;",
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

.field private c:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/FacebookConnectManager$a",
            "<TDialogActivity;>;"
        }
    .end annotation
.end field

.field private final d:I

.field private e:Z

.field private f:Lcom/yelp/android/serializable/FacebookUser;

.field private g:Lcom/facebook/d;

.field private final h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

.field private final i:Lcom/facebook/f;

.field private final j:Lcom/facebook/f;

.field private final k:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/FacebookConnectManager$a;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDialogActivity;I",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager$a",
            "<TDialogActivity;>;",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;-><init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->i:Lcom/facebook/f;

    .line 465
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$3;-><init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->j:Lcom/facebook/f;

    .line 486
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$4;-><init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->k:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 212
    invoke-virtual {p0, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager$a;)V

    .line 213
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Landroid/app/Activity;)V

    .line 214
    iput p2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Lcom/yelp/android/serializable/FacebookUser;

    .line 216
    iput-object p4, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    .line 217
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Lcom/yelp/android/serializable/FacebookUser;)Lcom/yelp/android/serializable/FacebookUser;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Lcom/yelp/android/serializable/FacebookUser;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    const-string/jumbo v0, "FBConnect"

    const-string/jumbo v1, "Tried to get profile image URL for empty user"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, ""

    .line 228
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706e6

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

.method static synthetic a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e:Z

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    check-cast v0, Lcom/yelp/android/ui/activities/b;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/b;->hideLoadingDialog()V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager$a;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    .line 341
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;-><init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$c;)Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->h()Lcom/facebook/h;

    .line 394
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

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
    .line 43
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->k:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->j()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->k()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/facebook/d;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/facebook/d;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/facebook/f;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->j:Lcom/facebook/f;

    return-object v0
.end method

.method static synthetic h()[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    return-object v0
.end method

.method private static i()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 187
    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
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

    .line 189
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->isGranted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_1
    return-object v1
.end method

.method private j()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e:Z

    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    invoke-interface {v0, p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$a;->b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 403
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    check-cast v0, Lcom/yelp/android/ui/activities/b;

    iget v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d:I

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/b;->showLoadingDialog(I)V

    .line 407
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Z)V

    .line 408
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;
    .locals 9

    .prologue
    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Lcom/yelp/android/serializable/FacebookUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Lcom/yelp/android/serializable/FacebookUser;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FacebookUser;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    const-string/jumbo v0, "FBConnect"

    const-string/jumbo v1, "Tried to connect on empty user"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    .line 319
    :goto_0
    return-object v0

    .line 317
    :cond_1
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 319
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bt;

    const-string/jumbo v1, ","

    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->i()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/services/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Lcom/yelp/android/serializable/FacebookUser;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/FacebookUser;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/appdata/webrequests/bt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/TimeUnit;JLcom/yelp/android/appdata/webrequests/core/c$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bt;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/core/c;

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDialogActivity;)V"
        }
    .end annotation

    .prologue
    .line 237
    iput-object p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    .line 238
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager$a",
            "<TDialogActivity;>;)V"
        }
    .end annotation

    .prologue
    .line 245
    iput-object p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c:Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    .line 246
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/facebook/d;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/facebook/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/d;->a(IILandroid/content/Intent;)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDialogActivity;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/FacebookUser;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f:Lcom/yelp/android/serializable/FacebookUser;

    return-object v0
.end method

.method public d()Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 286
    invoke-static {}, Lcom/facebook/d$a;->a()Lcom/facebook/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/facebook/d;

    .line 290
    invoke-static {}, Lcom/facebook/login/c;->a()Lcom/facebook/login/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g:Lcom/facebook/d;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->i:Lcom/facebook/f;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/c;->a(Lcom/facebook/d;Lcom/facebook/f;)V

    .line 291
    invoke-static {}, Lcom/facebook/login/c;->a()Lcom/facebook/login/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->getReadPermissions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/c;->a(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e:Z

    .line 296
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e:Z

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcom/facebook/login/c;->a()Lcom/facebook/login/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/c;->b()V

    .line 398
    return-void
.end method
