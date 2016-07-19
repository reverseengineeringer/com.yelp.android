.class Lcom/google/android/gms/internal/db$e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hu$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/db$e;->a()Lcom/google/android/gms/internal/db$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hu$c",
        "<",
        "Lcom/google/android/gms/internal/cy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/db$d;

.field final synthetic b:Lcom/google/android/gms/internal/db$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/db$e;Lcom/google/android/gms/internal/db$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/db$e$1;->b:Lcom/google/android/gms/internal/db$e;

    iput-object p2, p0, Lcom/google/android/gms/internal/db$e$1;->a:Lcom/google/android/gms/internal/db$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cy;)V
    .locals 2

    const-string/jumbo v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db$e$1;->a:Lcom/google/android/gms/internal/db$d;

    invoke-interface {p1}, Lcom/google/android/gms/internal/cy;->b()Lcom/google/android/gms/internal/dd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/db$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/cy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/db$e$1;->a(Lcom/google/android/gms/internal/cy;)V

    return-void
.end method
