.class Lcom/google/android/gms/internal/db$e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/db$e;->a()Lcom/google/android/gms/internal/db$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/db$d;

.field final synthetic b:Lcom/google/android/gms/internal/db$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/db$e;Lcom/google/android/gms/internal/db$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/db$e$2;->b:Lcom/google/android/gms/internal/db$e;

    iput-object p2, p0, Lcom/google/android/gms/internal/db$e$2;->a:Lcom/google/android/gms/internal/db$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string/jumbo v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db$e$2;->a:Lcom/google/android/gms/internal/db$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$d;->e()V

    return-void
.end method
