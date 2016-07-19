.class Lcom/google/android/gms/internal/fx$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/db$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/fw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/db$b",
        "<",
        "Lcom/google/android/gms/internal/cy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$6;->a:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cy;)V
    .locals 2

    const-string/jumbo v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/by;->i:Lcom/google/android/gms/internal/bz;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/cy;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/cy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fx$6;->a(Lcom/google/android/gms/internal/cy;)V

    return-void
.end method
