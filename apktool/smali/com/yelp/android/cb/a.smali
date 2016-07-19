.class public Lcom/yelp/android/cb/a;
.super Ljava/lang/Object;
.source "AdapterInAppNotification.java"


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

.field private b:Lcom/yelp/android/database/m;


# direct methods
.method public constructor <init>(Landroid/os/AsyncTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yelp/android/cb/a;->a:Landroid/os/AsyncTask;

    .line 27
    invoke-static {}, Lcom/yelp/android/cb/a;->a()Lcom/yelp/android/database/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/i;->a()Lcom/yelp/android/database/m;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cb/a;->b:Lcom/yelp/android/database/m;

    .line 28
    return-void
.end method

.method public static a()Lcom/yelp/android/database/i;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/cb/b;

    invoke-direct {v0}, Lcom/yelp/android/cb/b;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/cb/a;)Lcom/yelp/android/database/m;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/cb/a;->b:Lcom/yelp/android/database/m;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/InAppNotification;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/yelp/android/cb/a$2;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/cb/a$2;-><init>(Lcom/yelp/android/cb/a;Lcom/yelp/android/serializable/InAppNotification;)V

    .line 76
    new-instance v1, Lcom/yelp/android/database/h;

    iget-object v2, p0, Lcom/yelp/android/cb/a;->a:Landroid/os/AsyncTask;

    invoke-direct {v1, v2, p2, v0}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    return-void
.end method

.method public a(Ljava/lang/Class;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/cb/a$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/cb/a$1;-><init>(Lcom/yelp/android/cb/a;Ljava/lang/Class;)V

    .line 62
    new-instance v1, Lcom/yelp/android/database/h;

    iget-object v2, p0, Lcom/yelp/android/cb/a;->a:Landroid/os/AsyncTask;

    invoke-direct {v1, v2, p2, v0}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/InAppNotification;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/cb/a$3;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/cb/a$3;-><init>(Lcom/yelp/android/cb/a;Lcom/yelp/android/serializable/InAppNotification;)V

    .line 90
    new-instance v1, Lcom/yelp/android/database/h;

    iget-object v2, p0, Lcom/yelp/android/cb/a;->a:Landroid/os/AsyncTask;

    invoke-direct {v1, v2, p2, v0}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    return-void
.end method
