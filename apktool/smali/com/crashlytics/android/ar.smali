.class final Lcom/crashlytics/android/ar;
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
    .line 580
    iput-object p1, p0, Lcom/crashlytics/android/ar;->a:Lcom/crashlytics/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/crashlytics/android/internal/az;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 580
    iget-object v1, p1, Lcom/crashlytics/android/internal/az;->d:Lcom/crashlytics/android/internal/aq;

    iget-boolean v1, v1, Lcom/crashlytics/android/internal/aq;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/crashlytics/android/ar;->a:Lcom/crashlytics/android/d;

    invoke-static {}, Lcom/crashlytics/android/d;->n()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
