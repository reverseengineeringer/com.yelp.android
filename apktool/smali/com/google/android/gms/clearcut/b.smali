.class public final Lcom/google/android/gms/clearcut/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/clearcut/b$a;,
        Lcom/google/android/gms/clearcut/b$c;,
        Lcom/google/android/gms/clearcut/b$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/iy;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/iy;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/clearcut/c;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Z

.field private m:I

.field private final n:Lcom/google/android/gms/clearcut/c;

.field private final o:Lcom/google/android/gms/internal/jt;

.field private final p:Lcom/google/android/gms/clearcut/a;

.field private q:Lcom/google/android/gms/clearcut/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/b;->a:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/clearcut/b$1;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/b$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/b;->b:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string/jumbo v1, "ClearcutLogger.API"

    sget-object v2, Lcom/google/android/gms/clearcut/b;->b:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/clearcut/b;->a:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/clearcut/b;->c:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/ix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ix;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/b;->d:Lcom/google/android/gms/clearcut/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/c;Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/clearcut/b$c;Lcom/google/android/gms/clearcut/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/b;->i:I

    iput v1, p0, Lcom/google/android/gms/clearcut/b;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->f:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/clearcut/b;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/b;->g:I

    iput p2, p0, Lcom/google/android/gms/clearcut/b;->i:I

    iput-object p3, p0, Lcom/google/android/gms/clearcut/b;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/b;->j:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/b;->k:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/clearcut/b;->l:Z

    iput-object p7, p0, Lcom/google/android/gms/clearcut/b;->n:Lcom/google/android/gms/clearcut/c;

    iput-object p8, p0, Lcom/google/android/gms/clearcut/b;->o:Lcom/google/android/gms/internal/jt;

    if-eqz p9, :cond_2

    :goto_1
    iput-object p9, p0, Lcom/google/android/gms/clearcut/b;->q:Lcom/google/android/gms/clearcut/b$c;

    iput-object p10, p0, Lcom/google/android/gms/clearcut/b;->p:Lcom/google/android/gms/clearcut/a;

    iput v1, p0, Lcom/google/android/gms/clearcut/b;->m:I

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->j:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    const-string/jumbo v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    new-instance p9, Lcom/google/android/gms/clearcut/b$c;

    invoke-direct {p9}, Lcom/google/android/gms/clearcut/b$c;-><init>()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, -0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/google/android/gms/clearcut/b;->d:Lcom/google/android/gms/clearcut/c;

    invoke-static {}, Lcom/google/android/gms/internal/jv;->d()Lcom/google/android/gms/internal/jt;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/gms/clearcut/a;->a:Lcom/google/android/gms/clearcut/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/clearcut/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/clearcut/c;Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/clearcut/b$c;Lcom/google/android/gms/clearcut/a;)V

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "ClearcutLogger"

    const-string/jumbo v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/clearcut/b;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/b;->i:I

    return v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)[I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/clearcut/b;->b(Ljava/util/ArrayList;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/util/ArrayList;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/clearcut/b;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/b;->m:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/clearcut/b;)Lcom/google/android/gms/internal/jt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->o:Lcom/google/android/gms/internal/jt;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/clearcut/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/clearcut/b;)Lcom/google/android/gms/clearcut/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->p:Lcom/google/android/gms/clearcut/a;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/clearcut/b;)Lcom/google/android/gms/clearcut/b$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->q:Lcom/google/android/gms/clearcut/b$c;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/clearcut/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->l:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gms/clearcut/b;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/b;->g:I

    return v0
.end method

.method static synthetic m(Lcom/google/android/gms/clearcut/b;)Lcom/google/android/gms/clearcut/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->n:Lcom/google/android/gms/clearcut/c;

    return-object v0
.end method


# virtual methods
.method public a([B)Lcom/google/android/gms/clearcut/b$a;
    .locals 2

    new-instance v0, Lcom/google/android/gms/clearcut/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/b$a;-><init>(Lcom/google/android/gms/clearcut/b;[BLcom/google/android/gms/clearcut/b$1;)V

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->n:Lcom/google/android/gms/clearcut/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/clearcut/c;->a(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
