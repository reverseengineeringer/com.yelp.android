.class Lcom/google/android/gms/internal/db$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hu$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/db$d;->a()V
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
        "Lcom/google/android/gms/internal/dc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/db$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/db$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/db$d$1;->a:Lcom/google/android/gms/internal/db$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/dc;)V
    .locals 1

    const-string/jumbo v0, "Ending javascript session."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/gms/internal/dd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/dd;->a()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/dc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/db$d$1;->a(Lcom/google/android/gms/internal/dc;)V

    return-void
.end method
