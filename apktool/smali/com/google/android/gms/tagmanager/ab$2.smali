.class Lcom/google/android/gms/tagmanager/ab$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/ab;->a(Ljava/util/Set;Lcom/google/android/gms/tagmanager/aa;)Lcom/google/android/gms/tagmanager/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ab$2;->a:Lcom/google/android/gms/tagmanager/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzrs$b;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/z;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzrs$b;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzrs$a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzrs$a;",
            ">;",
            "Lcom/google/android/gms/tagmanager/z;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrs$b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrs$b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/z;->e()Lcom/google/android/gms/tagmanager/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrs$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrs$b;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/x;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/z;->f()Lcom/google/android/gms/tagmanager/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrs$b;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrs$b;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/x;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
