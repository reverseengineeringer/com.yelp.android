.class public Lcom/google/android/gms/analytics/d$e;
.super Lcom/google/android/gms/analytics/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/d$c",
        "<",
        "Lcom/google/android/gms/analytics/d$e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/d$c;-><init>()V

    const-string/jumbo v0, "&t"

    const-string/jumbo v1, "timing"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/d$e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/android/gms/analytics/d$e;
    .locals 3

    const-string/jumbo v0, "&utt"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/d$e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$e;
    .locals 1

    const-string/jumbo v0, "&utv"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/d$e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    return-object p0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/analytics/d$c;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$e;
    .locals 1

    const-string/jumbo v0, "&utc"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/d$e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    return-object p0
.end method
