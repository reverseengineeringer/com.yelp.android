.class public Lcom/yelp/android/ay/e;
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

.field private final b:Lcom/yelp/android/database/aa;


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
    iput-object p1, p0, Lcom/yelp/android/ay/e;->a:Landroid/os/AsyncTask;

    .line 24
    invoke-static {}, Lcom/yelp/android/ay/e;->a()Lcom/yelp/android/database/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/y;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ay/e;->b:Lcom/yelp/android/database/aa;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ay/e;)Lcom/yelp/android/database/aa;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yelp/android/ay/e;->b:Lcom/yelp/android/database/aa;

    return-object v0
.end method

.method public static a()Lcom/yelp/android/database/y;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/yelp/android/ay/s;

    invoke-direct {v0}, Lcom/yelp/android/ay/s;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ay/r;Lcom/yelp/android/database/w;)V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/ay/p;

    invoke-direct {v0, p1}, Lcom/yelp/android/ay/p;-><init>(Lcom/yelp/android/ay/r;)V

    .line 46
    new-instance v1, Lcom/yelp/android/database/u;

    iget-object v2, p0, Lcom/yelp/android/ay/e;->a:Landroid/os/AsyncTask;

    new-instance v3, Lcom/yelp/android/ay/g;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ay/g;-><init>(Lcom/yelp/android/ay/e;Lcom/yelp/android/ay/p;)V

    invoke-direct {v1, v2, p2, v3}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ay/e;->b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/database/w;)V

    .line 58
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/database/w;)V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/database/u;

    iget-object v1, p0, Lcom/yelp/android/ay/e;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/ay/f;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ay/f;-><init>(Lcom/yelp/android/ay/e;Lcom/yelp/android/serializable/Conversation;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;Lcom/yelp/android/database/w;)V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lcom/yelp/android/database/u;

    iget-object v1, p0, Lcom/yelp/android/ay/e;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/ay/h;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ay/h;-><init>(Lcom/yelp/android/ay/e;Lcom/yelp/android/serializable/Conversation;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method
