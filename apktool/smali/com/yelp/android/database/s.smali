.class Lcom/yelp/android/database/s;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Database.java"


# static fields
.field public static final a:[Lcom/yelp/android/database/y;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 204
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/yelp/android/database/y;

    const/4 v1, 0x0

    invoke-static {}, Lcom/yelp/android/database/c;->a()Lcom/yelp/android/database/y;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/yelp/android/database/l;->a()Lcom/yelp/android/database/y;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Lcom/yelp/android/database/d;->d()Lcom/yelp/android/database/y;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/yelp/android/ax/a;->e()Lcom/yelp/android/database/y;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/yelp/android/ay/a;->a()Lcom/yelp/android/database/y;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {}, Lcom/yelp/android/ay/e;->a()Lcom/yelp/android/database/y;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {}, Lcom/yelp/android/database/savedsearch/c;->a()Lcom/yelp/android/database/y;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/yelp/android/database/savedsearch/j;

    invoke-direct {v2}, Lcom/yelp/android/database/savedsearch/j;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/yelp/android/database/savedsearch/h;

    invoke-direct {v2}, Lcom/yelp/android/database/savedsearch/h;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {}, Lcom/yelp/android/database/AdapterNearbyFilters;->a()Lcom/yelp/android/database/y;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {}, Lcom/yelp/android/ay/i;->a()Lcom/yelp/android/database/y;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/database/s;->a:[Lcom/yelp/android/database/y;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 219
    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/database/s;-><init>(Landroid/content/Context;I)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 223
    const-string/jumbo v0, "yelp"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 224
    iput p2, p0, Lcom/yelp/android/database/s;->b:I

    .line 225
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    .line 229
    sget-object v1, Lcom/yelp/android/database/s;->a:[Lcom/yelp/android/database/y;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 230
    iget v4, p0, Lcom/yelp/android/database/s;->b:I

    invoke-virtual {v3, v4}, Lcom/yelp/android/database/y;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    invoke-virtual {v3}, Lcom/yelp/android/database/y;->a()Lcom/yelp/android/database/aa;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/yelp/android/database/aa;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    .prologue
    .line 238
    sget-object v1, Lcom/yelp/android/database/s;->a:[Lcom/yelp/android/database/y;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 239
    invoke-virtual {v3}, Lcom/yelp/android/database/y;->a()Lcom/yelp/android/database/aa;

    move-result-object v4

    .line 241
    invoke-virtual {v3, p2}, Lcom/yelp/android/database/y;->c(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    invoke-virtual {v4, p1}, Lcom/yelp/android/database/aa;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 238
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v3, p2}, Lcom/yelp/android/database/y;->b(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 244
    invoke-virtual {v3, p2, p3, p1}, Lcom/yelp/android/database/y;->a(IILandroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 245
    :cond_2
    invoke-virtual {v3, p2}, Lcom/yelp/android/database/y;->d(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const-string/jumbo v3, "DROP TABLE IF EXISTS "

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/yelp/android/database/aa;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4, p1}, Lcom/yelp/android/database/aa;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 251
    :cond_3
    return-void
.end method
