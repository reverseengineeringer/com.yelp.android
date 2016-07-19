.class public final Lcom/google/android/gms/ads/formats/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/b$1;,
        Lcom/google/android/gms/ads/formats/b$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/formats/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/b$a;->a(Lcom/google/android/gms/ads/formats/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/b$a;->b(Lcom/google/android/gms/ads/formats/b$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/b;->b:I

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/b$a;->c(Lcom/google/android/gms/ads/formats/b$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/formats/b$a;Lcom/google/android/gms/ads/formats/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/b;-><init>(Lcom/google/android/gms/ads/formats/b$a;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/formats/b;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/b;->c:Z

    return v0
.end method
