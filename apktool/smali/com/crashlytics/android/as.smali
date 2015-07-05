.class final Lcom/crashlytics/android/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/internal/aw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/crashlytics/android/internal/aw",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/crashlytics/android/d;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/d;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/crashlytics/android/as;->a:Lcom/crashlytics/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/crashlytics/android/internal/az;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 617
    const/4 v0, 0x1

    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/cl;->d()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/crashlytics/android/as;->a:Lcom/crashlytics/android/d;

    invoke-virtual {v2}, Lcom/crashlytics/android/d;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/as;->a:Lcom/crashlytics/android/d;

    iget-object v2, p1, Lcom/crashlytics/android/internal/az;->c:Lcom/crashlytics/android/internal/ar;

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/d;->a(Lcom/crashlytics/android/d;Landroid/app/Activity;Lcom/crashlytics/android/internal/ar;)Z

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
