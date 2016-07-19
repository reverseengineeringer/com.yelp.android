.class public Lcom/yelp/android/cc/c;
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/cc/c;->a:Landroid/os/AsyncTask;

    .line 25
    invoke-static {}, Lcom/yelp/android/cc/c;->a()Lcom/yelp/android/database/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/i;->a()Lcom/yelp/android/database/m;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cc/c;->b:Lcom/yelp/android/database/m;

    .line 26
    return-void
.end method

.method public static a()Lcom/yelp/android/database/i;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/yelp/android/cc/l;

    invoke-direct {v0}, Lcom/yelp/android/cc/l;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/cc/c;)Lcom/yelp/android/database/m;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/yelp/android/cc/c;->b:Lcom/yelp/android/database/m;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/cc/k;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/database/h;

    iget-object v1, p0, Lcom/yelp/android/cc/c;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/cc/c$2;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/cc/c$2;-><init>(Lcom/yelp/android/cc/c;Lcom/yelp/android/cc/k;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/cc/c;->b(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/h$b;)V

    .line 62
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/database/h;

    iget-object v1, p0, Lcom/yelp/android/cc/c;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/cc/c$1;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/cc/c$1;-><init>(Lcom/yelp/android/cc/c;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/h$b;)V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/database/h;

    iget-object v1, p0, Lcom/yelp/android/cc/c;->a:Landroid/os/AsyncTask;

    new-instance v2, Lcom/yelp/android/cc/c$3;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/cc/c$3;-><init>(Lcom/yelp/android/cc/c;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/database/h;-><init>(Landroid/os/AsyncTask;Lcom/yelp/android/database/h$b;Lcom/yelp/android/database/h$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    return-void
.end method
