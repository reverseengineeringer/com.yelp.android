.class public Lcom/facebook/share/internal/b;
.super Ljava/lang/Object;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/b$b;,
        Lcom/facebook/share/internal/b$l;,
        Lcom/facebook/share/internal/b$h;,
        Lcom/facebook/share/internal/b$a;,
        Lcom/facebook/share/internal/b$d;,
        Lcom/facebook/share/internal/b$f;,
        Lcom/facebook/share/internal/b$j;,
        Lcom/facebook/share/internal/b$i;,
        Lcom/facebook/share/internal/b$g;,
        Lcom/facebook/share/internal/b$e;,
        Lcom/facebook/share/internal/b$k;,
        Lcom/facebook/share/internal/b$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/facebook/internal/i;

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/share/internal/b;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/facebook/internal/x;

.field private static e:Lcom/facebook/internal/x;

.field private static f:Landroid/os/Handler;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static volatile i:I

.field private static j:Lcom/facebook/c;


# instance fields
.field private k:Ljava/lang/String;

.field private l:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/os/Bundle;

.field private x:Lcom/facebook/appevents/AppEventsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 77
    const-class v0, Lcom/facebook/share/internal/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    new-instance v0, Lcom/facebook/internal/x;

    invoke-direct {v0, v1}, Lcom/facebook/internal/x;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/b;->d:Lcom/facebook/internal/x;

    .line 122
    new-instance v0, Lcom/facebook/internal/x;

    invoke-direct {v0, v1}, Lcom/facebook/internal/x;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/b;->e:Lcom/facebook/internal/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    .line 603
    iput-object p2, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 604
    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 62
    sput p0, Lcom/facebook/share/internal/b;->i:I

    return p0
.end method

