.class public Lcom/google/android/gms/clearcut/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/clearcut/b;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private final g:Lcom/google/android/gms/clearcut/b$b;

.field private h:Lcom/google/android/gms/clearcut/b$b;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/gms/internal/lu$d;

.field private k:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/b;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/b$a;-><init>(Lcom/google/android/gms/clearcut/b;[BLcom/google/android/gms/clearcut/b$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/b;[BLcom/google/android/gms/clearcut/b$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/b$a;-><init>(Lcom/google/android/gms/clearcut/b;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/b;[BLcom/google/android/gms/clearcut/b$b;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/b;->a(Lcom/google/android/gms/clearcut/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/b$a;->b:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/b;->b(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/b;->c(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/b;->d(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/b;->e(Lcom/google/android/gms/clearcut/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/b$a;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/internal/lu$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lu$d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b$a;->k:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/b;->c(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/b;->d(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/b;->f(Lcom/google/android/gms/clearcut/b;)Lcom/google/android/gms/internal/jt;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/jt;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/lu$d;->a:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/b;->f(Lcom/google/android/gms/clearcut/b;)Lcom/google/android/gms/internal/jt;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/jt;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/lu$d;->b:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/b;->h(Lcom/google/android/gms/clearcut/b;)Lcom/google/android/gms/clearcut/a;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/clearcut/b;->g(Lcom/google/android/gms/clearcut/b;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/clearcut/a;->a(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/gms/internal/lu$d;->u:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/b;->i(Lcom/google/android/gms/clearcut/b;)Lcom/google/android/gms/clearcut/b$c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    iget-wide v2, v2, Lcom/google/android/gms/internal/lu$d;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/b$c;->a(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/lu$d;->p:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    iput-object p2, v0, Lcom/google/android/gms/internal/lu$d;->j:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/b$a;->g:Lcom/google/android/gms/clearcut/b$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 10

    new-instance v9, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/b;->k(Lcom/google/android/gms/clearcut/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/b;->l(Lcom/google/android/gms/clearcut/b;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/b$a;->b:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/b$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/b$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/b$a;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/b;->j(Lcom/google/android/gms/clearcut/b;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/b$a;->f:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/b$a;->g:Lcom/google/android/gms/clearcut/b$b;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/b$a;->h:Lcom/google/android/gms/clearcut/b$b;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/b$a;->i:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/b;->a(Ljava/util/ArrayList;)[I

    move-result-object v6

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/lu$d;Lcom/google/android/gms/clearcut/b$b;Lcom/google/android/gms/clearcut/b$b;[I)V

    return-object v9
.end method

.method public a(I)Lcom/google/android/gms/clearcut/b$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    iput p1, v0, Lcom/google/android/gms/internal/lu$d;->e:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/b$a;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b$a;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->a:Lcom/google/android/gms/clearcut/b;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/b;->m(Lcom/google/android/gms/clearcut/b;)Lcom/google/android/gms/clearcut/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/b$a;->a()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/clearcut/c;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/android/gms/clearcut/b$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b$a;->j:Lcom/google/android/gms/internal/lu$d;

    iput p1, v0, Lcom/google/android/gms/internal/lu$d;->f:I

    return-object p0
.end method
