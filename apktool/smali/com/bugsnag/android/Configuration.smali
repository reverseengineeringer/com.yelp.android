.class Lcom/bugsnag/android/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field final apiKey:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field final beforeNotifyTasks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/bugsnag/android/BeforeNotify;",
            ">;"
        }
    .end annotation
.end field

.field buildUUID:Ljava/lang/String;

.field context:Ljava/lang/String;

.field endpoint:Ljava/lang/String;

.field filters:[Ljava/lang/String;

.field ignoreClasses:[Ljava/lang/String;

.field metaData:Lcom/bugsnag/android/MetaData;

.field notifyReleaseStages:[Ljava/lang/String;

.field projectPackages:[Ljava/lang/String;

.field releaseStage:Ljava/lang/String;

.field sendThreads:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "https://notify.bugsnag.com"

    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    .line 20
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->filters:[Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    .line 25
    iput-boolean v3, p0, Lcom/bugsnag/android/Configuration;->sendThreads:Z

    .line 27
    new-instance v0, Lcom/bugsnag/android/MetaData;

    invoke-direct {v0}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    .line 31
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->apiKey:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method getNotifyEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method inProject(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 60
    iget-object v2, p0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 61
    if-eqz v4, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0

    .line 60
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method shouldIgnoreClass(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->ignoreClasses:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->ignoreClasses:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method shouldNotifyForReleaseStage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
