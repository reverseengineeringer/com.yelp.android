.class final Lcom/crashlytics/android/at;
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
        "Lcom/crashlytics/android/z;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/crashlytics/android/d;)V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/crashlytics/android/internal/az;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 637
    new-instance v0, Lcom/crashlytics/android/aa;

    invoke-static {}, Lcom/crashlytics/android/d;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/crashlytics/android/internal/az;->a:Lcom/crashlytics/android/internal/am;

    iget-object v2, v2, Lcom/crashlytics/android/internal/am;->c:Ljava/lang/String;

    invoke-static {}, Lcom/crashlytics/android/d;->v()Lcom/crashlytics/android/internal/bu;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/bu;)V

    return-object v0
.end method
