.class public Lcom/yelp/android/cc/a;
.super Ljava/lang/Object;
.source "AdapterConversationDrafts.java"


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

.field private final b:Lcom/yelp/android/database/m;


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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/cc/a;->a:Landroid/os/AsyncTask;

    .line 24
    invoke-static {}, Lcom/yelp/android/cc/a;->a()Lcom/yelp/android/database/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/i;->a()Lcom/yelp/android/database/m;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cc/a;->b:Lcom/yelp/android/database/m;

    .line 25
    return-void
.end method

.method public static a()Lcom/yelp/android/database/i;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/yelp/android/cc/e;

    invoke-direct {v0}, Lcom/yelp/android/cc/e;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/cc/a;)Lcom/yelp/android/database/m;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yelp/android/cc/a;->b:Lcom/yelp/android/database/m;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/cc/d;Lcom/yelp/android/database/h$b;)V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/yelp/android/cc/f;

    invoke-direct {v0, p1}, Lcom/yelp/android/cc/f;-><init>(Lcom/yelp/android/cc/d;)V

    .line 48
    new-instance v1, Lcom/yelp/android/database/h;

    iget-object v2, p0, Lcom/yelp/android/cc/a;->a:Landroid/os/AsyncTask;

    new-instance v3, Lcom/yelp/android/cc/a$2;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/cc/a$2;-><init>(Lcom/yelp/android/cc/a;Lcom/yelp/android/cc/f;)V

    invoke-direct {v1, v2, p2, v3}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/cc/a;->b(Lcom/yelp/android/serializable/User;Lcom/yelp/android/database/h$b;)V

    .line 64
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/database/h;

    iget-object v1, p0, Lcom/yelp/android/cc/a;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/cc/a$1;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/cc/a$1;-><init>(Lcom/yelp/android/cc/a;Lcom/yelp/android/serializable/User;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/User;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/yelp/android/database/h;

    iget-object v1, p0, Lcom/yelp/android/cc/a;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/cc/a$3;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/cc/a$3;-><init>(Lcom/yelp/android/cc/a;Lcom/yelp/android/serializable/User;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method
