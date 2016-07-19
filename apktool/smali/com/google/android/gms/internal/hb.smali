.class public final Lcom/google/android/gms/internal/hb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hb$a;,
        Lcom/google/android/gms/internal/hb$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string/jumbo v0, "admob"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hb$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hb$3;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$3;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hb$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hb$2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$2;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hb$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hb$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$7;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hb$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hb$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$1;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hb$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hb$4;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$4;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hb$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hb$5;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$5;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hb$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hb$6;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$6;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hb$8;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hb$8;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/hb$b;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$8;->g()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
