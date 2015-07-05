.class final Lcom/crashlytics/android/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/n;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/n;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/crashlytics/android/internal/s;->a:Lcom/crashlytics/android/internal/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/s;->a:Lcom/crashlytics/android/internal/n;

    iget-object v0, v0, Lcom/crashlytics/android/internal/n;->a:Lcom/crashlytics/android/internal/t;

    .line 196
    iget-object v1, p0, Lcom/crashlytics/android/internal/s;->a:Lcom/crashlytics/android/internal/n;

    new-instance v2, Lcom/crashlytics/android/internal/h;

    invoke-direct {v2}, Lcom/crashlytics/android/internal/h;-><init>()V

    iput-object v2, v1, Lcom/crashlytics/android/internal/n;->a:Lcom/crashlytics/android/internal/t;

    .line 197
    invoke-interface {v0}, Lcom/crashlytics/android/internal/t;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string/jumbo v0, "Crashlytics failed to disable analytics."

    invoke-static {v0}, Lcom/crashlytics/android/internal/bd;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
