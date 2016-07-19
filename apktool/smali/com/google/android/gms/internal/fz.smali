.class public final Lcom/google/android/gms/internal/fz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/internal/ib;

.field b:Lcom/google/android/gms/internal/db$d;

.field public final c:Lcom/google/android/gms/internal/bz;

.field public final d:Lcom/google/android/gms/internal/bz;

.field private final e:Ljava/lang/Object;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/internal/hp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hp",
            "<",
            "Lcom/google/android/gms/internal/gc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fz;->e:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/hp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fz;->h:Lcom/google/android/gms/internal/hp;

    new-instance v0, Lcom/google/android/gms/internal/fz$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fz$1;-><init>(Lcom/google/android/gms/internal/fz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fz;->c:Lcom/google/android/gms/internal/bz;

    new-instance v0, Lcom/google/android/gms/internal/fz$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fz$2;-><init>(Lcom/google/android/gms/internal/fz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fz;->d:Lcom/google/android/gms/internal/bz;

    iput-object p2, p0, Lcom/google/android/gms/internal/fz;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/fz;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fz;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fz;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fz;)Lcom/google/android/gms/internal/hp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fz;->h:Lcom/google/android/gms/internal/hp;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/fz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fz;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/fz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fz;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/db$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fz;->b:Lcom/google/android/gms/internal/db$d;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/db$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fz;->b:Lcom/google/android/gms/internal/db$d;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ib;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/ib;

    return-void
.end method

.method public b()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/gc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/fz;->h:Lcom/google/android/gms/internal/hp;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/ib;

    :cond_0
    return-void
.end method
