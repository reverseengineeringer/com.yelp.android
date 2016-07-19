.class Lcom/google/android/gms/internal/hv$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/hu$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hu$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/internal/hu$a;

.field final synthetic c:Lcom/google/android/gms/internal/hv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hv;Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hu$c",
            "<TT;>;",
            "Lcom/google/android/gms/internal/hu$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hv$a;->c:Lcom/google/android/gms/internal/hv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/hv$a;->a:Lcom/google/android/gms/internal/hu$c;

    iput-object p3, p0, Lcom/google/android/gms/internal/hv$a;->b:Lcom/google/android/gms/internal/hu$a;

    return-void
.end method
