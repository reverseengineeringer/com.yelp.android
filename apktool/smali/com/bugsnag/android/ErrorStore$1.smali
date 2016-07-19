.class Lcom/bugsnag/android/ErrorStore$1;
.super Ljava/lang/Object;
.source "ErrorStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/ErrorStore;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bugsnag/android/ErrorStore;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/ErrorStore;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/bugsnag/android/ErrorStore$1;->this$0:Lcom/bugsnag/android/ErrorStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 47
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bugsnag/android/ErrorStore$1;->this$0:Lcom/bugsnag/android/ErrorStore;

    iget-object v2, v2, Lcom/bugsnag/android/ErrorStore;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    .line 52
    const-string/jumbo v1, "Sending %d saved error(s) to Bugsnag"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    .line 54
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 56
    :try_start_0
    new-instance v0, Lcom/bugsnag/android/Notification;

    iget-object v5, p0, Lcom/bugsnag/android/ErrorStore$1;->this$0:Lcom/bugsnag/android/ErrorStore;

    iget-object v5, v5, Lcom/bugsnag/android/ErrorStore;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v5}, Lcom/bugsnag/android/Notification;-><init>(Lcom/bugsnag/android/Configuration;)V

    .line 57
    invoke-virtual {v0, v4}, Lcom/bugsnag/android/Notification;->addError(Ljava/io/File;)V

    .line 58
    invoke-virtual {v0}, Lcom/bugsnag/android/Notification;->deliver()I

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleting sent error file "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Lcom/bugsnag/android/HttpClient$NetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string/jumbo v4, "Could not send previously saved error(s) to Bugsnag, will try again later"

    invoke-static {v4, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    const-string/jumbo v5, "Problem sending unsent error from disk"

    invoke-static {v5, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1
.end method
