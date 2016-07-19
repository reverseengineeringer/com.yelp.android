.class public Lcom/yelp/android/cc/b;
.super Ljava/lang/Object;
.source "AdapterMessageDrafts.java"


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
    iput-object p1, p0, Lcom/yelp/android/cc/b;->a:Landroid/os/AsyncTask;

    .line 24
    invoke-static {}, Lcom/yelp/android/cc/b;->a()Lcom/yelp/android/database/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/i;->a()Lcom/yelp/android/database/m;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cc/b;->b:Lcom/yelp/android/database/m;

    .line 25
    return-void
.end method

.method public static a()Lcom/yelp/android/database/i;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/yelp/android/cc/j;

    invoke-direct {v0}, Lcom/yelp/android/cc/j;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/cc/b;)Lcom/yelp/android/database/m;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yelp/android/cc/b;->b:Lcom/yelp/android/database/m;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/cc/i;Lcom/yelp/android/database/h$b;)V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/cc/g;

    invoke-direct {v0, p1}, Lcom/yelp/android/cc/g;-><init>(Lcom/yelp/android/cc/i;)V

    .line 49
    new-instance v1, Lcom/yelp/android/database/h;

    iget-object v2, p0, Lcom/yelp/android/cc/b;->a:Landroid/os/AsyncTask;

    new-instance v3, Lcom/yelp/android/cc/b$2;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/cc/b$2;-><init>(Lcom/yelp/android/cc/b;Lcom/yelp/android/cc/g;)V

    invoke-direct {v1, v2, p2, v3}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/cc/b;->b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/database/h$b;)V

    .line 65
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/database/h;

    iget-object v1, p0, Lcom/yelp/android/cc/b;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/cc/b$1;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/cc/b$1;-><init>(Lcom/yelp/android/cc/b;Lcom/yelp/android/serializable/Conversation;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/yelp/android/database/h;

    iget-object v1, p0, Lcom/yelp/android/cc/b;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/cc/b$3;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/cc/b$3;-><init>(Lcom/yelp/android/cc/b;Lcom/yelp/android/serializable/Conversation;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    return-void
.end method
