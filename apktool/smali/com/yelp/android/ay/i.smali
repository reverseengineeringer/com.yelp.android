.class public Lcom/yelp/android/ay/i;
.super Ljava/lang/Object;
.source "AdapterMessageTheBusinessDrafts.java"


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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/ay/i;->a:Landroid/os/AsyncTask;

    .line 26
    invoke-static {}, Lcom/yelp/android/ay/i;->a()Lcom/yelp/android/database/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/y;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ay/i;->b:Lcom/yelp/android/database/aa;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ay/i;)Lcom/yelp/android/database/aa;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yelp/android/ay/i;->b:Lcom/yelp/android/database/aa;

    return-object v0
.end method

.method public static a()Lcom/yelp/android/database/y;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/yelp/android/ay/u;

    invoke-direct {v0}, Lcom/yelp/android/ay/u;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ay/t;Lcom/yelp/android/database/w;)V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/database/u;

    iget-object v1, p0, Lcom/yelp/android/ay/i;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/ay/k;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ay/k;-><init>(Lcom/yelp/android/ay/i;Lcom/yelp/android/ay/t;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ay/i;->b(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/w;)V

    .line 56
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/w;)V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/database/u;

    iget-object v1, p0, Lcom/yelp/android/ay/i;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/ay/j;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ay/j;-><init>(Lcom/yelp/android/ay/i;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/w;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/yelp/android/database/u;

    iget-object v1, p0, Lcom/yelp/android/ay/i;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/ay/l;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ay/l;-><init>(Lcom/yelp/android/ay/i;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/u;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/w;Lcom/yelp/android/database/v;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method
