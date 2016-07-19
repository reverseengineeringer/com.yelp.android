.class Lcom/google/android/gms/internal/ge$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/gd;

.field final synthetic c:Lcom/google/android/gms/internal/ge;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ge;Lcom/google/android/gms/internal/gd;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ge$a;->c:Lcom/google/android/gms/internal/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->i()Lcom/google/android/gms/internal/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/jt;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ge$a;->a:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ge$a;->b:Lcom/google/android/gms/internal/gd;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ge$a;->a:J

    sget-object v0, Lcom/google/android/gms/internal/ao;->am:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->i()Lcom/google/android/gms/internal/jt;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/jt;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
