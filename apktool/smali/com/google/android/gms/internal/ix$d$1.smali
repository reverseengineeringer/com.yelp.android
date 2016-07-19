.class Lcom/google/android/gms/internal/ix$d$1;
.super Lcom/google/android/gms/internal/iz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ix$d;->a(Lcom/google/android/gms/internal/iy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ix$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ix$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ix$d$1;->a:Lcom/google/android/gms/internal/ix$d;

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ix$d$1;->a:Lcom/google/android/gms/internal/ix$d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ix$d;->zza(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
