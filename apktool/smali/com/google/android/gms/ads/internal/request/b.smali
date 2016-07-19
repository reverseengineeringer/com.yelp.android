.class public final Lcom/google/android/gms/ads/internal/request/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/request/b$b;,
        Lcom/google/android/gms/ads/internal/request/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;)Lcom/google/android/gms/internal/hf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/hu",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/b$a;",
            ")",
            "Lcom/google/android/gms/internal/hf;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/b$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/internal/request/b;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;Lcom/google/android/gms/ads/internal/request/b$b;)Lcom/google/android/gms/internal/hf;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;Lcom/google/android/gms/ads/internal/request/b$b;)Lcom/google/android/gms/internal/hf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/hu",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/b$a;",
            "Lcom/google/android/gms/ads/internal/request/b$b;",
            ")",
            "Lcom/google/android/gms/internal/hf;"
        }
    .end annotation

    invoke-interface {p4, p1}, Lcom/google/android/gms/ads/internal/request/b$b;->a(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/b;->a(Landroid/content/Context;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;)Lcom/google/android/gms/internal/hf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/request/b;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;)Lcom/google/android/gms/internal/hf;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;)Lcom/google/android/gms/internal/hf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/hu",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/b$a;",
            ")",
            "Lcom/google/android/gms/internal/hf;"
        }
    .end annotation

    const-string/jumbo v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/c$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/c$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/c$a;->c()Ljava/lang/Void;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;)Lcom/google/android/gms/internal/hf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/hu",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/b$a;",
            ")",
            "Lcom/google/android/gms/internal/hf;"
        }
    .end annotation

    const-string/jumbo v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/v;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/request/c$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/request/c$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;)V

    goto :goto_0
.end method
