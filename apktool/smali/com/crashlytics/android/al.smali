.class final Lcom/crashlytics/android/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/crashlytics/android/al;->a:Ljava/lang/String;

    .line 21
    iput-boolean p2, p0, Lcom/crashlytics/android/al;->b:Z

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/crashlytics/android/al;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/internal/bd;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/crashlytics/android/al;->b:Z

    if-eqz v0, :cond_0

    .line 33
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".     |  | "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".   \\ |  | /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".    \\    /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".     \\  /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".      \\/"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, "This app relies on Crashlytics. Configure your build environment here: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, "https://crashlytics.com/register/%s/android/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".      /\\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".     /  \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".    /    \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".   / |  | \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string/jumbo v0, "Crashlytics"

    const-string/jumbo v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Lcom/crashlytics/android/CrashlyticsMissingDependencyException;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/CrashlyticsMissingDependencyException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/crashlytics/android/al;->b:Z

    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Configured not to require a build ID."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    return-void
.end method
