.class public Lcom/yelp/android/database/savedsearch/c;
.super Ljava/lang/Object;
.source "AdapterSavedSearch.java"


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

.field private b:Lcom/yelp/android/database/aa;

.field private c:Lcom/yelp/android/database/aa;

.field private d:Lcom/yelp/android/database/aa;


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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yelp/android/database/savedsearch/c;->a:Landroid/os/AsyncTask;

    .line 30
    invoke-static {}, Lcom/yelp/android/database/savedsearch/c;->a()Lcom/yelp/android/database/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/y;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/c;->b:Lcom/yelp/android/database/aa;

    .line 31
    new-instance v0, Lcom/yelp/android/database/savedsearch/j;

    invoke-direct {v0}, Lcom/yelp/android/database/savedsearch/j;-><init>()V

    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/j;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/c;->c:Lcom/yelp/android/database/aa;

    .line 32
    new-instance v0, Lcom/yelp/android/database/savedsearch/h;

    invoke-direct {v0}, Lcom/yelp/android/database/savedsearch/h;-><init>()V

    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/h;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/c;->d:Lcom/yelp/android/database/aa;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/c;->b:Lcom/yelp/android/database/aa;

    return-object v0
.end method

.method public static a()Lcom/yelp/android/database/y;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/yelp/android/database/savedsearch/l;

    invoke-direct {v0}, Lcom/yelp/android/database/savedsearch/l;-><init>()V

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/c;->d:Lcom/yelp/android/database/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/c;->c:Lcom/yelp/android/database/aa;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/database/savedsearch/k;)V
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lcom/yelp/android/database/savedsearch/g;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/database/savedsearch/g;-><init>(Lcom/yelp/android/database/savedsearch/c;Lcom/yelp/android/database/savedsearch/k;)V

    .line 122
    new-instance v1, Lcom/yelp/android/database/u;

    iget-object v2, p0, Lcom/yelp/android/database/savedsearch/c;->a:Landroid/os/AsyncTask;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 123
    return-void
.end method

.method public a(Lcom/yelp/android/database/savedsearch/k;Lcom/yelp/android/database/w;)V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/yelp/android/database/savedsearch/e;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/database/savedsearch/e;-><init>(Lcom/yelp/android/database/savedsearch/c;Lcom/yelp/android/database/savedsearch/k;)V

    .line 81
    new-instance v1, Lcom/yelp/android/database/u;

    iget-object v2, p0, Lcom/yelp/android/database/savedsearch/c;->a:Landroid/os/AsyncTask;

    invoke-direct {v1, v2, p2, v0}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method public a(Lcom/yelp/android/database/w;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/yelp/android/database/savedsearch/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/database/savedsearch/d;-><init>(Lcom/yelp/android/database/savedsearch/c;)V

    .line 66
    new-instance v1, Lcom/yelp/android/database/u;

    iget-object v2, p0, Lcom/yelp/android/database/savedsearch/c;->a:Landroid/os/AsyncTask;

    invoke-direct {v1, v2, p1, v0}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lcom/yelp/android/database/savedsearch/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/database/savedsearch/f;-><init>(Lcom/yelp/android/database/savedsearch/c;)V

    .line 110
    new-instance v1, Lcom/yelp/android/database/u;

    iget-object v2, p0, Lcom/yelp/android/database/savedsearch/c;->a:Landroid/os/AsyncTask;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void
.end method
