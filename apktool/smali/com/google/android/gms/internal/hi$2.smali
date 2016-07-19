.class Lcom/google/android/gms/internal/hi$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/jc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hi;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/hi$c;

.field final synthetic c:Lcom/google/android/gms/internal/hi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hi;Ljava/lang/String;Lcom/google/android/gms/internal/hi$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hi$2;->c:Lcom/google/android/gms/internal/hi;

    iput-object p2, p0, Lcom/google/android/gms/internal/hi$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/hi$2;->b:Lcom/google/android/gms/internal/hi$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzr;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failed to load URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hi$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hi$2;->b:Lcom/google/android/gms/internal/hi$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hi$c;->a(Ljava/lang/Object;)V

    return-void
.end method
