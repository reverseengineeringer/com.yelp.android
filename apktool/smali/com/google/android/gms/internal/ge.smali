.class public final Lcom/google/android/gms/internal/ge;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ge$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ge$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ge;->a:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/google/android/gms/internal/gd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ge;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ge$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ge$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ao;->al:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ak;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/gd$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/ge$a;->b:Lcom/google/android/gms/internal/gd;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/gd$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gd;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gd$a;->a()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ge;->a:Ljava/util/WeakHashMap;

    new-instance v2, Lcom/google/android/gms/internal/ge$a;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ge$a;-><init>(Lcom/google/android/gms/internal/ge;Lcom/google/android/gms/internal/gd;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gd$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gd$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd$a;->a()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    goto :goto_0
.end method
