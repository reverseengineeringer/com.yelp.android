.class final Lcom/crashlytics/android/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/ak;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/crashlytics/android/internal/n;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/n;Lcom/crashlytics/android/internal/ak;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/crashlytics/android/internal/q;->c:Lcom/crashlytics/android/internal/n;

    iput-object p2, p0, Lcom/crashlytics/android/internal/q;->a:Lcom/crashlytics/android/internal/ak;

    iput-object p3, p0, Lcom/crashlytics/android/internal/q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/q;->c:Lcom/crashlytics/android/internal/n;

    iget-object v0, v0, Lcom/crashlytics/android/internal/n;->a:Lcom/crashlytics/android/internal/t;

    iget-object v1, p0, Lcom/crashlytics/android/internal/q;->a:Lcom/crashlytics/android/internal/ak;

    iget-object v2, p0, Lcom/crashlytics/android/internal/q;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/t;->a(Lcom/crashlytics/android/internal/ak;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Crashlytics failed to set analytics settings data."

    invoke-static {v0}, Lcom/crashlytics/android/internal/bd;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
