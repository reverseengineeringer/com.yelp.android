.class Lcom/google/android/gms/internal/o$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/o$3;->a:Lcom/google/android/gms/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ib;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ib;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/o$3;->a:Lcom/google/android/gms/internal/o;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/o;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Received request to untrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/o$3;->a:Lcom/google/android/gms/internal/o;

    iget-object v1, v1, Lcom/google/android/gms/internal/o;->b:Lcom/google/android/gms/internal/q;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/o$3;->a:Lcom/google/android/gms/internal/o;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/o;->c()V

    goto :goto_0
.end method
