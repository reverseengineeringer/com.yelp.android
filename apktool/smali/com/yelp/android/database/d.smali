.class public Lcom/yelp/android/database/d;
.super Lcom/yelp/android/database/c;
.source "AdapterSearchTerms.java"


# static fields
.field public static final a:Lcom/yelp/android/database/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 11
    const-string/jumbo v0, "searchterms"

    invoke-static {v0}, Lcom/yelp/android/database/d;->a(Ljava/lang/String;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "searchterm"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    const-string/jumbo v1, "searchterms_term_idx"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "searchterm"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/database/n;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/database/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->a()Lcom/yelp/android/database/m;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/database/d;->a:Lcom/yelp/android/database/m;

    return-void
.end method

.method public constructor <init>(Landroid/os/AsyncTask;)V
    .locals 2
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
    .line 19
    const-string/jumbo v0, "searchterms"

    const-string/jumbo v1, "searchterm"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/database/c;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/AsyncTask;)V

    .line 20
    return-void
.end method

.method public static a()Lcom/yelp/android/database/i;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/database/d;->a:Lcom/yelp/android/database/m;

    const-string/jumbo v1, "searchterm"

    invoke-static {v0, v1}, Lcom/yelp/android/database/d;->a(Lcom/yelp/android/database/m;Ljava/lang/String;)Lcom/yelp/android/database/i;

    move-result-object v0

    return-object v0
.end method
