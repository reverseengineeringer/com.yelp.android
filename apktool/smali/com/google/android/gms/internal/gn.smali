.class public Lcom/google/android/gms/internal/gn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ey;
.end annotation


# static fields
.field public static final wN:Lcom/google/android/gms/internal/gn$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gn$a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gn$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gn$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gn;->wN:Lcom/google/android/gms/internal/gn$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/gn$a;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/gn$a",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/gn$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gn$2;-><init>(Lcom/google/android/gms/internal/gn;Ljava/lang/String;Lcom/google/android/gms/internal/gn$a;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
