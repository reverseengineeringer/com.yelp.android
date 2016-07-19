.class public final Lcom/yelp/android/cv/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/line/android/sdk/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/cv/b$1;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljp/line/android/sdk/Phase;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljp/line/android/sdk/api/a;

.field private m:Ljp/line/android/sdk/login/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final k()V
    .locals 2

    iget-boolean v0, p0, Lcom/yelp/android/cv/b;->a:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/cv/b;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "LineSdkConfig was not initialized."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget-object v0, p0, Lcom/yelp/android/cv/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/content/Context;ILjp/line/android/sdk/Phase;Ljp/line/android/sdk/b;)V
    .locals 5

    iget-boolean v0, p0, Lcom/yelp/android/cv/b;->a:Z

    if-nez v0, :cond_7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/cv/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cv/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-lez p2, :cond_0

    iput p2, p0, Lcom/yelp/android/cv/b;->c:I

    :goto_0
    iget v0, p0, Lcom/yelp/android/cv/b;->c:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Metadata of jp.line.sdk.ChannelId was not found from AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    const-string/jumbo v0, "jp.line.sdk.ChannelId"

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/cv/b;->c:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "jp.line.sdk.AuthScheme"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cv/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/yelp/android/cv/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/cv/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Metadata of jp.line.sdk.AuthScheme was not found from AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p3, :cond_8

    iput-object p3, p0, Lcom/yelp/android/cv/b;->e:Ljp/line/android/sdk/Phase;

    :cond_4
    :goto_1
    sget-object v0, Lcom/yelp/android/cv/b$1;->a:[I

    iget-object v0, p0, Lcom/yelp/android/cv/b;->e:Ljp/line/android/sdk/Phase;

    invoke-virtual {v0}, Ljp/line/android/sdk/Phase;->ordinal()I

    const-string/jumbo v0, "https://access.line.me"

    iput-object v0, p0, Lcom/yelp/android/cv/b;->g:Ljava/lang/String;

    const-string/jumbo v0, "https://api.line.me"

    iput-object v0, p0, Lcom/yelp/android/cv/b;->h:Ljava/lang/String;

    const-string/jumbo v0, "jp.line.sdk.ActivityClassThatFiresWhenProcessWasKilled"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    move-object v1, v0

    :goto_2
    :try_start_4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cv/b;->i:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_3
    :try_start_5
    const-string/jumbo v0, "jp.line.sdk.WebLoginActivityClass"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    move-object v1, v0

    :goto_4
    :try_start_6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cv/b;->j:Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_5
    :try_start_7
    invoke-interface {p4, p0}, Ljp/line/android/sdk/b;->a(Ljp/line/android/sdk/a;)Ljp/line/android/sdk/api/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cv/b;->l:Ljp/line/android/sdk/api/a;

    invoke-interface {p4, p0}, Ljp/line/android/sdk/b;->b(Ljp/line/android/sdk/a;)Ljp/line/android/sdk/login/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cv/b;->m:Ljp/line/android/sdk/login/a;

    const-string/jumbo v0, "3.1.16"

    iput-object v0, p0, Lcom/yelp/android/cv/b;->k:Ljava/lang/String;

    iget v0, p0, Lcom/yelp/android/cv/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/yelp/android/cv/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/yelp/android/cv/b;->e:Ljp/line/android/sdk/Phase;

    iget v0, p0, Lcom/yelp/android/cv/b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/yelp/android/cv/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/yelp/android/cv/b;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/yelp/android/cv/b;->i:Ljava/lang/Class;

    iget-object v0, p0, Lcom/yelp/android/cv/b;->k:Ljava/lang/String;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/yelp/android/cv/b;->a:Z

    :cond_6
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    return-void

    :cond_8
    :try_start_9
    const-string/jumbo v0, "jp.line.sdk.Phase"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string/jumbo v1, "beta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Ljp/line/android/sdk/Phase;->BETA:Ljp/line/android/sdk/Phase;

    iput-object v0, p0, Lcom/yelp/android/cv/b;->e:Ljp/line/android/sdk/Phase;

    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/yelp/android/cv/b;->e:Ljp/line/android/sdk/Phase;

    if-nez v0, :cond_4

    sget-object v0, Ljp/line/android/sdk/Phase;->REAL:Ljp/line/android/sdk/Phase;

    iput-object v0, p0, Lcom/yelp/android/cv/b;->e:Ljp/line/android/sdk/Phase;

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v1, "rc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljp/line/android/sdk/Phase;->RC:Ljp/line/android/sdk/Phase;

    iput-object v0, p0, Lcom/yelp/android/cv/b;->e:Ljp/line/android/sdk/Phase;

    goto :goto_6

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " is not found."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " is not found."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_b
    const-class v0, Ljp/line/android/sdk/activity/WebLoginActivity;

    iput-object v0, p0, Lcom/yelp/android/cv/b;->j:Ljava/lang/Class;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_5

    :cond_c
    move-object v1, v0

    goto/16 :goto_4

    :cond_d
    move-object v1, v0

    goto/16 :goto_2
.end method

.method public final b()Ljp/line/android/sdk/api/a;
    .locals 1

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget-object v0, p0, Lcom/yelp/android/cv/b;->l:Ljp/line/android/sdk/api/a;

    return-object v0
.end method

.method public final c()Ljp/line/android/sdk/login/a;
    .locals 1

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget-object v0, p0, Lcom/yelp/android/cv/b;->m:Ljp/line/android/sdk/login/a;

    return-object v0
.end method

.method public final d()I
    .locals 1

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget v0, p0, Lcom/yelp/android/cv/b;->c:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget-object v0, p0, Lcom/yelp/android/cv/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget-object v0, p0, Lcom/yelp/android/cv/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget-object v0, p0, Lcom/yelp/android/cv/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget-object v0, p0, Lcom/yelp/android/cv/b;->i:Ljava/lang/Class;

    return-object v0
.end method

.method public final i()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget-object v0, p0, Lcom/yelp/android/cv/b;->j:Ljava/lang/Class;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/yelp/android/cv/b;->k()V

    iget-object v0, p0, Lcom/yelp/android/cv/b;->k:Ljava/lang/String;

    return-object v0
.end method
