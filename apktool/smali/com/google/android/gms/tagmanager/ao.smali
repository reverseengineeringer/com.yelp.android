.class public Lcom/google/android/gms/tagmanager/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/n;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/tagmanager/ao;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/ao;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/ao;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/ao;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/ao;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/ao;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
