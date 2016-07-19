.class public Lcom/google/android/gms/analytics/d$b;
.super Lcom/google/android/gms/analytics/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/d$c",
        "<",
        "Lcom/google/android/gms/analytics/d$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/d$c;-><init>()V

    const-string/jumbo v0, "&t"

    const-string/jumbo v1, "exception"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/d$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$b;
    .locals 1

    const-string/jumbo v0, "&exd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/d$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/analytics/d$b;
    .locals 2

    const-string/jumbo v0, "&exf"

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/n;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/d$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    return-object p0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/analytics/d$c;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
