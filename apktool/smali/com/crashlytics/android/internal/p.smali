.class final Lcom/crashlytics/android/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/u;

.field private synthetic b:Z

.field private synthetic c:Lcom/crashlytics/android/internal/n;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/n;Lcom/crashlytics/android/internal/u;Z)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/crashlytics/android/internal/p;->c:Lcom/crashlytics/android/internal/n;

    iput-object p2, p0, Lcom/crashlytics/android/internal/p;->a:Lcom/crashlytics/android/internal/u;

    iput-boolean p3, p0, Lcom/crashlytics/android/internal/p;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/p;->c:Lcom/crashlytics/android/internal/n;

    iget-object v0, v0, Lcom/crashlytics/android/internal/n;->a:Lcom/crashlytics/android/internal/t;

    iget-object v1, p0, Lcom/crashlytics/android/internal/p;->a:Lcom/crashlytics/android/internal/u;

    invoke-interface {v0, v1}, Lcom/crashlytics/android/internal/t;->a(Lcom/crashlytics/android/internal/u;)V

    .line 147
    iget-boolean v0, p0, Lcom/crashlytics/android/internal/p;->b:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/crashlytics/android/internal/p;->c:Lcom/crashlytics/android/internal/n;

    iget-object v0, v0, Lcom/crashlytics/android/internal/n;->a:Lcom/crashlytics/android/internal/t;

    invoke-interface {v0}, Lcom/crashlytics/android/internal/t;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Crashlytics failed to record session event."

    invoke-static {v0}, Lcom/crashlytics/android/internal/bd;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
