.class Lcom/crashlytics/android/core/p;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/p$1;,
        Lcom/crashlytics/android/core/p$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/crashlytics/android/core/p$a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/io/File;

.field private d:Lcom/crashlytics/android/core/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/crashlytics/android/core/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/p$a;-><init>(Lcom/crashlytics/android/core/p$1;)V

    sput-object v0, Lcom/crashlytics/android/core/p;->a:Lcom/crashlytics/android/core/p$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/crashlytics/android/core/p;->b:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "log-files"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/p;->c:Ljava/io/File;

    .line 31
    sget-object v0, Lcom/crashlytics/android/core/p;->a:Lcom/crashlytics/android/core/p$a;

    iput-object v0, p0, Lcom/crashlytics/android/core/p;->d:Lcom/crashlytics/android/core/o;

    .line 32
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/crashlytics/android/core/p;->c()V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "crashlytics-userlog-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/crashlytics/android/core/p;->c:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/crashlytics/android/core/p;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/crashlytics/android/core/p;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 88
    :cond_0
    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/crashlytics/android/core/p;->b:Landroid/content/Context;

    const-string/jumbo v1, "com.crashlytics.CollectCustomLogs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/crashlytics/android/core/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/crashlytics/android/core/p;->d:Lcom/crashlytics/android/core/o;

    invoke-interface {v0}, Lcom/crashlytics/android/core/o;->a()Lcom/crashlytics/android/core/b;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/crashlytics/android/core/p;->d:Lcom/crashlytics/android/core/o;

    invoke-interface {v0, p1, p2, p3}, Lcom/crashlytics/android/core/o;->a(JLjava/lang/String;)V

    .line 54
    return-void
.end method

.method a(Ljava/io/File;I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/crashlytics/android/core/p;->d:Lcom/crashlytics/android/core/o;

    invoke-interface {v0}, Lcom/crashlytics/android/core/o;->b()V

    .line 75
    new-instance v0, Lcom/crashlytics/android/core/t;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/core/t;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/p;->d:Lcom/crashlytics/android/core/o;

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/crashlytics/android/core/p;->b()V

    .line 39
    invoke-direct {p0}, Lcom/crashlytics/android/core/p;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lio/fabric/sdk/android/c;->h()Lio/fabric/sdk/android/k;

    move-result-object v0

    const-string/jumbo v1, "Fabric"

    const-string/jumbo v2, "Preferences requested no custom logs. Aborting log file creation."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/crashlytics/android/core/p;->a:Lcom/crashlytics/android/core/p$a;

    iput-object v0, p0, Lcom/crashlytics/android/core/p;->d:Lcom/crashlytics/android/core/o;

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/p;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/p;->a(Ljava/io/File;I)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/crashlytics/android/core/p;->d:Lcom/crashlytics/android/core/o;

    invoke-interface {v0}, Lcom/crashlytics/android/core/o;->c()V

    .line 68
    return-void
.end method
