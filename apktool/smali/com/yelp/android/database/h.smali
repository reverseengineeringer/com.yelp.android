.class public Lcom/yelp/android/database/h;
.super Landroid/os/AsyncTask;
.source "DatabaseOperationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/database/h$c;,
        Lcom/yelp/android/database/h$b;,
        Lcom/yelp/android/database/h$a;
    }
.end annotation

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

.field private final b:Lcom/yelp/android/database/h$b;

.field private final c:Lcom/yelp/android/database/h$a;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;",
            "Lcom/yelp/android/database/h$b;",
            "Lcom/yelp/android/database/h$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/database/h;->a:Landroid/os/AsyncTask;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/database/h;->b:Lcom/yelp/android/database/h$b;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/database/h;->c:Lcom/yelp/android/database/h$a;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/database/h;->d:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/database/h;->e:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/h;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    iget-object v1, p0, Lcom/yelp/android/database/h;->c:Lcom/yelp/android/database/h$a;

    invoke-interface {v1, v0}, Lcom/yelp/android/database/h$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/h;->e:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    iput-boolean v2, p0, Lcom/yelp/android/database/h;->d:Z

    .line 56
    invoke-static {v0}, Lcom/yelp/android/database/h;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    iput-boolean v2, p0, Lcom/yelp/android/database/h;->d:Z

    .line 59
    invoke-static {v0}, Lcom/yelp/android/database/h;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/database/h;->b:Lcom/yelp/android/database/h$b;

    if-eqz v0, :cond_0

    .line 40
    iget-boolean v0, p0, Lcom/yelp/android/database/h;->d:Z

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/yelp/android/database/h;->b:Lcom/yelp/android/database/h$b;

    invoke-interface {v0}, Lcom/yelp/android/database/h$b;->b()V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/database/h;->b:Lcom/yelp/android/database/h$b;

    iget-object v1, p0, Lcom/yelp/android/database/h;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/yelp/android/database/h$b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/h;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/database/h;->b:Lcom/yelp/android/database/h$b;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/yelp/android/database/h;->b:Lcom/yelp/android/database/h$b;

    invoke-interface {v0}, Lcom/yelp/android/database/h$b;->a()V

    .line 35
    :cond_0
    return-void
.end method
