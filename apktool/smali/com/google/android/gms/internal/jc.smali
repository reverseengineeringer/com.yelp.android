.class public Lcom/google/android/gms/internal/jc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jc$a;,
        Lcom/google/android/gms/internal/jc$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/u$a;

.field public final c:Lcom/google/android/gms/internal/zzr;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzr;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jc;->d:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/jc;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/jc;->b:Lcom/google/android/gms/internal/u$a;

    iput-object p1, p0, Lcom/google/android/gms/internal/jc;->c:Lcom/google/android/gms/internal/zzr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/u$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/u$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jc;->d:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/jc;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/jc;->b:Lcom/google/android/gms/internal/u$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jc;->c:Lcom/google/android/gms/internal/zzr;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/jc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzr;",
            ")",
            "Lcom/google/android/gms/internal/jc",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jc;-><init>(Lcom/google/android/gms/internal/zzr;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/google/android/gms/internal/u$a;)Lcom/google/android/gms/internal/jc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/u$a;",
            ")",
            "Lcom/google/android/gms/internal/jc",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/jc;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/u$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->c:Lcom/google/android/gms/internal/zzr;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
