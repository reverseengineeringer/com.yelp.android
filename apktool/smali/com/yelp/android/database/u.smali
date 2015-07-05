.class public Lcom/yelp/android/database/u;
.super Landroid/os/AsyncTask;
.source "DatabaseOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/database/w;

.field private final c:Lcom/yelp/android/database/v;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;",
            "Lcom/yelp/android/database/w;",
            "Lcom/yelp/android/database/v;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yelp/android/database/u;->a:Landroid/os/AsyncTask;

    .line 23
    iput-object p2, p0, Lcom/yelp/android/database/u;->b:Lcom/yelp/android/database/w;

    .line 24
    iput-object p3, p0, Lcom/yelp/android/database/u;->c:Lcom/yelp/android/database/v;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/database/u;->d:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/database/u;->e:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/u;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iget-object v1, p0, Lcom/yelp/android/database/u;->c:Lcom/yelp/android/database/v;

    invoke-interface {v1, v0}, Lcom/yelp/android/database/v;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/u;->e:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    iput-boolean v2, p0, Lcom/yelp/android/database/u;->d:Z

    .line 55
    invoke-static {v0}, Lcom/yelp/android/database/u;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    iput-boolean v2, p0, Lcom/yelp/android/database/u;->d:Z

    .line 58
    invoke-static {v0}, Lcom/yelp/android/database/u;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/database/u;->b:Lcom/yelp/android/database/w;

    if-eqz v0, :cond_0

    .line 39
    iget-boolean v0, p0, Lcom/yelp/android/database/u;->d:Z

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/yelp/android/database/u;->b:Lcom/yelp/android/database/w;

    invoke-interface {v0}, Lcom/yelp/android/database/w;->b()V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/database/u;->b:Lcom/yelp/android/database/w;

    iget-object v1, p0, Lcom/yelp/android/database/u;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/database/w;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/u;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/u;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/database/u;->b:Lcom/yelp/android/database/w;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/yelp/android/database/u;->b:Lcom/yelp/android/database/w;

    invoke-interface {v0}, Lcom/yelp/android/database/w;->a()V

    .line 34
    :cond_0
    return-void
.end method