.method private static a(Ljava/lang/String;)Lcom/facebook/share/internal/b;
    .locals 5

    .prologue
    .line 389
    invoke-static {p0}, Lcom/facebook/share/internal/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    sget-object v0, Lcom/facebook/share/internal/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/b;

    .line 392
    if-eqz v0, :cond_0

    .line 394
    sget-object v2, Lcom/facebook/share/internal/b;->d:Lcom/facebook/internal/x;

    new-instance v3, Lcom/facebook/share/internal/b$h;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/facebook/share/internal/b$h;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/x;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/x$a;

    .line 397
    :cond_0
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/facebook/share/internal/h;
    .locals 2

    .prologue
    .line 859
    new-instance v0, Lcom/facebook/share/internal/b$8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/share/internal/b$8;-><init>(Lcom/facebook/share/internal/b;Lcom/facebook/f;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static a(Lcom/facebook/share/internal/b$c;Lcom/facebook/share/internal/b;Lcom/facebook/FacebookException;)V
    .locals 2

    .prologue
    .line 328
    if-nez p0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 332
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/b;->f:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/share/internal/b$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/b$6;-><init>(Lcom/facebook/share/internal/b$c;Lcom/facebook/share/internal/b;Lcom/facebook/FacebookException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Lcom/facebook/share/internal/b$k;)V
    .locals 4

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/facebook/share/internal/b;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1195
    if-eqz p1, :cond_0

    .line 1196
    invoke-interface {p1}, Lcom/facebook/share/internal/b$k;->a()V

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    new-instance v0, Lcom/facebook/share/internal/b$e;

    iget-object v1, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/share/internal/b$e;-><init>(Lcom/facebook/share/internal/b;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1204
    new-instance v1, Lcom/facebook/share/internal/b$g;

    iget-object v2, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/share/internal/b$g;-><init>(Lcom/facebook/share/internal/b;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1207
    new-instance v2, Lcom/facebook/i;

    invoke-direct {v2}, Lcom/facebook/i;-><init>()V

    .line 1208
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/b$e;->a(Lcom/facebook/i;)V

    .line 1209
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/b$g;->a(Lcom/facebook/i;)V

    .line 1211
    new-instance v3, Lcom/facebook/share/internal/b$3;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/facebook/share/internal/b$3;-><init>(Lcom/facebook/share/internal/b;Lcom/facebook/share/internal/b$e;Lcom/facebook/share/internal/b$g;Lcom/facebook/share/internal/b$k;)V

    invoke-virtual {v2, v3}, Lcom/facebook/i;->a(Lcom/facebook/i$a;)V

    .line 1238
    invoke-virtual {v2}, Lcom/facebook/i;->h()Lcom/facebook/h;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/share/internal/b;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->o()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/b;IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/b;->b(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/b;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/b;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Lcom/facebook/share/internal/b;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/b$c;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-static {p1, v0}, Lcom/facebook/share/internal/j;->a(Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/widget/LikeView$ObjectType;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    .line 232
    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v5}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :goto_0
    invoke-static {p2, v1, v0}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b$c;Lcom/facebook/share/internal/b;Lcom/facebook/FacebookException;)V

    .line 247
    return-void

    .line 243
    :cond_0
    iput-object v0, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    move-object v0, v1

    move-object v1, p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/share/internal/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/facebook/share/internal/b;->d(Lcom/facebook/share/internal/b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/b;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/b;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/b;->a(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/internal/b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/facebook/share/internal/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1243
    const-string/jumbo v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string/jumbo v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string/jumbo v1, "current_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->l()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    const-string/jumbo v2, "fb_like_control_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1248
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .locals 3

    .prologue
    .line 1251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1252
    if-eqz p2, :cond_0

    .line 1253
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->e()Lorg/json/JSONObject;

    move-result-object v1

    .line 1254
    if-eqz v1, :cond_0

    .line 1255
    const-string/jumbo v2, "error"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/share/internal/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1261
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/facebook/share/internal/b;)V
    .locals 4

    .prologue
    .line 381
    invoke-static {p0}, Lcom/facebook/share/internal/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/facebook/share/internal/b;->d:Lcom/facebook/internal/x;

    new-instance v2, Lcom/facebook/share/internal/b$h;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/facebook/share/internal/b$h;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/x;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/x$a;

    .line 385
    sget-object v1, Lcom/facebook/share/internal/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/b$c;)V
    .locals 2

    .prologue
    .line 210
    sget-boolean v0, Lcom/facebook/share/internal/b;->h:Z

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/facebook/share/internal/b;->j()V

    .line 214
    :cond_0
    invoke-static {p0}, Lcom/facebook/share/internal/b;->a(Ljava/lang/String;)Lcom/facebook/share/internal/b;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 217
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/b$c;)V

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_1
    sget-object v0, Lcom/facebook/share/internal/b;->e:Lcom/facebook/internal/x;

    new-instance v1, Lcom/facebook/share/internal/b$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/b$b;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/b$c;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/x;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/x$a;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/facebook/share/internal/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/b;->b(Z)V

    .line 732
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 733
    const-string/jumbo v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string/jumbo v2, "Unable to publish the like/unlike action"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string/jumbo v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p0, v1, v0}, Lcom/facebook/share/internal/b;->c(Lcom/facebook/share/internal/b;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 741
    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 759
    invoke-static {p2, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-static {p3, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-static {p4, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 763
    invoke-static {p5, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 765
    invoke-static {p6, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 767
    iget-boolean v0, p0, Lcom/facebook/share/internal/b;->m:Z

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/b;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/b;->o:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/b;->p:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/b;->q:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/b;->r:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/facebook/internal/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 780
    :goto_0
    if-nez v0, :cond_2

    .line 794
    :goto_1
    return-void

    .line 767
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 784
    :cond_2
    iput-boolean p1, p0, Lcom/facebook/share/internal/b;->m:Z

    .line 785
    iput-object v1, p0, Lcom/facebook/share/internal/b;->n:Ljava/lang/String;

    .line 786
    iput-object v2, p0, Lcom/facebook/share/internal/b;->o:Ljava/lang/String;

    .line 787
    iput-object v3, p0, Lcom/facebook/share/internal/b;->p:Ljava/lang/String;

    .line 788
    iput-object v4, p0, Lcom/facebook/share/internal/b;->q:Ljava/lang/String;

    .line 789
    iput-object v5, p0, Lcom/facebook/share/internal/b;->r:Ljava/lang/String;

    .line 791
    invoke-static {p0}, Lcom/facebook/share/internal/b;->l(Lcom/facebook/share/internal/b;)V

    .line 793
    const-string/jumbo v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {p0, v0}, Lcom/facebook/share/internal/b;->d(Lcom/facebook/share/internal/b;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(IILandroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 162
    sget-object v1, Lcom/facebook/share/internal/b;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "PENDING_CONTROLLER_KEY"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/share/internal/b;->g:Ljava/lang/String;

    .line 173
    :cond_0
    sget-object v1, Lcom/facebook/share/internal/b;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :goto_0
    return v0

    .line 178
    :cond_1
    sget-object v0, Lcom/facebook/share/internal/b;->g:Ljava/lang/String;

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    new-instance v2, Lcom/facebook/share/internal/b$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/share/internal/b$1;-><init>(IILandroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/b;->a(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/b$c;)V

    .line 197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/share/internal/b;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/share/internal/b;->v:Z

    return p1
.end method

.method private a(ZLandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 711
    const/4 v1, 0x0

    .line 712
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    if-eqz p1, :cond_0

    .line 715
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/b;->c(Landroid/os/Bundle;)V

    .line 722
    :goto_0
    return v0

    .line 716
    :cond_0
    iget-object v2, p0, Lcom/facebook/share/internal/b;->r:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 718
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/b;->d(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/facebook/share/internal/b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 437
    .line 441
    :try_start_0
    invoke-static {p0}, Lcom/facebook/share/internal/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    sget-object v2, Lcom/facebook/share/internal/b;->b:Lcom/facebook/internal/i;

    invoke-virtual {v2, v1}, Lcom/facebook/internal/i;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 443
    if-eqz v2, :cond_0

    .line 444
    :try_start_1
    invoke-static {v2}, Lcom/facebook/internal/u;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 446
    invoke-static {v1}, Lcom/facebook/share/internal/b;->c(Ljava/lang/String;)Lcom/facebook/share/internal/b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 453
    :cond_0
    if-eqz v2, :cond_1

    .line 454
    invoke-static {v2}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    .line 458
    :cond_1
    :goto_0
    return-object v0

    .line 449
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 450
    :goto_1
    :try_start_2
    sget-object v3, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    const-string/jumbo v4, "Unable to deserialize controller from disk"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 453
    if-eqz v2, :cond_1

    .line 454
    invoke-static {v2}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 454
    invoke-static {v2}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    :cond_2
    throw v0

    .line 453
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 449
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/share/internal/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/share/internal/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/share/internal/b;->r:Ljava/lang/String;

    return-object p1
.end method

.method private b(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/facebook/share/internal/b;->w:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/b;->a(Landroid/os/Bundle;)Lcom/facebook/share/internal/h;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/facebook/share/internal/j;->a(IILandroid/content/Intent;Lcom/facebook/share/internal/h;)Z

    .line 855
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->m()V

    .line 856
    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 800
    .line 802
    invoke-static {}, Lcom/facebook/share/internal/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    const-string/jumbo v0, "fb_like_control_did_present_dialog"

    .line 818
    :goto_0
    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    :goto_1
    new-instance v2, Lcom/facebook/share/internal/LikeContent$a;

    invoke-direct {v2}, Lcom/facebook/share/internal/LikeContent$a;-><init>()V

    iget-object v3, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/share/internal/LikeContent$a;->a(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/LikeContent$a;->b(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeContent$a;->a()Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    .line 827
    if-eqz p2, :cond_4

    .line 828
    new-instance v2, Lcom/facebook/share/internal/d;

    invoke-direct {v2, p2}, Lcom/facebook/share/internal/d;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/d;->a(Ljava/lang/Object;)V

    .line 833
    :goto_2
    invoke-direct {p0, p3}, Lcom/facebook/share/internal/b;->b(Landroid/os/Bundle;)V

    .line 835
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->l()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string/jumbo v2, "fb_like_control_did_present_dialog"

    invoke-virtual {v0, v2, v1, p3}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 840
    :cond_0
    return-void

    .line 804
    :cond_1
    invoke-static {}, Lcom/facebook/share/internal/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    const-string/jumbo v0, "fb_like_control_did_present_fallback_dialog"

    goto :goto_0

    .line 808
    :cond_2
    const-string/jumbo v0, "present_dialog"

    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 809
    sget-object v0, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "Cannot show the Like Dialog on this device."

    invoke-static {v0, v2}, Lcom/facebook/internal/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string/jumbo v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {v1, v0}, Lcom/facebook/share/internal/b;->d(Lcom/facebook/share/internal/b;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 819
    :cond_3
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 830
    :cond_4
    new-instance v2, Lcom/facebook/share/internal/d;

    invoke-direct {v2, p1}, Lcom/facebook/share/internal/d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/d;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/share/internal/b;->e(Ljava/lang/String;)V

    .line 946
    iput-object p1, p0, Lcom/facebook/share/internal/b;->w:Landroid/os/Bundle;

    .line 949
    invoke-static {p0}, Lcom/facebook/share/internal/b;->l(Lcom/facebook/share/internal/b;)V

    .line 950
    return-void
.end method

.method static synthetic b(Lcom/facebook/share/internal/b;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/b;->c(Lcom/facebook/share/internal/b;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/share/internal/b;Z)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/b;->a(Z)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/b$c;)V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/b;->c(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/b$c;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 421
    :try_start_0
    sget-object v0, Lcom/facebook/share/internal/b;->b:Lcom/facebook/internal/i;

    invoke-virtual {v0, p0}, Lcom/facebook/internal/i;->b(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 422
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    if-eqz v1, :cond_0

    .line 427
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    :try_start_1
    sget-object v2, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "Unable to serialize controller to disk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    if-eqz v1, :cond_0

    .line 427
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 427
    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/io/Closeable;)V

    :cond_1
    throw v0
.end method

.method private b(Z)V
    .locals 7

    .prologue
    .line 744
    iget-object v2, p0, Lcom/facebook/share/internal/b;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/b;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/b;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/share/internal/b;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/b;->r:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/share/internal/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/facebook/share/internal/b;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 465
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 466
    const-string/jumbo v0, "com.facebook.share.internal.LikeActionController.version"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 467
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 506
    :goto_0
    return-object v1

    .line 473
    :cond_0
    const-string/jumbo v0, "object_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    const-string/jumbo v0, "object_type"

    sget-object v4, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v4}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 478
    new-instance v0, Lcom/facebook/share/internal/b;

    invoke-static {v4}, Lcom/facebook/share/widget/LikeView$ObjectType;->fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/facebook/share/internal/b;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 484
    const-string/jumbo v3, "like_count_string_with_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/b;->n:Ljava/lang/String;

    .line 486
    const-string/jumbo v3, "like_count_string_without_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/b;->o:Ljava/lang/String;

    .line 488
    const-string/jumbo v3, "social_sentence_with_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/b;->p:Ljava/lang/String;

    .line 490
    const-string/jumbo v3, "social_sentence_without_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/b;->q:Ljava/lang/String;

    .line 492
    const-string/jumbo v3, "is_object_liked"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/share/internal/b;->m:Z

    .line 493
    const-string/jumbo v3, "unlike_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/b;->r:Ljava/lang/String;

    .line 495
    const-string/jumbo v3, "facebook_dialog_analytics_bundle"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 497
    if-eqz v2, :cond_1

    .line 498
    invoke-static {v2}, Lcom/facebook/internal/c;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/share/internal/b;->w:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 506
    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    sget-object v2, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    const-string/jumbo v3, "Unable to deserialize controller from JSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 503
    goto :goto_1
.end method

.method static synthetic c(Lcom/facebook/share/internal/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/share/internal/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/share/internal/b;->s:Ljava/lang/String;

    return-object p1
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/b;->v:Z

    .line 984
    new-instance v0, Lcom/facebook/share/internal/b$9;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/b$9;-><init>(Lcom/facebook/share/internal/b;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b$k;)V

    .line 1036
    return-void
.end method

.method private static c(Lcom/facebook/share/internal/b;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    if-eqz p0, :cond_1

    .line 584
    if-nez p2, :cond_0

    .line 585
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 588
    :cond_0
    const-string/jumbo v1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {p0}, Lcom/facebook/share/internal/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_1
    if-eqz p2, :cond_2

    .line 592
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 594
    :cond_2
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/m;->a(Landroid/content/Context;)Landroid/support/v4/content/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/m;->a(Landroid/content/Intent;)Z

    .line 596
    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/b$c;)V
    .locals 3

    .prologue
    .line 262
    invoke-static {p0}, Lcom/facebook/share/internal/b;->a(Ljava/lang/String;)Lcom/facebook/share/internal/b;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 265
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/b$c;)V

    .line 290
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {p0}, Lcom/facebook/share/internal/b;->b(Ljava/lang/String;)Lcom/facebook/share/internal/b;

    move-result-object v0

    .line 272
    if-nez v0, :cond_1

    .line 273
    new-instance v0, Lcom/facebook/share/internal/b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/b;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 274
    invoke-static {v0}, Lcom/facebook/share/internal/b;->l(Lcom/facebook/share/internal/b;)V

    .line 278
    :cond_1
    invoke-static {p0, v0}, Lcom/facebook/share/internal/b;->a(Ljava/lang/String;Lcom/facebook/share/internal/b;)V

    .line 282
    sget-object v1, Lcom/facebook/share/internal/b;->f:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/share/internal/b$4;

    invoke-direct {v2, v0}, Lcom/facebook/share/internal/b$4;-><init>(Lcom/facebook/share/internal/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b$c;Lcom/facebook/share/internal/b;Lcom/facebook/FacebookException;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/share/internal/b;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/share/internal/b;->u:Z

    return p1
.end method

.method static synthetic d(Lcom/facebook/share/internal/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 550
    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->b()Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_0
    if-eqz v0, :cond_1

    .line 558
    invoke-static {v0}, Lcom/facebook/internal/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "%s|%s|com.fb.sdk.like|%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    invoke-static {v0, v5}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    sget v4, Lcom/facebook/share/internal/b;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/b;->v:Z

    .line 1042
    new-instance v0, Lcom/facebook/i;

    invoke-direct {v0}, Lcom/facebook/i;-><init>()V

    .line 1043
    new-instance v1, Lcom/facebook/share/internal/b$j;

    iget-object v2, p0, Lcom/facebook/share/internal/b;->r:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/b$j;-><init>(Lcom/facebook/share/internal/b;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/b$j;->a(Lcom/facebook/i;)V

    .line 1046
    new-instance v2, Lcom/facebook/share/internal/b$10;

    invoke-direct {v2, p0, v1, p1}, Lcom/facebook/share/internal/b$10;-><init>(Lcom/facebook/share/internal/b;Lcom/facebook/share/internal/b$j;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/facebook/i;->a(Lcom/facebook/i$a;)V

    .line 1071
    invoke-virtual {v0}, Lcom/facebook/i;->h()Lcom/facebook/h;

    .line 1072
    return-void
.end method

.method private static d(Lcom/facebook/share/internal/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/share/internal/b;->c(Lcom/facebook/share/internal/b;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 576
    return-void
.end method

.method static synthetic d(Lcom/facebook/share/internal/b;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/share/internal/b;->t:Z

    return p1
.end method

.method static synthetic e(Lcom/facebook/share/internal/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/facebook/share/internal/b;->m:Z

    iget-boolean v1, p0, Lcom/facebook/share/internal/b;->u:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/share/internal/b;->m:Z

    invoke-direct {p0, v0, p1}, Lcom/facebook/share/internal/b;->a(ZLandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1189
    iget-boolean v0, p0, Lcom/facebook/share/internal/b;->m:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/b;->a(Z)V

    .line 1191
    :cond_0
    return-void

    .line 1189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 959
    sput-object p0, Lcom/facebook/share/internal/b;->g:Ljava/lang/String;

    .line 960
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    .line 962
    const-string/jumbo v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PENDING_CONTROLLER_KEY"

    sget-object v2, Lcom/facebook/share/internal/b;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 968
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/share/internal/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/facebook/share/internal/b;->i:I

    return v0
.end method

.method static synthetic g(Lcom/facebook/share/internal/b;)Lcom/facebook/appevents/AppEventsLogger;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->l()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/share/internal/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/share/internal/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic i()Lcom/facebook/internal/i;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/share/internal/b;->b:Lcom/facebook/internal/i;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/share/internal/b;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/share/internal/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized j()V
    .locals 4

    .prologue
    .line 293
    const-class v1, Lcom/facebook/share/internal/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/share/internal/b;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    monitor-exit v1

    return-void

    .line 297
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/share/internal/b;->f:Landroid/os/Handler;

    .line 299
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    .line 300
    const-string/jumbo v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    const-string/jumbo v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/share/internal/b;->i:I

    .line 305
    new-instance v0, Lcom/facebook/internal/i;

    sget-object v2, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/i$d;

    invoke-direct {v3}, Lcom/facebook/internal/i$d;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/i;-><init>(Ljava/lang/String;Lcom/facebook/internal/i$d;)V

    sput-object v0, Lcom/facebook/share/internal/b;->b:Lcom/facebook/internal/i;

    .line 307
    invoke-static {}, Lcom/facebook/share/internal/b;->k()V

    .line 309
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v2, Lcom/facebook/share/internal/b$5;

    invoke-direct {v2}, Lcom/facebook/share/internal/b$5;-><init>()V

    invoke-static {v0, v2}, Lcom/facebook/internal/CallbackManagerImpl;->a(ILcom/facebook/internal/CallbackManagerImpl$a;)V

    .line 321
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/share/internal/b;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static k()V
    .locals 1

    .prologue
    .line 345
    new-instance v0, Lcom/facebook/share/internal/b$7;

    invoke-direct {v0}, Lcom/facebook/share/internal/b$7;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/b;->j:Lcom/facebook/c;

    .line 376
    return-void
.end method

.method static synthetic k(Lcom/facebook/share/internal/b;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/facebook/share/internal/b;->m:Z

    return v0
.end method

.method private l()Lcom/facebook/appevents/AppEventsLogger;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/facebook/share/internal/b;->x:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_0

    .line 703
    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->a(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/b;->x:Lcom/facebook/appevents/AppEventsLogger;

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/b;->x:Lcom/facebook/appevents/AppEventsLogger;

    return-object v0
.end method

.method private static l(Lcom/facebook/share/internal/b;)V
    .locals 4

    .prologue
    .line 405
    invoke-static {p0}, Lcom/facebook/share/internal/b;->m(Lcom/facebook/share/internal/b;)Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/share/internal/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v0}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/facebook/internal/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    sget-object v2, Lcom/facebook/share/internal/b;->e:Lcom/facebook/internal/x;

    new-instance v3, Lcom/facebook/share/internal/b$l;

    invoke-direct {v3, v1, v0}, Lcom/facebook/share/internal/b$l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/x;->a(Ljava/lang/Runnable;)Lcom/facebook/internal/x$a;

    .line 412
    :cond_0
    return-void
.end method

.method private static m(Lcom/facebook/share/internal/b;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 512
    :try_start_0
    const-string/jumbo v1, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    const-string/jumbo v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string/jumbo v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 515
    const-string/jumbo v1, "like_count_string_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string/jumbo v1, "like_count_string_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string/jumbo v1, "social_sentence_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string/jumbo v1, "social_sentence_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string/jumbo v1, "is_object_liked"

    iget-boolean v2, p0, Lcom/facebook/share/internal/b;->m:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 528
    const-string/jumbo v1, "unlike_token"

    iget-object v2, p0, Lcom/facebook/share/internal/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    iget-object v1, p0, Lcom/facebook/share/internal/b;->w:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/facebook/share/internal/b;->w:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/facebook/internal/c;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 533
    if-eqz v1, :cond_0

    .line 534
    const-string/jumbo v2, "facebook_dialog_analytics_bundle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    sget-object v1, Lcom/facebook/share/internal/b;->a:Ljava/lang/String;

    const-string/jumbo v2, "Unable to serialize controller to JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 953
    iput-object v0, p0, Lcom/facebook/share/internal/b;->w:Landroid/os/Bundle;

    .line 955
    invoke-static {v0}, Lcom/facebook/share/internal/b;->e(Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 971
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 974
    iget-boolean v1, p0, Lcom/facebook/share/internal/b;->t:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/share/internal/b;->s:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 1075
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1076
    if-nez v0, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->p()V

    .line 1123
    :goto_0
    return-void

    .line 1084
    :cond_0
    new-instance v0, Lcom/facebook/share/internal/b$11;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/b$11;-><init>(Lcom/facebook/share/internal/b;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/b;->a(Lcom/facebook/share/internal/b$k;)V

    goto :goto_0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 1126
    new-instance v0, Lcom/facebook/share/internal/e;

    invoke-static {}, Lcom/facebook/g;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/facebook/g;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0}, Lcom/facebook/share/internal/e;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1182
    :goto_0
    return-void

    .line 1134
    :cond_0
    new-instance v1, Lcom/facebook/share/internal/b$2;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/b$2;-><init>(Lcom/facebook/share/internal/b;)V

    .line 1181
    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/e;->a(Lcom/facebook/internal/q$a;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/facebook/share/internal/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 672
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->l()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string/jumbo v3, "fb_like_control_did_tap"

    invoke-virtual {v0, v3, v4, p3}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 677
    iget-boolean v0, p0, Lcom/facebook/share/internal/b;->m:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 679
    :goto_0
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 681
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/b;->b(Z)V

    .line 682
    iget-boolean v3, p0, Lcom/facebook/share/internal/b;->v:Z

    if-eqz v3, :cond_2

    .line 686
    invoke-direct {p0}, Lcom/facebook/share/internal/b;->l()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string/jumbo v1, "fb_like_control_did_undo_quickly"

    invoke-virtual {v0, v1, v4, p3}, Lcom/facebook/appevents/AppEventsLogger;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 699
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 677
    goto :goto_0

    .line 690
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/b;->a(ZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/facebook/share/internal/b;->b(Z)V

    .line 694
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/b;->b(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 693
    goto :goto_2

    .line 697
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/b;->b(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/facebook/share/internal/b;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/b;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/b;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/facebook/share/internal/b;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/share/internal/b;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/b;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/facebook/share/internal/b;->m:Z

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 648
    invoke-static {}, Lcom/facebook/share/internal/d;->e()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/facebook/share/internal/d;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    iget-boolean v2, p0, Lcom/facebook/share/internal/b;->t:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/facebook/share/internal/b;->l:Lcom/facebook/share/widget/LikeView$ObjectType;

    sget-object v3, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 656
    goto :goto_0

    .line 662
    :cond_3
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 663
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "publish_actions"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
